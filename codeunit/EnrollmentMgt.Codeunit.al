codeunit 50000 "Enrollment Mgt."
{
    // Procedimiento para asignar el número de alumno al insertar un nuevo registro
    procedure AssignStudentNo(var Student: Record Student)
    var
        EnrollmentSetup: Record "Enrollment Setup";
        NoSeries: Codeunit "No. Series";
    begin
        if Student."No." = '' then begin
            EnrollmentSetup.Get();
            EnrollmentSetup.TestField("Student Nos.");
            Student."No." := NoSeries.GetNextNo(EnrollmentSetup."Student Nos.");
        end;
    end;

    // Procedimiento para asignar número automático al crear una matrícula
    procedure AssignEnrollmentNo(var Enrollment: Record Enrollment)
    var
        EnrollmentSetup: Record "Enrollment Setup";
        NoSeries: Codeunit "No. Series";
    begin
        if Enrollment."No." = '' then begin
            EnrollmentSetup.Get();
            EnrollmentSetup.TestField("Enrollment Nos.");
            Enrollment."No." := NoSeries.GetNextNo(EnrollmentSetup."Enrollment Nos.");
        end;
    end;

    // Procedimiento para asignar número automático al crear una asignatura
    procedure AssignCourseNo(var Course: Record Course)
    var
        EnrollmentSetup: Record "Enrollment Setup";
        NoSeries: Codeunit "No. Series";
    begin
        if Course."No." = '' then begin
            EnrollmentSetup.Get();
            EnrollmentSetup.TestField("Course Nos.");
            Course."No." := NoSeries.GetNextNo(EnrollmentSetup."Course Nos.");
        end;
    end;

    // Procedimiento para crear un cliente a partir de un alumno
    procedure CreateCustomer(var Student: Record Student)
    var
        Customer: Record Customer;
        EnrollmentSetup: Record "Enrollment Setup";
    begin
        if Student."Customer No." <> '' then
            Error('Este alumno ya tiene un cliente asociado: %1', Student."Customer No.");

        EnrollmentSetup.Get();
        EnrollmentSetup.TestField("Student Posting Group");

        // Creando el cliente a partir de los datos del alumno
        Customer.Init();
        Customer.Insert(true);
        Customer.Name := Student.Name + ' ' + Student.Surname;
        Customer.Address := Student.Address;
        Customer."Phone No." := Student."Phone No.";
        Customer."Customer Posting Group" := EnrollmentSetup."Student Posting Group";
        Customer.Modify();
        Student."Customer No." := Customer."No.";
        Student.Modify();

        Message('Cliente %1 creado correctamente.', Customer."No.");
    end;

    // Procedimiento para crear una factura a partir de una matrícula
    procedure CreateInvoice(var Enrollment: Record Enrollment)
    var
        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        Student: Record Student;
        EnrollmentSetup: Record "Enrollment Setup";
    begin
        if Enrollment."Invoice Generated" then
            Error('Ya se ha generado una factura para esta matrícula.');

        Student.Get(Enrollment."Student No.");
        if Student."Customer No." = '' then
            Error('El alumno no tiene un cliente asociado. Por favor, cree un cliente antes de generar la factura.');

        // Cargando la configuración de matrícula
        EnrollmentSetup.Get();
        EnrollmentSetup.TestField("Sales Account No.");

        // Creando la cabecera de la factura
        SalesHeader.Init();
        SalesHeader."Document Type" := SalesHeader."Document Type"::Invoice;
        SalesHeader.Insert(true);

        // Validamos el cliente para que BC rellene todos los datos
        SalesHeader.Validate("Sell-to Customer No.", Student."Customer No.");
        SalesHeader.Validate("Posting Date", Today());
        SalesHeader."Enrollment No." := Enrollment."No.";
        SalesHeader.Modify(true);

        // Creando la línea de la factura
        SalesLine.Init();
        SalesLine."Document Type" := SalesHeader."Document Type"::Invoice;
        SalesLine."Document No." := SalesHeader."No.";
        SalesLine."Line No." := 10000;

        SalesLine.Validate(Type, SalesLine.Type::"G/L Account");
        SalesLine.Validate("No.", EnrollmentSetup."Sales Account No.");
        SalesLine.Validate(Quantity, 1);
        SalesLine.Validate("Unit Price", Enrollment.Amount);
        SalesLine.Insert(true);

        // Creando el movimiento de alumno
        CreateStudentLedgerEntry(Enrollment, SalesHeader."No.");

        // Marcando la matrícula como facturada
        Enrollment."Invoice Generated" := true;
        Enrollment.Modify();

        Message('Factura %1 creada correctamente', SalesHeader."No.");
    end;

    // Procedimiento para crear un movimiento de alumno al generar la factura
    local procedure CreateStudentLedgerEntry(var Enrollment: Record Enrollment; InvoiceNo: Code[10])
    var
        StudentLedgerEntry: Record "Student Ledger Entry";
    begin
        StudentLedgerEntry.Init();
        StudentLedgerEntry."Student No." := Enrollment."Student No.";
        StudentLedgerEntry."Posting Date" := Today();
        StudentLedgerEntry."Invoice No." := InvoiceNo;
        StudentLedgerEntry."Invoice Amount" := Enrollment.Amount;
        StudentLedgerEntry.Insert();
    end;

    // Procedimiento para desmarcar la generación de factura
    procedure UncheckInvoiceGenerated(var Enrollment: Record Enrollment)
    begin
        if not Enrollment."Invoice Generated" then
            Error('Esta matrícula no tiene ninguna factura generada');

        Enrollment."Invoice Generated" := false;
        Enrollment.Modify();
        Message('Factura desmarcada');
    end;
}
codeunit 50000 "Enrollment Mgt."
{
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

    procedure CreateCustomer(var Student: Record Student)
    var
        Customer: Record Customer;
        EnrollmentSetup: Record "Enrollment Setup";
    begin
        // Compruebo que el alumno no tiene ya un cliente asociado
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
}
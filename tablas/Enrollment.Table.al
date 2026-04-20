table 50002 "Enrollment"
{
    Caption = 'Matrícula';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(5; "Student No."; Code[10])
        {
            Caption = 'No. Alumno';
            DataClassification = CustomerContent;
            TableRelation = Student."No.";

            trigger OnValidate()
            var
                Student: Record Student;
            begin
                // Si el campo se vacía borramos los datos del alumno
                if "Student No." = '' then begin
                    "Student Name" := '';
                    "Student Surname" := '';
                    "Student Address" := '';
                end else begin
                    // Cargamos el registro del alumno seleccionado
                    Student.Get("Student No.");
                    // Copiamos sus datos en la matrícula para guardarlos
                    // Estos campos tienen Editable = false, solo se rellenan aquí
                    "Student Name" := Student.Name;
                    "Student Surname" := Student.Surname;
                    "Student Address" := Student.Address;
                end;
            end;
        }
        field(10; "Student Name"; Text[30])
        {
            Caption = 'Nombre Alumno';
            DataClassification = CustomerContent;
            // El usuario no puede editar este campo, se rellena solo al validar Student No.
            Editable = false;
        }
        field(11; "Student Surname"; Text[30])
        {
            Caption = 'Apellidos Alumno';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(12; "Student Address"; Text[30])
        {
            Caption = 'Dirección Alumno';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(20; Amount; Decimal)
        {
            Caption = 'Importe';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.") { Clustered = true; }
    }

    var
        EnrollmentMgt: Codeunit "Enrollment Mgt.";

    trigger OnInsert()
    begin
        EnrollmentMgt.AssignEnrollmentNo(Rec);
    end;
}
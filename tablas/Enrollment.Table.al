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
                if "Student No." = '' then begin
                    "Student Name" := '';
                    "Student Surname" := '';
                    "Student Address" := '';
                end else begin
                    Student.Get("Student No.");
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
        field(25; "Invoice Generated"; Boolean)
        {
            Caption = 'Factura Generada';
            DataClassification = CustomerContent;
            Editable = false;
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
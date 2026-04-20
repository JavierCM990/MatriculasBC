table 50000 "Student"
{
    Caption = 'Alumno';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No. Alumno';
            DataClassification = CustomerContent;
        }
        field(5; Name; Text[30])
        {
            Caption = 'Nombre';
            DataClassification = CustomerContent;
        }
        field(6; Surname; Text[30])
        {
            Caption = 'Apellidos';
            DataClassification = CustomerContent;
        }
        field(10; Address; Text[30])
        {
            Caption = 'Dirección';
            DataClassification = CustomerContent;
        }
        field(11; "Phone No."; Text[30])
        {
            Caption = 'Teléfono';
            DataClassification = CustomerContent;
        }
        field(12; "Phone No. 2"; Text[30])
        {
            Caption = 'Teléfono 2';
            DataClassification = CustomerContent;
        }
        field(20; "Birth Date"; Date)
        {
            Caption = 'Fecha Nacimiento';
            DataClassification = CustomerContent;
        }
        field(30; Comment; Boolean)
        {
            Caption = 'Comentario';
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
        EnrollmentMgt.AssignStudentNo(Rec);
    end;
}
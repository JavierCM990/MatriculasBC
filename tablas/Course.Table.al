table 50004 "Course"
{
    Caption = 'Asignatura';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No. Asignatura';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Descripción';
            DataClassification = CustomerContent;
        }
        field(3; Credits; Decimal)
        {
            Caption = 'Créditos';
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
        EnrollmentMgt.AssignCourseNo(Rec);
    end;
}
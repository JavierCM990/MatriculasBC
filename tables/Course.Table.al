table 50004 "Course"
{
    Caption = 'Course';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Course No.';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; Credits; Decimal)
        {
            Caption = 'Credits';
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
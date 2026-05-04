table 50003 "Enrollment Line"
{
    Caption = 'Enrollment Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Enrollment No."; Code[20])
        {
            Caption = 'Enrollment No.';
            DataClassification = CustomerContent;
            TableRelation = Enrollment."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(5; "Course No."; Code[20])
        {
            Caption = 'Course No.';
            DataClassification = CustomerContent;
            TableRelation = Course."No.";

            trigger OnValidate()
            var
                Course: Record Course;
            begin
                if "Course No." = '' then
                    Description := ''
                else begin
                    Course.Get("Course No.");
                    Description := Course.Description;
                end;
            end;
        }
        field(6; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(10; Credits; Decimal)
        {
            Caption = 'Credits';
            DataClassification = CustomerContent;
        }
        field(11; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Enrollment No.", "Line No.") { Clustered = true; }
    }

    trigger OnInsert()
    var
        EnrollmentLine: Record "Enrollment Line";
    begin
        EnrollmentLine.SetRange("Enrollment No.", "Enrollment No.");
        if EnrollmentLine.FindLast() then
            "Line No." := EnrollmentLine."Line No." + 10000
        else
            "Line No." := 10000;
    end;
}
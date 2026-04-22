page 50011 "Enrollment List"
{
    Caption = 'Enrollment List';
    PageType = List;
    SourceTable = Enrollment;
    CardPageId = "Enrollment Card";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'No.';
                    ApplicationArea = All;
                }
                field("Student No."; Rec."Student No.")
                {
                    Caption = 'Student No.';
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
                {
                    Caption = 'Student Name';
                    ApplicationArea = All;
                }
                field("Student Surname"; Rec."Student Surname")
                {
                    Caption = 'Student Surname';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    Caption = 'Amount';
                    ApplicationArea = All;
                }
            }
        }
    }
}
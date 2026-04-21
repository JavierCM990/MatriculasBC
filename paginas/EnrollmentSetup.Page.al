page 50040 "Enrollment Setup"
{
    Caption = 'Enrollment Setup';
    PageType = Card;
    SourceTable = "Enrollment Setup";
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Student Nos."; Rec."Student Nos.")
                {
                    Caption = 'Student Nos.';
                    ApplicationArea = All;
                }
                field("Enrollment Nos."; Rec."Enrollment Nos.")
                {
                    Caption = 'Enrollment Nos.';
                    ApplicationArea = All;
                }
                field("Course Nos."; Rec."Course Nos.")
                {
                    Caption = 'Course Nos.';
                    ApplicationArea = All;
                }
                field("Student Posting Group"; Rec."Student Posting Group")
                {
                    Caption = 'Student Posting Group';
                    ApplicationArea = All;
                }
                field("Credit Price"; Rec."Credit Price")
                {
                    Caption = 'Credit Price';
                    ApplicationArea = All;
                }
                field("Sales Account No."; Rec."Sales Account No.")
                {
                    Caption = 'Sales Account No.';
                    ApplicationArea = All;
                }
                field("Invoice Line Description"; Rec."Invoice Line Description")
                {
                    Caption = 'Invoice Line Description';
                    ApplicationArea = All;
                }
            }
        }
    }
}
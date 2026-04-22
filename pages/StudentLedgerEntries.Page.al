page 50002 "Student Ledger Entries"
{
    Caption = 'Student Ledger Entries';
    PageType = List;
    SourceTable = "Student Ledger Entry";
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    Caption = 'Entry No.';
                    ApplicationArea = All;
                }
                field("Student No."; Rec."Student No.")
                {
                    Caption = 'Student No.';
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                    ApplicationArea = All;
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                    Caption = 'Invoice No.';
                    ApplicationArea = All;
                }
                field("Invoice Amount"; Rec."Invoice Amount")
                {
                    Caption = 'Invoice Amount';
                    ApplicationArea = All;
                }
                field("Posted Invoice No."; Rec."Posted Invoice No.")
                {
                    Caption = 'Posted Invoice No.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
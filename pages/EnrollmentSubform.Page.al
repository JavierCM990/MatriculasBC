page 50012 "Enrollment Subform"
{
    Caption = 'Enrollment Subform';
    PageType = ListPart;
    SourceTable = "Enrollment Line";
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Enrollment No."; Rec."Enrollment No.")
                {
                    Caption = 'Enrollment No.';
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    Caption = 'Line No.';
                    ApplicationArea = All;
                }
                field("Course No."; Rec."Course No.")
                {
                    Caption = 'Course No.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                    ApplicationArea = All;
                }
                field(Credits; Rec.Credits)
                {
                    Caption = 'Credits';
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
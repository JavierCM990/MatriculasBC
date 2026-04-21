pageextension 50000 "Sales Invoice Ext." extends "Sales Invoice"
{
    layout
    {
        addlast(General)
        {
            field("Enrollment No."; Rec."Enrollment No.")
            {
                Caption = 'No. Matrícula';
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}
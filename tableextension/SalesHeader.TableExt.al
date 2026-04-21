tableextension 50000 "Sales Header Ext." extends "Sales Header"
{
    fields
    {
        field(50000; "Enrollment No."; Code[10])
        {
            Caption = 'Enrollment No.';
            DataClassification = CustomerContent;
            TableRelation = Enrollment."No.";
        }
    }
}
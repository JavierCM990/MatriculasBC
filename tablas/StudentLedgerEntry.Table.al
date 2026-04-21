table 50001 "Student Ledger Entry"
{
    Caption = 'Student Ledger Entry';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(2; "Student No."; Code[10])
        {
            Caption = 'Student No.';
            DataClassification = CustomerContent;
            TableRelation = Student."No.";
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(4; "Invoice No."; Code[10])
        {
            Caption = 'Invoice No.';
            DataClassification = CustomerContent;
            TableRelation = "Sales Header"."No.";
        }
        field(5; "Invoice Amount"; Decimal)
        {
            Caption = 'Invoice Amount';
            DataClassification = CustomerContent;
        }
        field(6; "Posted Invoice No."; Code[10])
        {
            Caption = 'Posted Invoice No.';
            DataClassification = CustomerContent;
            TableRelation = "Sales Invoice Header"."No.";
        }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
    }
}
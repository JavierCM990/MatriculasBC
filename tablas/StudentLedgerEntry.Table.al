table 50001 "Student Ledger Entry"
{
    Caption = 'Movimiento Alumno';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'No. Movimiento';
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(2; "Student No."; Code[10])
        {
            Caption = 'No. Alumno';
            DataClassification = CustomerContent;
            TableRelation = Student."No.";
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Fecha Registro';
            DataClassification = CustomerContent;
        }
        field(4; "Invoice No."; Code[10])
        {
            Caption = 'No. Factura';
            DataClassification = CustomerContent;
            TableRelation = "Sales Header"."No.";
        }
        field(5; "Invoice Amount"; Decimal)
        {
            Caption = 'Importe Factura';
            DataClassification = CustomerContent;
        }
        field(6; "Posted Invoice No."; Code[10])
        {
            Caption = 'No. Factura Registrada';
            DataClassification = CustomerContent;
            TableRelation = "Sales Invoice Header"."No.";
        }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
    }
}
page 50002 "Student Ledger Entries"
{
    Caption = 'Mov. Alumnos';
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
                    Caption = 'No. Movimiento';
                    ApplicationArea = All;
                }
                field("Student No."; Rec."Student No.")
                {
                    Caption = 'No. Alumno';
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    Caption = 'Fecha Registro';
                    ApplicationArea = All;
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                    Caption = 'No. Factura';
                    ApplicationArea = All;
                }
                field("Invoice Amount"; Rec."Invoice Amount")
                {
                    Caption = 'Importe Factura';
                    ApplicationArea = All;
                }
                field("Posted Invoice No."; Rec."Posted Invoice No.")
                {
                    Caption = 'No. Factura Registrada';
                    ApplicationArea = All;
                }
            }
        }
    }
}
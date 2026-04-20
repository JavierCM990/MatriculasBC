page 50012 "Enrollment Subform"
{
    Caption = 'Detalle Matrícula';
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
                    Caption = 'No. Matrícula';
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    Caption = 'No. Línea';
                    ApplicationArea = All;
                }
                field("Course No."; Rec."Course No.")
                {
                    Caption = 'No. Asignatura';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Descripción';
                    ApplicationArea = All;
                }
                field(Credits; Rec.Credits)
                {
                    Caption = 'Créditos';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    Caption = 'Importe';
                    ApplicationArea = All;
                }
            }
        }
    }
}
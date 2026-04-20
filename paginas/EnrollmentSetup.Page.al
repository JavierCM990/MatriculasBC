page 50040 "Enrollment Setup"
{
    Caption = 'Configuración Matrículas';
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
                    Caption = 'No. Serie Alumnos';
                    ApplicationArea = All;
                }
                field("Enrollment Nos."; Rec."Enrollment Nos.")
                {
                    Caption = 'No. Serie Matrículas';
                    ApplicationArea = All;
                }
                field("Course Nos."; Rec."Course Nos.")
                {
                    Caption = 'No. Serie Asignaturas';
                    ApplicationArea = All;
                }
                field("Student Posting Group"; Rec."Student Posting Group")
                {
                    Caption = 'Grupo Contable Alumnos';
                    ApplicationArea = All;
                }
                field("Credit Price"; Rec."Credit Price")
                {
                    Caption = 'Precio Crédito';
                    ApplicationArea = All;
                }
                field("Sales Account No."; Rec."Sales Account No.")
                {
                    Caption = 'No. Cuenta Ventas';
                    ApplicationArea = All;
                }
            }
        }
    }
}
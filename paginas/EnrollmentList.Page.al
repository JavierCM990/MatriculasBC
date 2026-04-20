page 50011 "Enrollment List"
{
    Caption = 'Lista Matrículas';
    PageType = List;
    SourceTable = Enrollment;
    CardPageId = "Enrollment Card";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'No.';
                    ApplicationArea = All;
                }
                field("Student No."; Rec."Student No.")
                {
                    Caption = 'No. Alumno';
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
                {
                    Caption = 'Nombre Alumno';
                    ApplicationArea = All;
                }
                field("Student Surname"; Rec."Student Surname")
                {
                    Caption = 'Apellidos Alumno';
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
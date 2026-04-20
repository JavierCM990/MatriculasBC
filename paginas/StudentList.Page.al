page 50001 "Student List"
{
    Caption = 'Lista Alumnos';
    PageType = List;
    SourceTable = Student;
    CardPageId = "Student Card";
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
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                }
                field(Surname; Rec.Surname)
                {
                    Caption = 'Apellidos';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Dirección';
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    Caption = 'Teléfono';
                    ApplicationArea = All;
                }
            }
        }
    }
}
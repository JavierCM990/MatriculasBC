page 50030 "Course List"
{
    Caption = 'Asignaturas';
    PageType = List;
    SourceTable = Course;
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
            }
        }
    }
}
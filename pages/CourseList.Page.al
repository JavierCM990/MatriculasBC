page 50030 "Course List"
{
    Caption = 'Course List';
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
                    Caption = 'Description';
                    ApplicationArea = All;
                }
                field(Credits; Rec.Credits)
                {
                    Caption = 'Credits';
                    ApplicationArea = All;
                }
            }
        }
    }
}
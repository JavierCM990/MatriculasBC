page 50001 "Student List"
{
    Caption = 'Student List';
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
                    Caption = 'Name';
                    ApplicationArea = All;
                }
                field(Surname; Rec.Surname)
                {
                    Caption = 'Surname';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Address';
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
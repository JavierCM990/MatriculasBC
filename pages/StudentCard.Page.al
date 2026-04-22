page 50000 "Student Card"
{
    Caption = 'Student Card';
    PageType = Card;
    SourceTable = Student;
    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
                field("Phone No. 2"; Rec."Phone No. 2")
                {
                    Caption = 'Phone No. 2';
                    ApplicationArea = All;
                }
                field("Birth Date"; Rec."Birth Date")
                {
                    Caption = 'Birth Date';
                    ApplicationArea = All;
                }
                field(Comment; Rec.Comment)
                {
                    Caption = 'Comment';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CreateCustomer)
            {
                Caption = 'Create Customer';
                ApplicationArea = All;
                Image = Customer;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    EnrollmentMgt: Codeunit "Enrollment Mgt.";
                begin
                    EnrollmentMgt.CreateCustomer(Rec);
                end;
            }
        }
    }
}
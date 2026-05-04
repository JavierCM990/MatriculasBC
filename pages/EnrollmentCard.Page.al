page 50010 "Enrollment Card"
{
    Caption = 'Enrollment Card';
    PageType = Card;
    SourceTable = Enrollment;
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
                field("Student No."; Rec."Student No.")
                {
                    Caption = 'Student No.';
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
                {
                    Caption = 'Student Name';
                    ApplicationArea = All;
                }
                field("Student Surname"; Rec."Student Surname")
                {
                    Caption = 'Student Surname';
                    ApplicationArea = All;
                }
                field("Student Address"; Rec."Student Address")
                {
                    Caption = 'Student Address';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    Caption = 'Amount';
                    ApplicationArea = All;
                }
                field("Invoice Generated"; Rec."Invoice Generated")
                {
                    Caption = 'Invoice Generated';
                    ApplicationArea = All;
                }
            }
            part(EnrollmentLines; "Enrollment Subform")
            {
                Caption = 'Enrollment Lines';
                ApplicationArea = All;
                SubPageLink = "Enrollment No." = field("No.");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CreateInvoice)
            {
                Caption = 'Create Invoice';
                ApplicationArea = All;
                Image = Invoice;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    EnrollmentMgt: Codeunit "Enrollment Mgt.";
                begin
                    EnrollmentMgt.CreateInvoice(Rec);
                end;
            }

            action(UncheckInvoice)
            {
                Caption = 'Uncheck Invoice';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    EnrollmentMgt: Codeunit "Enrollment Mgt.";
                begin
                    EnrollmentMgt.UncheckInvoiceGenerated(Rec);
                end;
            }
        }
    }
}
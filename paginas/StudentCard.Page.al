page 50000 "Student Card"
{
    Caption = 'Ficha Alumno';
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
                field("Phone No. 2"; Rec."Phone No. 2")
                {
                    Caption = 'Teléfono 2';
                    ApplicationArea = All;
                }
                field("Birth Date"; Rec."Birth Date")
                {
                    Caption = 'Fecha Nacimiento';
                    ApplicationArea = All;
                }
                field(Comment; Rec.Comment)
                {
                    Caption = 'Comentario';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    Caption = 'No. Cliente';
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
                Caption = 'Crear Cliente';
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
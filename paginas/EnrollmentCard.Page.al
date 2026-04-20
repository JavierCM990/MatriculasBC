page 50010 "Enrollment Card"
{
    Caption = 'Matrícula';
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
                field("Student Address"; Rec."Student Address")
                {
                    Caption = 'Dirección Alumno';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    Caption = 'Importe';
                    ApplicationArea = All;
                }
            }
            part(EnrollmentLines; "Enrollment Subform")
            {
                Caption = 'Detalle Matrícula';
                ApplicationArea = All;
                SubPageLink = "Enrollment No." = field("No.");
            }
        }
    }
}
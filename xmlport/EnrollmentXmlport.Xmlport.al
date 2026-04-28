xmlport 50000 "Enrollment Xmlport"
{
    Caption = 'Enrollment Xmlport';
    Direction = Both;
    Format = VariableText;
    FieldSeparator = ';';

    schema
    {
        textelement(Root)
        {
            tableelement(Enrollment; Enrollment)
            {
                XmlName = 'Enrollment';
                AutoUpdate = true;
                AutoReplace = true;


                fieldelement(No; Enrollment."No.")
                {
                }
                fieldelement(StudentNo; Enrollment."Student No.")
                {
                }
                fieldelement(StudentName; Enrollment."Student Name")
                {
                }
                fieldelement(StudentSurname; Enrollment."Student Surname")
                {
                }
                fieldelement(StudentAddress; Enrollment."Student Address")
                {
                }
                fieldelement(Amount; Enrollment.Amount)
                {
                }
                tableelement(EnrollmentLine; "Enrollment Line")
                {
                    LinkTable = Enrollment;
                    LinkFields = "Enrollment No." = field("No.");
                    MinOccurs = Zero;

                    fieldelement(EnrollmentNo; EnrollmentLine."Enrollment No.")
                    {
                    }
                    fieldelement(LineNo; EnrollmentLine."Line No.")
                    {
                    }
                    fieldelement(CourseNo; EnrollmentLine."Course No.")
                    {
                    }
                    fieldelement(Description; EnrollmentLine.Description)
                    {
                    }
                    fieldelement(Credits; EnrollmentLine.Credits)
                    {
                    }
                    fieldelement(LineAmount; EnrollmentLine.Amount)
                    {
                    }
                }
            }
        }
    }

    trigger OnInitXmlPort()
    begin
        FieldSeparator := ';';
    end;
}
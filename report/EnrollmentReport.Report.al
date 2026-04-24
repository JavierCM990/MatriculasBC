report 50000 "Enrollment Report"
{
    Caption = 'Enrollment Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'report/EnrollmentReport.rdlc';

    dataset
    {
        dataitem(Enrollment; Enrollment)
        {
            column(No; "No.")
            {
                Caption = 'No.';
            }
            column(StudentNo; "Student No.")
            {
                Caption = 'Student No.';
            }
            column(StudentName; "Student Name")
            {
                Caption = 'Student Name';
            }
            column(StudentSurname; "Student Surname")
            {
                Caption = 'Student Surname';
            }
            column(StudentAddress; "Student Address")
            {
                Caption = 'Student Address';
            }
            column(Amount; Amount)
            {
                Caption = 'Amount';
            }
            column(CompanyName; CompanyInformation.Name)
            {
            }
            column(CompanyAddress; CompanyInformation.Address)
            {
            }
            column(CompanyAddress2; CompanyInformation."Address 2")
            {
            }
            column(CompanyEmail; CompanyInformation."E-Mail")
            {
            }

            dataitem(EnrollmentLine; "Enrollment Line")
            {
                DataItemLink = "Enrollment No." = field("No.");

                column(EnrollmentNo; "Enrollment No.")
                {
                    Caption = 'Enrollment No.';
                }
                column(LineNo; "Line No.")
                {
                    Caption = 'Line No.';
                }
                column(CourseNo; "Course No.")
                {
                    Caption = 'Course No.';
                }
                column(Description; Description)
                {
                    Caption = 'Description';
                }
                column(Credits; Credits)
                {
                    Caption = 'Credits';
                }
                column(LineAmount; Amount)
                {
                    Caption = 'Amount';
                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(General)
                {
                    Caption = 'General';
                }
            }
        }
    }

    trigger OnPreReport()
    begin
        CompanyInformation.Get();
    end;

    var
        CompanyInformation: Record "Company Information";
}
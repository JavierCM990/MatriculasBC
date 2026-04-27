page 50020 "Enrollment Role Center"
{
    Caption = 'Enrollment Role Center';
    PageType = RoleCenter;
    ApplicationArea = All;

    layout
    {
        area(RoleCenter)
        {
            part(Activities; "Enrollment Activities")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(Students)
            {
                Caption = 'Students';

                action(StudentList)
                {
                    Caption = 'Students';
                    ApplicationArea = All;
                    RunObject = Page "Student List";
                }
                action(StudentLedgerEntries)
                {
                    Caption = 'Student Ledger Entries';
                    ApplicationArea = All;
                    RunObject = Page "Student Ledger Entries";
                }
            }

            group(Enrollments)
            {
                Caption = 'Enrollments';

                action(EnrollmentList)
                {
                    Caption = 'Enrollments';
                    ApplicationArea = All;
                    RunObject = Page "Enrollment List";
                }
                action(CourseList)
                {
                    Caption = 'Courses';
                    ApplicationArea = All;
                    RunObject = Page "Course List";
                }
            }

            group(Administration)
            {
                Caption = 'Administration';

                action(EnrollmentSetup)
                {
                    Caption = 'Enrollment Setup';
                    ApplicationArea = All;
                    RunObject = Page "Enrollment Setup";
                }
            }
        }
    }
}
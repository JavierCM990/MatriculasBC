page 50021 "Enrollment Activities"
{
    Caption = 'Enrollment Activities';
    PageType = CardPart;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            cuegroup(Enrollments)
            {
                Caption = 'Enrollments';

                field(StudentsCount; StudentsCount)
                {
                    Caption = 'Students';
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        PAGE.Run(Page::"Student List");
                    end;
                }
                field(EnrollmentsCount; EnrollmentsCount)
                {
                    Caption = 'Enrollments';
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        PAGE.Run(Page::"Enrollment List");
                    end;
                }
                field(CoursesCount; CoursesCount)
                {
                    Caption = 'Courses';
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        PAGE.Run(Page::"Course List");
                    end;
                }
            }
        }
    }

    var
        StudentsCount: Integer;
        EnrollmentsCount: Integer;
        CoursesCount: Integer;

    trigger OnOpenPage()
    var
        Student: Record Student;
        Enrollment: Record Enrollment;
        Course: Record Course;
    begin
        StudentsCount := Student.Count();
        EnrollmentsCount := Enrollment.Count();
        CoursesCount := Course.Count();
    end;
}
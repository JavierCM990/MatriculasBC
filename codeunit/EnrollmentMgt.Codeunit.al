codeunit 50000 "Enrollment Mgt."
{
    procedure AssignStudentNo(var Student: Record Student)
    var
        EnrollmentSetup: Record "Enrollment Setup";
        NoSeries: Codeunit "No. Series";
    begin
        if Student."No." = '' then begin
            EnrollmentSetup.Get();
            EnrollmentSetup.TestField("Student Nos.");
            Student."No." := NoSeries.GetNextNo(EnrollmentSetup."Student Nos.");
        end;
    end;

    procedure AssignEnrollmentNo(var Enrollment: Record Enrollment)
    var
        EnrollmentSetup: Record "Enrollment Setup";
        NoSeries: Codeunit "No. Series";
    begin
        if Enrollment."No." = '' then begin
            EnrollmentSetup.Get();
            EnrollmentSetup.TestField("Enrollment Nos.");
            Enrollment."No." := NoSeries.GetNextNo(EnrollmentSetup."Enrollment Nos.");
        end;
    end;

    procedure AssignCourseNo(var Course: Record Course)
    var
        EnrollmentSetup: Record "Enrollment Setup";
        NoSeries: Codeunit "No. Series";
    begin
        if Course."No." = '' then begin
            EnrollmentSetup.Get();
            EnrollmentSetup.TestField("Course Nos.");
            Course."No." := NoSeries.GetNextNo(EnrollmentSetup."Course Nos.");
        end;
    end;
}
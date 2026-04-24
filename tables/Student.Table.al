table 50000 "Student"
{
    Caption = 'Student';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Student No.';
            DataClassification = CustomerContent;
        }
        field(5; Name; Text[100])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(6; Surname; Text[50])
        {
            Caption = 'Surname';
            DataClassification = CustomerContent;
        }
        field(10; Address; Text[100])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(11; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
        }
        field(12; "Phone No. 2"; Text[30])
        {
            Caption = 'Phone No. 2';
            DataClassification = CustomerContent;
        }
        field(20; "Birth Date"; Date)
        {
            Caption = 'Birth Date';
            DataClassification = CustomerContent;
        }
        field(30; Comment; Boolean)
        {
            Caption = 'Comment';
            DataClassification = CustomerContent;
        }
        field(40; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer."No.";
        }
        field(140; Image; Media)
        {
            Caption = 'Image';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.") { Clustered = true; }
    }

    var
        EnrollmentMgt: Codeunit "Enrollment Mgt.";

    trigger OnInsert()
    begin
        EnrollmentMgt.AssignStudentNo(Rec);
    end;
}
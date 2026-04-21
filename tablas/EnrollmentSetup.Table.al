table 50005 "Enrollment Setup"
{
    Caption = 'Enrollment Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }
        field(5; "Student Nos."; Code[10])
        {
            Caption = 'Student Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }
        field(6; "Enrollment Nos."; Code[10])
        {
            Caption = 'Enrollment Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }
        field(7; "Course Nos."; Code[10])
        {
            Caption = 'Course Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }
        field(20; "Student Posting Group"; Code[20])
        {
            Caption = 'Student Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Customer Posting Group".Code;
        }
        field(30; "Credit Price"; Decimal)
        {
            Caption = 'Credit Price';
            DataClassification = CustomerContent;
        }
        field(40; "Sales Account No."; Code[20])
        {
            Caption = 'Sales Account No.';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account"."No.";
        }
        field(50; "Invoice Line Description"; Text[100])
        {
            Caption = 'Invoice Line Description';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Primary Key") { Clustered = true; }
    }
}
table 50005 "Enrollment Setup"
{
    Caption = 'Configuración Matrícula';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Clave Principal';
            DataClassification = CustomerContent;
        }
        field(5; "Student Nos."; Code[10])
        {
            Caption = 'No. Serie Alumnos';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }
        field(6; "Enrollment Nos."; Code[10])
        {
            Caption = 'No. Serie Matrículas';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }
        field(7; "Course Nos."; Code[10])
        {
            Caption = 'No. Serie Asignaturas';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }
        field(20; "Student Posting Group"; Code[20])
        {
            Caption = 'Grupo Contable Alumnos';
            DataClassification = CustomerContent;
            TableRelation = "Customer Posting Group".Code;
        }
        field(30; "Credit Price"; Decimal)
        {
            Caption = 'Precio Crédito';
            DataClassification = CustomerContent;
        }
        field(40; "Sales Account No."; Code[20])
        {
            Caption = 'No. Cuenta Ventas';
            DataClassification = CustomerContent;
            TableRelation = "G/L Account"."No.";
        }
    }

    keys
    {
        key(PK; "Primary Key") { Clustered = true; }
    }
}
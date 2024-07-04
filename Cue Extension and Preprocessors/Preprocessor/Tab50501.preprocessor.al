#if First

table 60501 preprocessor1
#else
table 50501 preprocessor
#endif
{
    
    Caption = 'preprocessor';
    DataClassification = ToBeClassified;

    fields
    
    {
        #region fields

        field(1; Name; Text[50])
        {
           
            Caption = 'Name';
        }
        field(2; ID; Integer)
        {
            Caption = 'ID';
        }
        #pragma warning Disable 
        field(3; Address_of_the_user_from_the_businesscentral; Code[25])
        {
            Caption = 'Home No.';

        }
        #pragma warning restore
        field(4; Address_of_the_user_from_the_businesscentral2; Code[25])
        {
            Caption = 'Home No.';

        }
        #endregion
    }
    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }
}

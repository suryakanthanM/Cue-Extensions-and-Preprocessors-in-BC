tableextension 50509 MyExtension extends "Activities Cue"
{
    fields
    {
        field(50509; "No.Of SalesOrders"; Integer)
        {
            Caption = 'Custom No.of Sales Orders';
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where("Document Type" = filter(Order)));
        }
        field(50510; "No.Of Sales Quotes"; Integer)
        {
            Caption = 'Custom No.of Sales Quotes';
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" Where("Document Type" = filter(Quote)));
        }

    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}

pageextension 50513 MyExtension extends "O365 Activities"
{
    layout
    {
        addafter(Control54)
        {
            cuegroup(New)
            {
                CueGroupLayout = Wide;
                field("No.Of SalesOrders"; Rec."No.Of SalesOrders")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Sales order List";
                    ToolTip = 'This cue move you to sales order list';

                    // trigger OnDrillDown()
                    // begin
                    // ActivitiesMgt.DrillDownSalesThisMonth();
                    // end;
                 }
            }

        }
        addafter("Ongoing Sales")
        {
            cuegroup(new1)
            {
                field("No.Of Sales Quotes"; Rec."No.Of Sales Quotes")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Sales Quotes";
                    ToolTip = 'This Cue move you to Sales Quotes list';

                }
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
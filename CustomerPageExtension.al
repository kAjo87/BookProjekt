pageextension 50101 "Customer Card Book Extension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Favorite Book No.";"Favorite Book No.")
            {
                ApplicationArea = All;
            }
        }
    }
}
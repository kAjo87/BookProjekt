page 50101 BookList
{
    PageType = List;
    SourceTable = Book;
    CardPageId = BookCard;
    Caption = 'Books';
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    
    layout
    {
        area(content)
        {
            repeater(BookRepeater)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }

                field(Title; Title)
                {
                    ApplicationArea = All;
                }
                field(Autor; Autor)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Reporting)
        {
            action(Export)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Xmlport.Run(XMLPORT::"Book Export");
                end;
            }
        }
    }
}
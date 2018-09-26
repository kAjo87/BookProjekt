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
        area(Processing)
        {
            action(Export)
            {
                Promoted = true;
                Caption = 'XML Export';
                ApplicationArea = All;
                RunObject = xmlport "Book Export";
                image = XMLFile;

                trigger OnAction()
                var
                    Book: Record Book;
                    ExpBooks: XmlPort "Book Export";
                begin
                    CurrPage.SetSelectionFilter(Book);
                    ExpBooks.SetTableView(Book);
                    ExpBooks.Run();
                end;
            }
        }
    }
}
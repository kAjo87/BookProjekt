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
                    Caption = 'No.';
                    ApplicationArea = All;
                }

                field(Title; Title)
                {
                    Caption = 'Title';
                    ApplicationArea = All;
                }
                field(Autor; Autor)
                {
                    Caption = 'Autor';
                    ApplicationArea = All;
                }
            }
        }
    }
}
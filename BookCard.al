page 50100 BookCard
{
    PageType = Card;
    caption = 'Book Card';
    SourceTable = Book;
    
    layout
    {
        area(content)
        {
            group(Book)
            {
                Caption = 'Allgemein';
                field("No."; "No.")
                {
                    Caption = 'No.';
                    NotBlank = true;
                    ApplicationArea = All;
                }

                field(Title; Title)
                {
                    Caption = 'Title';
                    ApplicationArea = All;
                }
            }

            group(Details){
                Caption = 'Details';
                field(Autor;Autor){
                    Caption = 'Autor';
                    ApplicationArea = All;
                }

                field(Hardcover;Hardcover){
                    Caption = 'Hardcover';
                    ApplicationArea = All;
                }

                field("Page Count";"Page Count"){
                    Caption = 'Page Count';
                    ApplicationArea = All;
                }
            }
        }
    }
    
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
}
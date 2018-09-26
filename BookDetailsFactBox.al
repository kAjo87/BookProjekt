page 50103 BookDetailsFactBox
{
    PageType = CardPart;
    SourceTable = Book;
    Caption = 'Buchdetails';
    Editable = false;
    
    layout
    {
        area(content)
        {
            group("Favorit Book")
            {
               field("No."; "No.")
                {
                    Caption = 'No.';
                    NotBlank = true;
                    ApplicationArea = All;
                    DrillDown = true;

                    trigger OnDrillDown()
                    Begin
                        ShowDetails();
                    end;
                }
                field(Title; Title)
                {
                    Caption = 'Title';
                    ApplicationArea = All;
                }
                field(Autor;Autor){
                    Caption = 'Autor';
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
    
    var
        myInt: Integer;

        local procedure ShowDetails();
        begin
            Page.Run(Page::BookCard,Rec);
        END;
}
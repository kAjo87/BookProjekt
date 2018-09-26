report 50100 "Book List"
{
    Caption = 'Book List';
    DefaultLayout = RDLC;
    RDLCLayout = 'Rep50100.BookList.rdlc';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(IntegerCount; Integer){
            DataItemTableView = sorting(Number) where (Number = const(1));

            column(COMPANYNAME;CompanyProperty.DisplayName()){}
            column(TitleLbl; TitleCaption){}
            column(MyDecision; myDecision){}
        }
        dataitem(Book; Book)
        {
            RequestFilterFields = "No.", Autor;

            column(No_Book; "No."){IncludeCaption = true;}
            column(Title; Title){IncludeCaption = true;}
            column(Autor;Autor){IncludeCaption= true;}
            column(PageCount; FORMAT("Page Count")){}
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(Optionen)
                {
                    field("Druck Footer"; myDecision)
                    {
                        
                    }
                }
            }
        }
    }

    labels{
        TitleCaption = 'Book - List', Comment = 'Das ist ein Testkommentar';
        PageCaption = 'Page {0} of {1}';
    }

    var
        myDecision: Boolean;
}

    


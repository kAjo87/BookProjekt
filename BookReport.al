report 50100 "Book List"
{
    Caption = 'Book List';
    DefaultLayout = RDLC;
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(IntegerCount; Integer){
            DataItemTableView = sorting(Number) where (Number = const(1));
            
            column(COMPANYNAME;CompanyProperty.DisplayName()){}
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
    
    var
        myInt: Integer;
}
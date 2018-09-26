xmlport 50100 "Book Export"
{
    Caption = 'export books';
    Format = Xml;
    UseRequestPage = false;
    Direction = Export;
    schema
    {
        textelement(Books)
        {
            tableelement(Book; Book)
            {
                fieldattribute(Number; Book."No."){}
                fieldelement(Title; Book.Title){}
                fieldelement(Autor; Book.Autor){}
                fieldelement(PageCount; book."Page Count"){}
                fieldelement(Hardcover; Book.Hardcover){}     
            }
        }
    }
    var
        myInt: Integer;
}
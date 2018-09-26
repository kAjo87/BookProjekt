profile "Profil Kumavision"
{
    Description = 'Kumavision - Kai Fidos - Profil';
    RoleCenter = "Business Manager Role Center";
    Customizations = CustCardCustomization, CustListCustomization;
}

pagecustomization CustCardCustomization customizes "Customer Card"
{
    layout
    {
        modify("Location Code"){
            Visible = false;
        }
    }
    
    actions
    {
        movebefore(NewSalesInvoice; NewSalesOrder)   
    }
    
    //Variables, procedures and triggers are not allowed on Page Customizations
}

pagecustomization CustListCustomization customizes "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    //Variables, procedures and triggers are not allowed on Page Customizations
}
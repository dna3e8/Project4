using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void SubmitBTN_Click(object sender, EventArgs e)
    {
        string FileName = Path.GetFileName(ImageUPL.FileName);
        string FileName2 = Path.GetFileName(ImageUPL.FileName);
        if (FileName != "")
        {
            FileName = "~/Images/Products/" + FileName;
            ImageUPL.SaveAs(Server.MapPath(FileName));
        }
        else
        {
            FileName = "";
        }


        SqlDataSource1.InsertParameters["PName"].DefaultValue = PNameTXT.Text;
        SqlDataSource1.InsertParameters["Price"].DefaultValue = PriceTXT.Text;
        SqlDataSource1.InsertParameters["Onhand"].DefaultValue = OnhandTXT.Text;
        SqlDataSource1.InsertParameters["description"].DefaultValue = DescriptionTXT.Text;
        SqlDataSource1.InsertParameters["imageURL"].DefaultValue = FileName;

        try
        {
            SqlDataSource1.Insert();
            PNameTXT.Text = "";
            PriceTXT.Text = "";
            OnhandTXT.Text = "";
            DescriptionTXT.Text = "";

            ErrorsLBL.Text = "Data saved- Thank you";
        }

        catch (Exception ex)
        {
            ErrorsLBL.Text = "An exception occurred adding the order." +
           ex.Message;
        }

    }
}
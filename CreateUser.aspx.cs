using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ContinueButton_Click(object sender, EventArgs e)
    {
        // may need to include using System.Web.Security; to the code behind
        MembershipUser user = Membership.GetUser();
        string myUser = user.UserName;
        Roles.AddUserToRole(myUser, "Customer");
        Response.Redirect("~/Default.aspx");
    }
    
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ErrorsLBL.Text = "";
    }
    protected void SubmitBTN_Click(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        string username = user.UserName;


        Boolean child5 = CheckBoxList1.Items[0].Selected;
        Boolean child10 = CheckBoxList1.Items[1].Selected;
        Boolean child19 = CheckBoxList1.Items[2].Selected;
        Boolean child40 = CheckBoxList1.Items[3].Selected;

        ErrorsLBL.Text = "";

        // Required Insert
        CustomerSDS.InsertParameters["FName"].DefaultValue = FNameTXT.Text;
        CustomerSDS.InsertParameters["LName"].DefaultValue = LNameTXT.Text;
        CustomerSDS.InsertParameters["phone"].DefaultValue = PhoneTXT.Text;

        // Additional txt
        CustomerSDS.InsertParameters["favColor"].DefaultValue = FavoriteColorTXT.Text;
        CustomerSDS.InsertParameters["Bday"].DefaultValue = BirthdayTXT.Text;
        CustomerSDS.InsertParameters["Anniversary"].DefaultValue = AnniversaryTXT.Text;
        CustomerSDS.InsertParameters["Age"].DefaultValue = AgeTXT.Text;

        //Additional DDL
        CustomerSDS.InsertParameters["income"].DefaultValue = IncomeDDL.SelectedItem.Value;
        CustomerSDS.InsertParameters["SexPref"].DefaultValue = SexalPrefDDL.SelectedItem.Value;

        // Additional Radio
        CustomerSDS.InsertParameters["Gender"].DefaultValue = GenderRBL.SelectedItem.Value;

        CustomerSDS.InsertParameters["Relation"].DefaultValue = RelationshipRDB.SelectedItem.Value;
        CustomerSDS.InsertParameters["Rent_own"].DefaultValue = RentOwnRBL.SelectedItem.Value;
        CustomerSDS.InsertParameters["Edu"].DefaultValue = EduRBL.SelectedItem.Value; 

        // Additial Check
        CustomerSDS.InsertParameters["child5"].DefaultValue = child5.ToString();
        CustomerSDS.InsertParameters["child10"].DefaultValue = child10.ToString();
        CustomerSDS.InsertParameters["child19"].DefaultValue = child19.ToString();
        CustomerSDS.InsertParameters["child40"].DefaultValue = child40.ToString();

        // Additional Multi line
        CustomerSDS.InsertParameters["Comment"].DefaultValue = CommentTXT.Text;

        // From get user
        CustomerSDS.InsertParameters["CustomerUsername"].DefaultValue = username;

        AddressSDS.InsertParameters["CustomerUsername"].DefaultValue = username;
        AddressSDS.InsertParameters["FName"].DefaultValue = FNameTXT.Text;
        AddressSDS.InsertParameters["LName"].DefaultValue = LNameTXT.Text;

        AddressSDS.InsertParameters["StreetAddr"].DefaultValue = StreetAddrTXT.Text;
        AddressSDS.InsertParameters["State"].DefaultValue = StateDDL.SelectedItem.Value; ;
        AddressSDS.InsertParameters["City"].DefaultValue = CityTXT.Text;




       
        try
        {
            CustomerSDS.Insert();
            AddressSDS.Insert();


            FNameTXT.Text = "";
            LNameTXT.Text = "";


            PhoneTXT.Text="";
            FavoriteColorTXT.Text = "";
            BirthdayTXT.Text = "";
            AnniversaryTXT.Text="";
            AgeTXT.Text="";

            //Additional DDL  JobTitleDDL.SelectedIndex = 0;
            IncomeDDL.SelectedIndex = 0;
            SexalPrefDDL.SelectedIndex = 0;

            // Additional Radio
            GenderRBL.SelectedIndex = 0;
            RelationshipRDB.SelectedIndex = 0;
            RentOwnRBL.SelectedIndex = 0;
            // CustomerSDS.InsertParameters["Edu"].DefaultValue = EduRBL.SelectedItem.Value; 

            // Additial Check  Items[0].Selected = false;
            CheckBoxList1.Items[0].Selected = false;

            // Additional Multi line
            CommentTXT.Text="";

            StreetAddrTXT.Text="";
            StateDDL.SelectedIndex = 0;
            CityTXT.Text="";

            ErrorsLBL.Text = "Data saved- Thank you";
        }

        catch (Exception ex)
        {
            ErrorsLBL.Text = "An exception occurred adding the order." +
           ex.Message;
        }


    }
}
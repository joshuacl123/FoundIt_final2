using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoundIt_final2
{
    public partial class FoundFinal2 : System.Web.UI.Page
    {
        Database1Entities db = new Database1Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                List<String> offices = new List<String>();
                offices.Add("Head Office Serpong");
                offices.Add("Alam Sutera Barat");
                offices.Add("Alam Sutera Timur");
                DropDownList1.DataSource = offices;
                DropDownList1.DataBind();
            }

        }

        protected String generateFoundID()
        {
            String newID = "";
            String lastID = (from m in db.FoundLists select m.foundID).ToList().LastOrDefault();

            if (lastID == null)
            {
                newID = "FO001";
            }
            else
            {
                int IDnum = Convert.ToInt32(lastID.Substring(2));
                IDnum++;
                newID = String.Format("FO{0:000}", IDnum);
            }
            return newID;
        }

        protected void nextbtn_Click(object sender, EventArgs e)
        {
            User user;
            user = (User)Session["user"];
            String foundID = generateFoundID();
            String itemID = Request["ID"];
            String office = DropDownList1.Text.ToString();
            String location = foundlocationtxt.Text.ToString();

            FoundList newfound = new FoundList();
            newfound.foundID = foundID;
            newfound.itemID = itemID;
            newfound.userID = user.userID;
            newfound.foundLocation = location;
            newfound.officeLocation = office;
            newfound.foundStatus = "Waiting";

            db.FoundLists.Add(newfound);
            db.SaveChanges();

            Response.Redirect("FoundFinal3.aspx?ID=" + newfound.foundID);
        }
    }
}
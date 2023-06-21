using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoundIt_final2
{
    public partial class Home1 : System.Web.UI.Page
    {
        Database1Entities db = new Database1Entities();
        public List<LostList> itemList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Request.Cookies["user_cookie"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                User user1;
                if (Session["user"] == null)
                {
                    var id = Request.Cookies["user_cookie"].Value;
                    user1 = (from x in db.Users where x.userID == id select x).FirstOrDefault();
                    Session["user"] = user1;
                }
                else
                {
                    user1 = (User)Session["user"];
                }
            }

            itemList = (from x in db.LostLists where x.itemStatus == "Lost" select x).ToList();

            User user;
            user = (User)Session["user"];
            FoundList foundlists = (from x in db.FoundLists where x.userID == user.userID select x).ToList().LastOrDefault();

            if (foundlists != null)
            {
                if (foundlists.foundStatus == "Waiting")
                {
                    notiflabel.Text = "No Notifications Yet";
                }
                else if (foundlists.foundStatus == "NotApproved")
                {
                    notiflabel.Text = "Found ID " + foundlists.foundID + " Not Approved";
                }
                else if (foundlists.foundStatus == "Approved")
                {
                    notiflabel.Text = "Found ID " + foundlists.foundID + " Has Been Approved";
                }

            }
            else
            {
                notiflabel.Text = "No Notifications Yet";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoundIt_final2
{
    public partial class HistoryFinal : System.Web.UI.Page
    {
        public List<History> historyList;
        Database1Entities db = new Database1Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            User user;
            user = (User)Session["user"];
            FoundList foundlists = (from x in db.FoundLists where x.userID == user.userID select x).ToList().LastOrDefault();

            historyList = (from x in db.Histories where x.userFoundID == user.userID select x).ToList();

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
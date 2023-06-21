using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoundIt_final2
{
    public partial class AdminOnly : System.Web.UI.Page
    {
        Database1Entities db = new Database1Entities();
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
                if (user1.userName != "admin")
                {
                    Response.Redirect("Login.aspx");
                }
            }

            List<String> listID = (from x in db.FoundLists where x.foundStatus == "Waiting" select x.foundID).ToList();
            DropDownList1.DataSource = listID;
            DropDownList1.DataBind();
        }

        protected String generateHistoryID()
        {
            String newID = "";
            String lastID = (from m in db.Histories select m.historyID).ToList().LastOrDefault();

            if (lastID == null)
            {
                newID = "HI001";
            }
            else
            {
                int IDnum = Convert.ToInt32(lastID.Substring(2));
                IDnum++;
                newID = String.Format("HI{0:000}", IDnum);
            }
            return newID;
        }

        protected void approvebtn_Click(object sender, EventArgs e)
        {
            String foundID = DropDownList1.Text.ToString();
            FoundList found1 = (from x in db.FoundLists where x.foundID==foundID select x).ToList().FirstOrDefault();
            LostList item1 = (from x in db.LostLists where x.itemID == found1.itemID select x).ToList().FirstOrDefault();

            found1.foundStatus = "Approved";
            db.SaveChanges();

            List<FoundList> foundlistdecline = (from x in db.FoundLists where (x.itemID == item1.itemID) && (x.foundID != foundID) select x).ToList();
            
            foreach(var found in foundlistdecline)
            {
                found.foundStatus = "NotApproved";
            }
            db.SaveChanges();

            String ownerID = (from x in db.LostLists where x.itemID == found1.itemID select x.ownerID).ToList().FirstOrDefault();

            History newHist = new History();
            newHist.historyID = generateHistoryID();
            newHist.itemID = found1.itemID;
            newHist.ownerID = ownerID;
            newHist.foundID = foundID;
            newHist.userFoundID = found1.userID;
            newHist.itemDescription = found1.LostList.itemDescription;
            newHist.foundLocation = found1.foundLocation;
            db.Histories.Add(newHist);
            db.SaveChanges();

            LostList item = (from x in db.LostLists where x.itemID == found1.itemID select x).ToList().FirstOrDefault();
            item.itemStatus = "Found";
            db.SaveChanges();

            Response.Redirect("LogOut.aspx");
        }

        protected void declinebtn_Click(object sender, EventArgs e)
        {
            String foundID = DropDownList1.Text.ToString();
            FoundList found1 = (from x in db.FoundLists where x.foundID==foundID select x).ToList().FirstOrDefault();

            found1.foundStatus = "NotApproved";
            db.SaveChanges();

            Response.Redirect("LogOut.aspx");
        }
    }
}
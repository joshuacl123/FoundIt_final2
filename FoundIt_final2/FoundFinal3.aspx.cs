using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoundIt_final2
{
    public partial class FoundFinal3 : System.Web.UI.Page
    {
        Database1Entities db = new Database1Entities();
        /*
        protected String generateNotifID()
        {
            String newID = "";
            String lastID = (from m in db.ApprovedNotifs select m.notifID).ToList().LastOrDefault();

            if (lastID == null)
            {
                newID = "NF001";
            }
            else
            {
                int IDnum = Convert.ToInt32(lastID.Substring(2));
                IDnum++;
                newID = String.Format("NF{0:000}", IDnum);
            }
            return newID;
        }
        */
        protected void Page_Load(object sender, EventArgs e)
        {
            String foundID = Request["ID"];
            Label1.Text = foundID;

            kirimNotifEmailKeOwner();

            bool approved = prosesApprove();

        }

        protected void kirimNotifEmailKeOwner()
        {
            String foundID = Request["ID"];
            FoundList found = (from x in db.FoundLists where x.foundID == foundID select x).ToList().FirstOrDefault();
            String ownerID = (from x in db.LostLists where x.itemID == found.itemID select x.ownerID).ToList().FirstOrDefault();

            String ownerEmail = (from x in db.Users where x.userID == ownerID select x.userEmail).ToList().FirstOrDefault();
            String lokasiDitemukan = found.foundLocation;
            String lokasiAmbilBarang = found.officeLocation;

            //testlabel.Text = ownerEmail + " " + lokasiDitemukan + " " + lokasiAmbilBarang;

            /* kirim notif ke owner email, barang nya udh ada yg nemuin */
        }

        protected bool prosesApprove()
        {
            /*proses*/
            return true;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoundIt_final2
{
    public partial class FoundFinal : System.Web.UI.Page
    {
        Database1Entities db = new Database1Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                List<String> list = (from x in db.LostLists where x.itemStatus=="Lost" select x.itemID).ToList();
                DropDownList1.DataSource = list;
                DropDownList1.DataBind();
            }

        }

        protected void nextbtn_Click(object sender, EventArgs e)
        {
            String lostID = DropDownList1.Text.ToString();
            Response.Redirect("FoundFinal2.aspx?ID=" + lostID);
        }
    }
}
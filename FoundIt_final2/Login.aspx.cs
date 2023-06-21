using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoundIt_final2
{
    public partial class Login : System.Web.UI.Page
    {
        Database1Entities db = new Database1Entities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["user_cookie"] != null)
            {
                User user1;
                var id = Request.Cookies["user_cookie"].Value;
                user1 = (from x in db.Users where x.userID == id select x).FirstOrDefault();
                if (user1.userName != "admin")
                {
                    Response.Redirect("Home1.aspx?ID=" + Request.Cookies["user_cookie"].Value);
                }
                else if (user1.userName == "admin")
                {
                    Response.Redirect("AdminOnly.aspx");
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /* validation dlu */

            String username = usernametxt.Text;
            String password = passwordtxt.Text;
            bool isRemember = CheckBox1.Checked;

            var user = (from x in db.Users where x.userName.Equals(username) && x.userPassword.Equals(password) select x).FirstOrDefault();

            if (user != null)
            {
                Session["user"] = user;
                if (isRemember)
                {
                    HttpCookie cookie = new HttpCookie("user_cookie");
                    cookie.Value = user.userID;
                    cookie.Expires = DateTime.Now.AddHours(1);
                    Response.Cookies.Add(cookie);
                }
                if (user.userName == "admin")
                {
                    Response.Redirect("AdminOnly.aspx");
                }
                else
                {
                    Response.Redirect("Home1.aspx?ID=" + user.userID);
                }
            }
            else
            {
                errortxt.Text = "Wrong username or password";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}
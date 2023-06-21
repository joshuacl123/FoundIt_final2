using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoundIt_final2
{
    public partial class SignUp : System.Web.UI.Page
    {
        Database1Entities db = new Database1Entities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected String generateUserID()
        {
            String newID = "";
            String lastID = (from m in db.Users select m.userID).ToList().LastOrDefault();

            int IDnum = Convert.ToInt32(lastID.Substring(2));
            IDnum++;
            newID = String.Format("US{0:000}", IDnum);
            return newID;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.ToString().Equals(""))
            {
                errortxt.Text = "Username cannot be empty";
            }
            else if (TextBox2.Text.ToString().Equals(""))
            {
                errortxt.Text = "Phone number cannot be empty";
            }
            else if (TextBox3.Text.ToString().Equals(""))
            {
                errortxt.Text = "Email cannot be empty";
            }
            else if (TextBox4.Text.ToString().Equals(""))
            {
                errortxt.Text = "Password cannot be empty";
            }
            else if (TextBox5.Text.ToString().Equals(""))
            {
                errortxt.Text = "Please confirm your password";
            }
            else if (TextBox4.Text.ToString() != TextBox5.Text.ToString())
            {
                errortxt.Text = "Your password is inconsistent";
            }
            else
            {
                String newID = generateUserID();
                String newusername = TextBox1.Text.ToString();
                String newuserphone = TextBox2.Text.ToString();
                String newemail = TextBox3.Text.ToString();
                String newpassword = TextBox4.Text.ToString();

                User user = new User();
                user.userID = newID;
                user.userName = newusername;
                user.userPhone = newuserphone;
                user.userEmail = newemail;
                user.userPassword = newpassword;

                db.Users.Add(user);
                db.SaveChanges();

                Response.Redirect("Login.aspx");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
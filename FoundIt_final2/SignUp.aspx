<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="FoundIt_final2.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<link href="CSS/GlobalStyle.css" rel="stylesheet" />-->
    <link href="CSS/StyleSheet.css" rel="stylesheet" />
    <title>Sign Up</title>
</head>
<body>
    <form class="form1" runat="server">
    <div class="logo">
        <img class="logo" src="assets/Found It!.png" alt="logo">
    </div>

    <div class="Div1" runat="server">
        <div class="container">
            <div class="card">
                <h1>Set up your profile</h1>
                <h6>Hey, enter your details to get sign in to your account</h6>
                <class="IdPass">
                    <asp:TextBox ID="TextBox1" CssClass="usernametxt" placeholder="Username" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" CssClass="phonenum" placeholder="Phone Number" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" CssClass="email" placeholder="Email" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" CssClass="passwordtxt" type="password" placeholder="Password" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" CssClass="confirmpassword" type="password" placeholder="Confirm Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="errortxt" runat="server" Text="" ForeColor="Red"></asp:Label>
                    <asp:Button ID="Button1" CssClass="loginbtn" runat="server" Text="Register" OnClick="Button1_Click" />
                    <br />
                        <label id="label1" class="label1">Already have an account?</label>
                        <asp:Button ID="Button2" class="signupbtn" runat="server" Text="Back to Login" OnClick="Button2_Click" />
                       
                    <br />
                    <!-- <Button ID="Button1" placeholder="Sign-Up" BorderStyle="None" Height="18px" OnClick="Button1_Click" UseSubmitBehavior="False" Visible="False" Width="60px"> -->
            </div>

        </div>
    </div>
   </form>
</body>
</html>

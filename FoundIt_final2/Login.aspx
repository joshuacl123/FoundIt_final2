<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FoundIt_final2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<link href="CSS/GlobalStyle.css" rel="stylesheet" />-->
    <link href="CSS/StyleSheet.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body1>
    <form class="form1" runat="server">
        <div class="logo">
        <img class="logo" src="assets/Found It!.png" alt="logo">
        </div>

        <div class="form1">
        <div class="container">
        <div class="card">
            <h1>Sign In</h1>
            <h6>Hey, enter your details to get sign in to your account</h6>
            <class="IdPass">
                <asp:TextBox ID="usernametxt" CssClass="usernametxt" placeholder="Username" runat="server"></asp:TextBox>
                <asp:TextBox ID="passwordtxt" CssClass="passwordtxt" placeholder="Password" type="password" runat="server"></asp:TextBox>
                <br />
                <asp:CheckBox ID="CheckBox1" class="" runat="server" /> Remember Me
                <br />
                <asp:Button ID="Button1" class="loginbtn" runat="server" Text="Login" OnClick="Button1_Click" />   
                <br />
                <label id="label1" class="text-bold">Don't have an account?</label>
                <asp:Button ID="Button2" class="signupbtn" runat="server" Text="Sign Up" OnClick="Button2_Click" />
                <br />
                <asp:Label ID="errortxt" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </div>

    </form>
    
</body1>
</html>

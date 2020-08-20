<%@ Page Language="C#" CodeBehind="UserLoginPage.aspx.cs" Inherits="SchudesPlans.UserLoginPage" EnableEventValidation="True"  %>

<link href="loginView.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div class="outer-box">
    <div class="login-box">
 
<table class="auto-style1">
            <tr>
                <td class="auto-style5">Kullanıcı Adı</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Şifre</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnGiris" runat="server" OnClick="btnGiris_Click" Text="Giriş" Width="125px" style="margin-left: 0px" />
                </td>
            </tr>
           
        </table>
        </div>
       </div>
    </form>
</body>
</html>
    
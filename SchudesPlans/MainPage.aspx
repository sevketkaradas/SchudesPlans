<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="SchudesPlans.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div style="background-color: deepskyblue; text-align:center ;margin:auto; height:50%; width:50%; border-radius:5px; padding:50px 0 50px 0 "  >
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="CreatPlan" runat="server" OnClick="Creat_Plan" Text="Creat Plans" Width="125px" Height="125px" style="margin-left: 0px" />
                </td>
            </tr>
             <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="ShowPlan" runat="server" OnClick="Show_Plan" Text="Show Plan" Width="125px" Height="125px" style="margin-left: 0px" />
                </td>
            </tr>
        </div>
    </form>
</body>
</html>

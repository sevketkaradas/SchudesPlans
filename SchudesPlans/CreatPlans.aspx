<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatPlans.aspx.cs" Inherits="SchudesPlans.CreatPlans" EnableEventValidation="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div style="background-color:darkkhaki; text-align:center ;margin:auto; height:50%; width:50%; border-radius:5px;padding:40px 0 0 0 "  >

    <form id="form1" runat="server">
      <div class="row" style="padding:10px">
                <div class="row">
               <label id="lblZamanBaslangic">Start Date</label>
                    
<asp:TextBox ID="txtBaslangicTarih" runat="server" placeholder="mm/dd/yyyy" Textmode="Date" ReadOnly = "false"></asp:TextBox>
                        </div>
          <div class="row" style="padding:10px">

               <label id="lblZamanBitis">Finish Date</label>
              
<asp:TextBox ID="txtBitisTarih" runat="server" placeholder="mm/dd/yyyy" Textmode="Date" ReadOnly = "false"></asp:TextBox>
              </div>                            
            <div class="row" style="padding:10px">
        <span>Statement : </span>
        
             <asp:textbox id="txtStatement" runat="server" width="300px" height="150px" TextMode="MultiLine" Rows="10"></asp:textbox><br>
        </div>
             
       
            <div class="row" style="padding:10px">

                    <asp:Button ID="Save_plan" runat="server" OnClick="Save_Plan" Text="Save Plan" Width="125px" style="margin-left: 0px" />

                    <asp:Button ID="GoShowPlan" runat="server" OnClick="Go_ShowPlans" Text="Show Plans" Width="125px" style="margin-left: 0px" />

                    </div>
              </div>

    </form>
       </div>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowPlans.aspx.cs" Inherits="SchudesPlans.ShowPlans" EnableEventValidation="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <form id="form3" runat="server">
            <div style="background-color: deepskyblue; text-align:center ;margin:auto; height:50%; width:50%; border-radius:5px;padding:40px 0 0 0 "  >

                <div class="row" style="padding:10px;">
                            <label id="lblZamanBaslangic">Date :</label>
                   
        <asp:TextBox ID="txtBaslangicTarih" runat="server" placeholder="mm/dd/yyyy" Textmode="Date" ReadOnly = "false"></asp:TextBox>
                        </div>
                 
            <div class="row" style="padding:15px;">
                    <asp:Button ID="ShowPlansFilt" runat="server" OnClick="ShowPlansFirtre" Text="Show Plans" Width="125px" style="margin-left: 0px" />
                    </div>
             </div>

            <!--Filtre Bitti-->
                             <div class="panel-body  table-rep-plugin">
                        <div class="row" style="background-color:azure; text-align:center ;margin:auto; height:50%; width:50%; border-radius:5px;padding:40px 0 0 0 ">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="row">
                                    <div class="table-responsive " data-pattern="priority-columns">
                                        <asp:Repeater ID="rptTablo" runat="server"
                                            OnItemCommand="rptTablo_ItemCommand"
                                            OnItemDataBound="rptTablo_ItemDataBound">
                                            <HeaderTemplate>
                                                <table class="table table-small-font table-bordered table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th data-priority="1">User Name</th>
                                                            <th data-priority="1">User Surname</th>
                                                            <th data-priority="1">Start Date </th>
                                                            <th data-priority="1">Finish Date</th>
                                                            <th data-priority="1">Explanation</th>
                                                            
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr id="trBayi" runat="server">
                                                    <td class="minWidth150"><%#Eval("UserName") %></td>
                                                    <td class="minWidth70"><%#Eval("UserSurname") %></td>
                                                    <td class="minWidth25"><%#Eval("StartDate") %></td>
                                                    <td class="minWidth25"><%#Eval("EndedDate") %></td>
                                                    <td class="minWidth25"><%#Eval("Statment") %></td>
                                                     </tr>
                                                   <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        </tbody>  
                                        </table>
                                    </div>

                <!-- panel -->
           
                 </div>
             </div>
            </div>
            <!-- col -->
        </div>

    </form>
</body>
</html>

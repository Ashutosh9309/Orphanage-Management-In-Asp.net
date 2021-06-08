<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete-child.aspx.cs" Inherits="orphanagemanagement.delete_child" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Child</title>
    <link href="css\bootstrap.min.css" rel="stylesheet" />
    <link href="font-Awesome/css/all.css" rel="stylesheet" />

</head>
<body>
    <br /><br />
    <form id="form1" runat="server">

        <div class="container">
            
          
        <asp:Label ID="Label1" runat="server" Text="Enter Children Id"></asp:Label>

    &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8"  runat="server" CssClass="active" Width="267px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" class="btn btn-primary" OnClick="Button2_Click" Text="Delete" />
        </div>

 
        <br />
        <hr />

        <div>
             <div class="container-fluid">
        <a href="Admin.aspx"><h3 class="btn btn-primary ">Admin Home</h3></a>
         </div>
        <div class="container">
        <h2 class="text-danger" >Children Details.</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#66CCFF" CssClass="gvl"
            BorderColor="ActiveBorder" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Children_Id" HeaderText="Children_Id" />
                 <asp:BoundField DataField="Name" HeaderText="Name" />
                 <asp:BoundField DataField="Children_Status" HeaderText="Children_Status" />
                 <asp:BoundField DataField="State" HeaderText="State" />
                 <asp:BoundField DataField="City" HeaderText="Clothes" />
                 <asp:BoundField DataField="Pin_Code" HeaderText="Pin_Code" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                 <asp:ImageField DataImageUrlField="image" HeaderText="image" ControlStyle-Height="200" ControlStyle-Width="200">
<ControlStyle Height="200px" Width="200px"></ControlStyle>
                </asp:ImageField>   


            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="true" ForeColor="Wheat" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="true" ForeColor="Wheat" />
            <SortedAscendingCellStyle BackColor="#FFF1DA" />
            <SortedAscendingHeaderStyle BackColor="#895C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />

            


        </asp:GridView>
            </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [Children]">
            
        </asp:SqlDataSource>
        <br />
        <br />

        </div>
    </form>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>

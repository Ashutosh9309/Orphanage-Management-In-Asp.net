<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonarRequest.aspx.cs" Inherits="orphanagemanagement.DonarRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About Us</title>
    <link href="css\bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
         <br />
        <br />
        <div class="container-fluid">
        <a href="Admin.aspx"><h3 class="btn btn-primary ">Admin Home</h3></a>
         </div>
        <div class="container">
        <h2 class="text-danger" >Orphanage Donation Request :</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BackColor="#66ccff" CssClass="gvl"
            BorderColor="ActiveBorder" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" />
                 <asp:BoundField DataField="Email" HeaderText="Email" />
                 <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                 <asp:BoundField DataField="Address" HeaderText="Address" />
                 <asp:BoundField DataField="Clothes" HeaderText="Clothes" />
                <asp:BoundField DataField="Money" HeaderText="Money" />
                 <asp:BoundField DataField="Others" HeaderText="Others" />

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
            SelectCommand="SELECT [Name], [Email], [Mobile], [Address],[Clothes],[Money],[Others] FROM [DonarRequest]"></asp:SqlDataSource>
            
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
<a href="mailto:name@email.com" class="btn btn-primary" >Send Mail</a>

    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Volunteer_Detail.aspx.cs" Inherits="orphanagemanagement.Volunteer_Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Volunteer Detail</title>
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
        <h2 class="text-danger" >Volunteer Details</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BackColor="#66ccff" CssClass="gvl"
            BorderColor="ActiveBorder" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Volunteer_Name" HeaderText="Volunteer_Name" />
                <asp:BoundField DataField="Volunteer_User_Name" HeaderText="Volunteer_User_Name" /> 
               <asp:BoundField DataField="Volunteer_Age" HeaderText="Volunteer_Age" />
               <asp:BoundField DataField="Volunteer_Address" HeaderText="Volunteer_Address" />
              <asp:BoundField DataField="Volunteer_Mobile_no" HeaderText="Volunteer_Mobile_no" />
                <asp:BoundField DataField="Volunteer_Email" HeaderText="Volunteer_Email" />
                 <asp:BoundField DataField="Volunteer_Password1" HeaderText="Volunteer_Password" />
                 

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
            SelectCommand="SELECT [Volunteer_Name], [Volunteer_User_Name],[Volunteer_Age],[Volunteer_Address],[Volunteer_Mobile_no], [Volunteer_Email], [Volunteer_Password1] FROM [Volunteer_Registration]"></asp:SqlDataSource>
            


    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

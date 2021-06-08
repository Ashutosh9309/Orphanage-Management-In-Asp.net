<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update-child.aspx.cs" Inherits="orphanagemanagement.Update_child" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Child</title>
    <link href="css\bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br /><br />
            <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Children Details</h4>
                            <br />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                           &nbsp;</center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Children ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                            
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Children Status</label>
                      
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox3" runat="server" placeholder="Children Status"></asp:TextBox>
                              
                           </div>
                        </div>
                     </div>
                  </div>
                     
                  </div>
                  <div class="row container">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="State"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pin Code</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Pin Code"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row container">
                     <div class="col-12">
                        <label>Full Postal Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Full Postal Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            <br />
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Update" OnClick="Button1_Click" />
                         <br />
                         <br />
                     </div>
                  </div>
               </div>
            </div>
             <br>
         </div>
   </div>
            <br /><hr /><hr />

        </div>

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

    </form>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listingPage.aspx.cs" Inherits="phoneBook.Listing" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title> Listing Page </title>
</head>
<body>
    <form id="form1" runat="server">
   <div class="container">
    <h2>Numbers </h2>            
  <table class="table table-hover">
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
              <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
              <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhonebookConnectionString %>" SelectCommand="SELECT * FROM [phoneBook]"></asp:SqlDataSource>
  </table>
</div>
        <br />
        <div class="container">
        <asp:Button ID="deleteButton" runat="server" Text="Delete Page" OnClick="deleteButton_Click" />
        <asp:Button ID="editButton" runat="server" Text="Edit Page" OnClick="editButton_Click" />
        <asp:Button ID="addButton" runat="server" Text="Add Page" OnClick="addButton_Click" />
        </div>
</form>
</body>
</html>

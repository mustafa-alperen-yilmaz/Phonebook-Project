<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addPage.aspx.cs" Inherits="phoneBook.addPage" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title> Adding Page </title>
    <style type="text/css">
        .auto-style1 {
            width: 243px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2Numbers </h2>            
            <table class="table table-hover">
                <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                 <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
             </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhonebookConnectionString %>" SelectCommand="SELECT * FROM [phoneBook]"></asp:SqlDataSource>
            </td>
                <td>
                    <th>
                        <div>
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        </div>
                        <div>
                        <asp:TextBox ID="nameTxtBox" runat="server"></asp:TextBox>
                        </div>
                        <br/>
                        <br/>
                        <div>
                        <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
                        </div>
                        <div>
                        <asp:TextBox ID="surnameTxtBox" runat="server"></asp:TextBox>
                        </div>
                        <br />
                        <br/>
                        <div>
                        <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                        </div>
                        <div>
                        <asp:TextBox ID="phoneTxtBox" runat="server" TextMode="Phone"></asp:TextBox>
                        </div>
                        <br/>
                        <asp:Button ID="addButton" runat="server" Text="Add" OnClick="addButton_Click" />
                    </th>
                    

                </td>
             </table>
      </div>
        <div class="container">
        <asp:Button ID="listingButton" runat="server" Text="Listing Page" OnClick="listingButton_Click" />
        <asp:Button ID="deleteButton" runat="server" Text="Delete Page" OnClick="deleteButton_Click"  />
        <asp:Button ID="editButton" runat="server" Text="Edit Page" OnClick="editButton_Click"  />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletePage.aspx.cs" Inherits="phoneBook.deletePage" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title> Delete Page </title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2Numbers </h2>            
                <table class="table table-hover">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Phone" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="True" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PhonebookConnectionString %>" DeleteCommand="DELETE FROM [phoneBook] WHERE [Phone] = @original_Phone AND [Name] = @original_Name AND [LastName] = @original_LastName" InsertCommand="INSERT INTO [phoneBook] ([Name], [LastName], [Phone]) VALUES (@Name, @LastName, @Phone)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Name], [LastName], [Phone] FROM [phoneBook]" UpdateCommand="UPDATE [phoneBook] SET [Name] = @Name, [LastName] = @LastName WHERE [Phone] = @original_Phone AND [Name] = @original_Name AND [LastName] = @original_LastName">
            <DeleteParameters>
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
                </table>
            </div>
        <br />
        <div class="container">
        <asp:Button ID="listingButton" runat="server" Text="Listing Page" OnClick="listingButton_Click" />
        <asp:Button ID="editButton" runat="server" Text="Edit Page" OnClick="editButton_Click" />
        <asp:Button ID="addButton" runat="server" Text="Add Page" OnClick="addButton_Click" />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EntityFrmwrkPra2.aspx.cs" Inherits="EntityFrameworkPra2.EntityFrmwrkPra2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="gvProducts" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="Product ID" />
        <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
        <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:N2}" />
        <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
        <asp:BoundField DataField="Description" HeaderText="Description" />
    </Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>

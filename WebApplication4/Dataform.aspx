<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dataform.aspx.cs" Inherits="WebApplication4.Dataform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            List of users</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName" />
                <asp:BoundField DataField="GuestNumber" HeaderText="GuestNumber" SortExpression="GuestNumber" />
                <asp:BoundField DataField="PaymentAmount" HeaderText="PaymentAmount" SortExpression="PaymentAmount" />
                <asp:BoundField DataField="Email_address" HeaderText="Email_address" SortExpression="Email_address" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [EventName], [GuestNumber], [PaymentAmount], [Email address] AS Email_address FROM [register]"></asp:SqlDataSource>
    </form>
</body>
</html>

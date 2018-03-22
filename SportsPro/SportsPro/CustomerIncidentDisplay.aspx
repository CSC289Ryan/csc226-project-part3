<%@ Page Title="Project 2-C: Site Navigation" Language="C#" MasterPageFile="~/SportsMaster.Master" AutoEventWireup="true" CodeBehind="CustomerIncidentDisplay.aspx.cs" Inherits="SportsPro.CustomerIncidentDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Select a customer:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
        DataTextField="Name" DataValueField="CustomerID"></asp:DropDownList>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT [CustomerID], [Name] FROM [Customers] ORDER BY [Name]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT I.IncidentID, I.CustomerID, I.ProductCode, I.TechID, I.DateOpened, I.DateClosed, I.Title, I.Description, T.TechID AS Expr1, T.Name, T.Email, T.Phone, P.ProductCode AS Expr2, P.Name AS Expr3, P.Version, P.ReleaseDate FROM Incidents AS I INNER JOIN Technicians AS T ON I.TechID = T.TechID INNER JOIN Products AS P ON I.ProductCode = P.ProductCode WHERE (I.CustomerID = @CustomerID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="CustomerID"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

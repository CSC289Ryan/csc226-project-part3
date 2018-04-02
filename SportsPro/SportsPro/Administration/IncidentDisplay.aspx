<%@ Page Title="Project 2-C: Site Navigation" Language="C#" MasterPageFile="~/SportsMaster.Master" AutoEventWireup="true" CodeBehind="IncidentDisplay.aspx.cs" Inherits="SportsPro.Administration.IncidentDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="Select I.DateOpened, I.DateClosed, I.Title, I.Description, P.Name As ProductName, C.Name As CustomerName, T.Name As TechName
        From Incidents I
        Left Join Products P On I.ProductCode = P.ProductCode
        Left Join Customers C On I.CustomerID = C.CustomerID
        Left Join Technicians T On I.TechID = T.TechID">
    </asp:SqlDataSource>
</asp:Content>

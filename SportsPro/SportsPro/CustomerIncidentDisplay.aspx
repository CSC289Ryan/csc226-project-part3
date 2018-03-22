<%@ Page Title="Project 2-C: Site Navigation" Language="C#" MasterPageFile="~/SportsMaster.Master" AutoEventWireup="true" CodeBehind="CustomerIncidentDisplay.aspx.cs" Inherits="SportsPro.CustomerIncidentDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    <asp:DataList ID="DataList1" runat="server"></asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
</asp:Content>

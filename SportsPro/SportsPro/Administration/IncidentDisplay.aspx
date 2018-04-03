<%@ Page Title="Project 2-C: Site Navigation" Language="C#" MasterPageFile="~/SportsMaster.Master" AutoEventWireup="true" CodeBehind="IncidentDisplay.aspx.cs" Inherits="SportsPro.Administration.IncidentDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="container">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <div class="col-xs-12" style="background-color:lightgray;">
                    <div class="row">
                        <div class="col-xs-4">
                            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="TechNameLabel" runat="server" Text='<%# Eval("TechName") %>' />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-4 text-right">
                            DateOpened:<br />
                            DateClosed:<br />
                            Title:<br />
                            Description:
                        </div>
                        <div class="col-xs-8">
                            <asp:Label ID="DateOpenedLabel" runat="server" Text='<%# Eval("DateOpened") %>' /><br />
                            <asp:Label ID="DateClosedLabel" runat="server" Text='<%# Eval("DateClosed") %>' /><br />
                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /><br />
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' /><br />
                        </div>
                    </div>
                </div>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">DateOpened:
                <asp:TextBox ID="DateOpenedTextBox" runat="server" Text='<%# Bind("DateOpened") %>' />
                <br />DateClosed:
                <asp:TextBox ID="DateClosedTextBox" runat="server" Text='<%# Bind("DateClosed") %>' />
                <br />Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />CustomerName:
                <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                <br />TechName:
                <asp:TextBox ID="TechNameTextBox" runat="server" Text='<%# Bind("TechName") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <div class="col-xs-12" style="background-color:white;">
                    <div class="row">
                        <div class="col-xs-4">
                            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="TechNameLabel" runat="server" Text='<%# Eval("TechName") %>' />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-4 text-right">
                            DateOpened:<br />
                            DateClosed:<br />
                            Title:<br />
                            Description:
                        </div>
                        <div class="col-xs-8">
                            <asp:Label ID="DateOpenedLabel" runat="server" Text='<%# Eval("DateOpened") %>' /><br />
                            <asp:Label ID="DateClosedLabel" runat="server" Text='<%# Eval("DateClosed") %>' /><br />
                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /><br />
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' /><br />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <div class="col-xs-12" style="background-color:black; color:white; font-weight:bold;">
                        <div class="col-xs-4">
                            <asp:Label ID="Label1" runat="server" Text="Product"></asp:Label>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="Label2" runat="server" Text="Customer"></asp:Label>
                        </div>
                        <div class="col-xs-4">
                            <asp:Label ID="Label3" runat="server" Text="Technician"></asp:Label>
                        </div>
                    </div>
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div class="text-center" style="background-color:black; color:white; font-weight:bold;">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Link"
                                ShowFirstPageButton="False"
                                ShowLastPageButton="False"/>
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
            SelectCommand="Select I.DateOpened, I.DateClosed, I.Title, I.Description, P.Name As ProductName, C.Name As CustomerName, T.Name As TechName
            From Incidents I
            Left Join Products P On I.ProductCode = P.ProductCode
            Left Join Customers C On I.CustomerID = C.CustomerID
            Left Join Technicians T On I.TechID = T.TechID">
        </asp:SqlDataSource>
    </div>
</asp:Content>

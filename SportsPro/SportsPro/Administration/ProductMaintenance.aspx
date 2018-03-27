<%@ Page Title="Project 2-C: Site Navigation" Language="C#" MasterPageFile="~/SportsMaster.Master" AutoEventWireup="true" CodeBehind="ProductMaintenance.aspx.cs" Inherits="SportsPro.Administration.ProductMaintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="container">
        <div class="form-group">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductCode" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode"></asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                    <asp:BoundField DataField="Version" HeaderText="Version" SortExpression="Version"></asp:BoundField>
                    <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:Label ID="lblUpdateDeleteError" runat="server" Text="ERROR" EnableViewState="false"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Label ID="lblAddError" runat="server" Text="ERROR2" EnableViewState="false"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
            <div class="col-xs-12 col-sm-offset-1 col-sm-10">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate" InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products] ORDER BY [ProductCode]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] = @Version, [ReleaseDate] = @ReleaseDate WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ProductCode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Version" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="original_ReleaseDate" Type="DateTime"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProductCode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Version" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="ReleaseDate" Type="DateTime"></asp:Parameter>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Version" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="ReleaseDate" Type="DateTime"></asp:Parameter>
                        <asp:Parameter Name="original_ProductCode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Version" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="original_ReleaseDate" Type="DateTime"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

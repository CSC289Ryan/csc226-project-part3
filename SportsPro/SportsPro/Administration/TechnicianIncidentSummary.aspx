<%@ Page Title="3-F: Display open tech incidents" Language="C#" MasterPageFile="~/SportsMaster.Master" AutoEventWireup="true" CodeBehind="TechnicianIncidentSummary.aspx.cs" Inherits="SportsPro.Administration.TechnicianIncidentSummary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="container">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Select a technician:"
                CssClass="col-xs-4 col-sm-offset-1 col-sm-2 control-label"></asp:Label>
            <div class="col-xs-6 col-sm-4">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1"
                    DataTextField="Name" DataValueField="TechID" AutoPostBack="true"
                    CssClass="form-control">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
                    OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetAllTechnicians"
                    TypeName="SportsPro.Models.TechnicianDB"></asp:ObjectDataSource>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server"
                    CssClass="table table-bordered table-condensed table-striped"
                    OnPreRender="GridView1_PreRender" DataSourceID="ObjectDataSource2">
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetOpenTechIncidents" TypeName="SportsPro.Models.IncidentDB">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1"
                            PropertyName="SelectedValue" Name="techID" Type="Int32"></asp:ControlParameter>
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
</asp:Content>

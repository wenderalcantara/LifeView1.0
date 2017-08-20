<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Gestor.Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/User_Controls/Detalhes.ascx" TagName="Detalhes"  TagPrefix="uc" %>
<%@ Register Src="~/User_Controls/Pesquisa.ascx" TagName="Pesquisa"  TagPrefix="up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:100%;height:100%;display:block;position:absolute;margin-top:-5px;">
        <asp:Label ID="lblCustomHome" runat="server" Text=""></asp:Label>
    </div> 

</asp:Content>

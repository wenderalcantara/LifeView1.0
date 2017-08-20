<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Gestor.Default" %>

<%@ Register Src="~/User_Controls/Escala.ascx" TagName="Escala" TagPrefix="ec" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        
    </h2>
    <div class="row">                           
        <div class="wrapper-map col-md-9">
            <asp:Label ID="lblCustomDefault" runat="server" Text=""></asp:Label>
         </div>
        <div class="alerts-dashboard col-md-3">
            <h2>Avisos</h2>
            
            <ajaxToolkit:Accordion ID="PainelAvisos" runat="server" SelectedIndex="0" HeaderCssClass="avisosHeader"
                HeaderSelectedCssClass="avisosHeaderSelected" ContentCssClass="avisosContent" AutoSize="None"
                FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40" RequireOpenedPane="false" SuppressHeaderPostbacks="true">
                <Panes>                                            
                </Panes>            
                <HeaderTemplate>...</HeaderTemplate>
                <ContentTemplate>...</ContentTemplate>
            </ajaxToolkit:Accordion>
        </div>
    </div>       
</asp:Content>

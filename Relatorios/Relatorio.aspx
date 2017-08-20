<%@ Page Title="" Language="C#" MasterPageFile="~/Report.Master" AutoEventWireup="true" CodeBehind="Relatorio.aspx.cs" 
Inherits="Gestor.Relatorios.Relatorio" EnableViewState="True" ViewStateMode="Enabled" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/User_Controls/Lockup.ascx" TagName="Lockup"  TagPrefix="uc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" >
    <ContentTemplate>
    <asp:Panel ID="pnlDados" CssClass="content_detalhe"  runat="server"  >
    <div class="content_detalhe">
        <div id="title" class="content_title" >        
            <asp:Label ID="lbltitulo" runat="server" Text="Parâmetros do Relatório: "></asp:Label>
        </div>
        <div class="content"> 
            <asp:UpdatePanel ID="pnlContent" runat="server" UpdateMode="Conditional" >
                <ContentTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <asp:Panel ID="Panel1" runat="server">
                    
                        <uc:Lockup ID="LokupParam" NOMETABELA="ZTABELAS" runat="server"  />
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        
        <div class="botoes">
            <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false"  
              EnableClientScript="true"
        HeaderText = "Os seguintes parâmetros não foram preenchimentos: "  ValidationGroup="Report" />  --%>                             
            <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" CssClass="btn btn-primary" onclick="btnConfirmar_Click" ValidationGroup="Report" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary"   />       
        </div>                
    </div>
</asp:Panel> 
<asp:ModalPopupExtender ID="mpeParametros" runat="server" TargetControlID="lbltitulo"  
PopupControlID="pnlDados" Drag="True" DropShadow="True"  BackgroundCssClass="fundo_modal"
PopupDragHandleControlID="title" CancelControlID="btnCancelar"  X="100" Y="100"   >
</asp:ModalPopupExtender>
</ContentTemplate>
</asp:UpdatePanel>

 <asp:UpdatePanel ID="upReport" runat="server" UpdateMode="Conditional" >
    <ContentTemplate>
       
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="800PX" Width="100%">
        
       
        </rsweb:ReportViewer>
                   
    </ContentTemplate>
</asp:UpdatePanel>   
    
</asp:Content>

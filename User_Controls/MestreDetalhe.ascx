<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MestreDetalhe.ascx.cs" Inherits="Gestor.User_Controls.MestreDetalhe" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Src="~/User_Controls/Detalhes.ascx" TagName="Detalhes" TagPrefix="uc" %>


<div class="content_title">
    <asp:Label ID="lbl_Titulo" runat="server" Text=""></asp:Label>
</div>
<asp:Panel ID="pnlGeral" runat="server" CssClass="content_geral">
<asp:UpdatePanel ID="pnlContent" runat="server" UpdateMode="Conditional" >
    <ContentTemplate></ContentTemplate>
</asp:UpdatePanel>    

<uc:Detalhes ID="CadDetalhe" runat="server" Visible="true" Tabela="zcampos" Titulo="Campos" />   
<%--<div class="content_title">
    <asp:Label ID="lbl_TituloDetalhe" runat="server" Text=""></asp:Label>
</div> 
<asp:UpdatePanel ID="pnlContentDetalhe" runat="server" UpdateMode="Conditional" >
    <ContentTemplate></ContentTemplate>
</asp:UpdatePanel>
<div class="botoes">
    <asp:Button ID="btnSalvarDetalhe" runat="server" Text="Salvar" CssClass="btn btn-primary" />
    <asp:Button ID="btnNovoDetalhe" runat="server" Text="Novo" CssClass="btn btn-primary" />
    <asp:Button ID="btnCancelarDetalhe" runat="server" Text="Cancelar" CssClass="btn btn-primary"  />        
</div>--%>
<%--<asp:Panel ID="Panel1" runat="server" >
    <div class="content_title">
        <asp:Label ID="Label3" runat="server" Text="Exclusão"></asp:Label>
    </div>
    <div class="modal">
        <asp:Label ID="Label4" CssClass="texto_modal" runat="server" 
        Text="Confirmar a exclusão do registro?"></asp:Label>
        <asp:Button ID="Button4" runat="server" Text="Sim" CssClass="btn btn-primary" />
        <asp:Button ID="Button5" runat="server" Text="Não" CssClass="btn btn-primary"   />
    </div>
</asp:Panel>   
<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnExcluir"  
PopupControlID="pnlExcluir">
</asp:ModalPopupExtender>--%>



<div class="">
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn btn-primary" />
    <asp:Button ID="btnNovo" runat="server" Text="Novo" CssClass="btn btn-primary" />
    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CssClass="btn btn-primary"  />        
</div>
<asp:Panel ID="pnlExcluir" runat="server" >
    <div class="content_title">
        <asp:Label ID="Label2" runat="server" Text="Exclusão"></asp:Label>
    </div>
    <div class="modal">
        <asp:Label ID="lbl_mensagem" CssClass="texto_modal" runat="server" 
        Text="Confirmar a exclusão do registro?"></asp:Label>
        <asp:Button ID="btnSim" runat="server" Text="Sim" CssClass="btn btn-primary" />
        <asp:Button ID="btnNão" runat="server" Text="Não" CssClass="btn btn-primary"   />
    </div>
</asp:Panel>   
<asp:ModalPopupExtender ID="mpeEcluir" runat="server" TargetControlID="btnExcluir"  
PopupControlID="pnlExcluir">
</asp:ModalPopupExtender>
</asp:Panel>
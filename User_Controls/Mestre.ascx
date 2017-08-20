<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Mestre.ascx.cs" Inherits="Gestor.User_Controls.Mestre" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Panel ID="pnlCadastro" CssClass="content_mestre" runat="server"> 
    <asp:Label ID="lbl_Titulo" runat="server" Text=""></asp:Label>  
<%--<div class="content_title" style="padding:25px 0px 10px 0px;">
    
    <div style="width:95%;float:left;text-align:center;left:10px;vertical-align:middle;height:auto;line-height:25px">    
        <asp:Label ID="lbl_Titulo" runat="server" Text=""></asp:Label>
    </div>
    <div style="text-align:right">
        <asp:ImageButton ID="imgFecharMestre" ImageUrl="~/imagens/close.png" Width="25px" runat="server" />           
    </div>
</div> --%>
<div style="">
<asp:UpdatePanel ID="UpCadastroMestre" runat="server" UpdateMode="Conditional" >
    <ContentTemplate></ContentTemplate>
</asp:UpdatePanel>
    </div> 
<div class="botoes" style="margin-top:10px;">
    <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" ValidationGroup="salvarMestre" Text="Enviar" CssClass="btn btn-primary 
        g-recaptcha" data-sitekey="6Ldf4ysUAAAAADZVYBbCPTGm5FOiNEht_MjS5P_n" data-callback="YourOnSubmitFn" />
    <asp:Button ID="imgFecharMestre"  runat="server" Text="Cancelar" CssClass="btn btn-primary" />  
    <%--<asp:Button ID="btnNovo" runat="server" Text="Novo" CssClass="btn btn-primary" />
    <asp:Button ID="btnExcluir" runat="server" Text="Cancelar" CssClass="btn btn-primary"  />--%>        
</div>
<%--<asp:Panel ID="pnlExcluir" runat="server" >
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
--%>

</asp:Panel>

<asp:ModalPopupExtender ID="mpeCadastro" runat="server" TargetControlID="lbl_Titulo" 
PopupControlID="pnlCadastro" CancelControlID="imgFecharMestre" Drag="True" DropShadow="True" 
    BackgroundCssClass="fundo_modal">
</asp:ModalPopupExtender> 
<%--<asp:ModalPopupExtender ID="mpeDadosDetalhes" runat="server" TargetControlID="lbl_tituloDetalhe"  
PopupControlID="pnlDadosDetalhes"  Drag="True" DropShadow="True"  BackgroundCssClass="fundo_modal"
PopupDragHandleControlID="title" CancelControlID="imgFechar"  X="0"  Y="0" >
</asp:ModalPopupExtender>--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.ascx.cs" 
Inherits="Gestor.User_Controls.Detalhes" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Panel ID="pnlDadosDetalhes" CssClass="content_detalhe"   runat="server"  >
    <div class="content_detalhe">
        <div id="title" class="content_title" >                    
            <div style="width:95%;float:left;text-align:center;left:10px;vertical-align:middle;height:auto;line-height:25px">    
                <asp:Label ID="lbl_tituloDetalhe" runat="server" Text="DETALHE"></asp:Label>
            </div>
            <div style="text-align:right">
                <asp:ImageButton ID="imgFechar" ImageUrl="~/imagens/close.png" Width="25px" runat="server" />           
            </div>
        </div>
        <div class="content"> 
            <asp:UpdatePanel ID="pnlContentDetalhe" runat="server" UpdateMode="Conditional" >
                <ContentTemplate>
                
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        
        <div class="botoes">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false"  
              EnableClientScript="true"
        HeaderText = "Os seguintes campos são de preenchimento obrigatórios: "  ValidationGroup="salvarDetalhe" />
            <asp:Panel runat="server" ID="pnlBotes">
                <asp:Button ID="btnSalvarDetalhe" runat="server" Text="Salvar" CssClass="btn btn-primary" 
                onclick="btnSalvarDetalhe_Click" ValidationGroup="salvarDetalhe" />                    
                <asp:Button ID="btnExcluirDetalhe" runat="server" Text="Excluir" CssClass="btn btn-primary"  OnClick="btnExcluirDetalhe_Click"/>
                <asp:Button ID="btnCancelarDetalhe" runat="server" Text="Cancelar" CssClass="btn btn-primary"  />        
            </asp:Panel>
        </div>                
    </div>
</asp:Panel>          
<asp:ModalPopupExtender ID="mpeDadosDetalhes" runat="server" TargetControlID="lbl_tituloDetalhe"  
PopupControlID="pnlDadosDetalhes"  Drag="True" DropShadow="True"  BackgroundCssClass="fundo_modal"
PopupDragHandleControlID="title" CancelControlID="imgFechar"  X="0"  Y="0" >
</asp:ModalPopupExtender>
          
<asp:Panel ID="pnlExcluirDetalhe" runat="server"  >
    <div class="content_title_Msg">
        <asp:Label ID="Labelex" runat="server" Text="Exclusão"></asp:Label>
    </div>
    <div class="modalGestor">
        <asp:Label ID="lbl_mensagemEx" CssClass="texto_modal" runat="server" 
        Text="Confirmar a exclusão do registro?"></asp:Label>
        <asp:Button ID="btnSimDetalhe" runat="server" Text="Sim" CssClass="btn btn-primary" OnClick="btnExcluirSim_Click" />
        <asp:Button ID="btnNaoDetalhe" runat="server" Text="Não" CssClass="btn btn-primary"   />
    </div>
</asp:Panel>   
<asp:ModalPopupExtender ID="mpeEcluirDetalhe" runat="server" TargetControlID="btnExcluirDetalhe"  
CancelControlID="btnNaoDetalhe" BackgroundCssClass="progressModalBackground"  
PopupControlID="pnlExcluirDetalhe" Drag="True" DropShadow="True" >
</asp:ModalPopupExtender> 
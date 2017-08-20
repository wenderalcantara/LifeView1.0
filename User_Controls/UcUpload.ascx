<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcUpload.ascx.cs" Inherits="Gestor.User_Controls.UcUpload" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<script type="text/javascript">
    function OnClientUploadComplete() {
        alert("upload completo");
    }
    function showUploadError(sender, args) {
        alert("Erro ao garregar o arquivo! Tamanho Máximo (1MB).");
    }
    </script>
<asp:Panel ID="pnlUpload" CssClass="content_up"   runat="server"  >
    <div class="content_up">
        <div id="title" class="content_title" >        
            <asp:Label ID="lbl_tituloUP" runat="server" Text="Upload"></asp:Label>
        </div>
        <div class="content" style="Height:100px;padding-top:50px;"> 
            <asp:UpdatePanel ID="pnlContentUp"  runat="server" UpdateMode="Conditional" >
                <ContentTemplate>
                    <ajaxToolkit:AsyncFileUpload ID="UpFile" UploaderStyle="Modern" OnUploadedComplete="UpFile_UploadedCompleteFile" 
                     CompleteBackColor="Lime" ErrorBackColor="Red" UploadingBackColor="DodgerBlue" 
                     Width="400px" ThrobberID="imgLoading" CssClass="valor" runat="server" 
                        onuploadedfileerror="UpFile_UploadedFileError" />
                    <asp:Label ID="lblAviso" runat="server" Text=""></asp:Label>
                    <div style="z-index:9999999;">
                    <asp:Image ID="imgLoading" ImageUrl="~/imagens/loading.gif" runat="server" />
                    </div> 
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        
        <div class="botoes">
            <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false"  
              EnableClientScript="true"
        HeaderText = "Os seguintes campos são de preenchimento obrigatórios: "  ValidationGroup="salvarDetalhe" />
            <asp:Button ID="btnSalvarDetalhe" runat="server" Text="Salvar" CssClass="botao" 
            onclick="btnSalvarDetalhe_Click" ValidationGroup="salvarDetalhe" />                    
            <asp:Button ID="btnExcluirDetalhe" runat="server" Text="Excluir" CssClass="botao"  OnClick="btnExcluirDetalhe_Click"/>--%>
            <asp:Button ID="btnConcluido" OnClick="btntConcluido_Click" runat="server" Text="Concluido" CssClass="botao"  />        
        </div>                
    </div>
</asp:Panel>          
<asp:ModalPopupExtender ID="mpeUpload" runat="server" TargetControlID="lbl_tituloUP"  
    PopupControlID="pnlUpload" Drag="True" DropShadow="True"  BackgroundCssClass="fundo_modal"
    PopupDragHandleControlID="title"  CancelControlID=""  X="100" Y="100"   >
</asp:ModalPopupExtender>
          


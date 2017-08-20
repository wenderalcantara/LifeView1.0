<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RetornoRemessa.aspx.cs" Inherits="Gestor.Trans_Bancaria.RetornoRemessa" %>
<%@ Register Assembly="Boleto.Net" Namespace="BoletoNet" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<%--    <asp:UpdatePanel ID="UpCadastro" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
        <ContentTemplate>--%>
            <script type="text/javascript">
                function OnClientUploadComplete() {
                    alert("upload completo");
                }
                function showUploadError(sender, args) {
                    alert("Erro ao garregar o arquivo! Tamanho Máximo (1MB).");
                }
            </script>
            <asp:UpdatePanel ID="UpCadastro" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
            <ContentTemplate>
            <asp:Panel ID="pnlUpload" CssClass="content_up"   runat="server"  >        
            <div class="content_up">
                <div id="title" class="content_title" >        
                    <asp:Label ID="lbl_tituloUP" runat="server" Text="Upload"></asp:Label>
                </div>
                <div class="content" style="Height:100px;padding-top:50px;"> 
 
                    <ajaxToolkit:AsyncFileUpload ID="UpFile" UploaderStyle="Modern" OnUploadedComplete="UpFile_UploadedComplete" 
                        CompleteBackColor="Lime" ErrorBackColor="Red" UploadingBackColor="DodgerBlue" OnClientUploadError="showUploadError" 
                        ThrobberID="imgLoading" CssClass="valor" runat="server" 
                        onuploadedfileerror="UpFile_UploadedFileError" />
                    <asp:Label ID="lblAviso" runat="server" Text="Tamanho Máximo (1MB)."></asp:Label> 
                    <asp:Image ID="imgLoading" ImageUrl="~/imagens/loading.gif" runat="server" />
                    
                        
                </div>
        
                <div class="botoes">
                    <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false"  
                      EnableClientScript="true"
                HeaderText = "Os seguintes campos são de preenchimento obrigatórios: "  ValidationGroup="salvarDetalhe" />
                    <asp:Button ID="btnSalvarDetalhe" runat="server" Text="Salvar" CssClass="btn btn-primary" 
                    onclick="btnSalvarDetalhe_Click" ValidationGroup="salvarDetalhe" />                    
                    <asp:Button ID="btnExcluirDetalhe" runat="server" Text="Excluir" CssClass="btn btn-primary"  OnClick="btnExcluirDetalhe_Click"/>--%>
                    <asp:Button ID="btnConcluido" OnClick="btntConcluido_Click" runat="server" Text="Processar Arquivo" CssClass="btn btn-primary"  />        
                </div>
                <div>
                    <asp:Label ID="lbRetorno" runat="server" Font-Bold="true" Text="Registros Processados:"></asp:Label>
                    
                    <asp:ListView ID="ListaRetorno" runat="server">
                        <LayoutTemplate>
                            <ul>
                                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                            </ul>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <li>
                                <%--<div style="border-style:solid;float:left;">--%>
                                    <asp:Label ID="lblName" runat="server" Font-Bold="true" Text="NOSSONUMERO: "></asp:Label>
                                    <asp:Label ID="Label5" runat="server" Text=""><%# Eval("NOSSONUMERO")%></asp:Label>
                                                                
                                    <asp:Label ID="Label4" runat="server" Font-Bold="true" Text=" VENCIMENTO: "></asp:Label>
                                    <asp:Label ID="Label6" runat="server" Text=""><%# Eval("VENCIMENTO")%></asp:Label>
                                                               
                                    <asp:Label ID="Label1" runat="server" Font-Bold="true" Text=" VALOR: "></asp:Label>
                                    <asp:Label ID="Label7" runat="server" Text=""><%# Eval("VALORPAGO")%></asp:Label>
                                                              
                                    <asp:Label ID="Label3" runat="server" Font-Bold="true" Text=" DATA CRÉDITO: "></asp:Label>
                                    <asp:Label ID="Label8" runat="server" Text=""><%# Eval("DATAPAGAMENTO")%></asp:Label>
                                                                
                                    <asp:Label ID="Label2" runat="server" Font-Bold="true" Text=" STATUS: "><%# Eval("STATUS")%></asp:Label>
                                    <asp:Label ID="Label9" runat="server" Text=""><%# Eval("STATUS")%></asp:Label>
                                
                            </li>
                        </ItemTemplate>
                        
                    </asp:ListView>
                    
                </div>                
            </div>
        </asp:Panel>

    
        </ContentTemplate>
    </asp:UpdatePanel>
    
    
</asp:Content>


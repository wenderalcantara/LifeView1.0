<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LembrarSenha.ascx.cs" Inherits="Gestor.User_Controls.LembrarSenha" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Panel ID="pnlCadastro" Width="600px" CssClass="content_detalhe" runat="server">
    <div class="content_title">                                                
        <div style="width:95%;float:left;text-align:center;left:10px;vertical-align:middle;height:auto;line-height:25px">    
            <asp:Label ID="lbl_Titulo" runat="server" Text="Lembrar Senha"></asp:Label>
        </div>
        <div style="text-align:right">            
            <asp:ImageButton ID="imgFechar" ImageUrl="~/imagens/close.png" Width="25px" runat="server" />            
        </div>
    </div> 
    
   
    <div >
        <asp:Label ID="Label2"  runat="server" Text="E-mail" CssClass="descricaoPesquisa"></asp:Label>
        <asp:TextBox ID="txtEmail" ValidationGroup="Enviar" Width="400px" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator runat="server" ID="reqCpfCnpj"  ControlToValidate="txtEmail" Text="*"
         ValidationGroup="Enviar" ForeColor="Red" Font-Bold="True" ErrorMessage="Informe o E-mail" />
    </div>
     
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false"  EnableClientScript="true"
        HeaderText = "Os seguintes campos são de preenchimento obrigatórios: "  ValidationGroup="Enviar" /> 
    <div style="display:block;position:static;height: auto; text-align:center;top:5px; padding:9px 5px 5px 5px;">
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="btn btn-primary" 
             ValidationGroup="Enviar" onclick="btnEnviar_Click" />            
    </div>    
    
</asp:Panel>

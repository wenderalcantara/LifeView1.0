<%@ Page Title="LOGIN" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" 
CodeBehind="Login.aspx.cs" Inherits="Gestor.Login" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/User_Controls/LembrarSenha.ascx" TagName="LembrarSenha"  TagPrefix="uc" %>
<%@ Register Src="~/User_Controls/Mestre.ascx" TagName="Cadastro"  TagPrefix="cad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent"> 
    <div class="main" style="height:100%;" >         
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate> 
                <%--<asp:LinkButton ID="LinkButton2" CssClass="Link_button" PostBackUrl="~/Home.aspx" runat="server">HOME</asp:LinkButton>--%>
                <asp:Label ID="Label3" runat="server" Text="">  </asp:Label>  
                                                     
                <div id="wrapper-login" class="container" style="height:100%;margin-top:50px;">
                    <div class="col-md-4 col-md-offset-4 logoSis">
                        <img id="imgLogo" runat="server" class=".img-responsive" src="" alt="" />
                    </div>
                    <div class="col-md-4 col-md-offset-4">
                        <asp:Login ID="LoginUser" runat="server" onauthenticate="LoginUser_Authenticate" FailureText="Usuário ou senha inválidos. Por favor, tente novamente." LoginButtonText="Logar" PasswordLabelText="Senha:" PasswordRequiredErrorMessage="Informe a senha!." RememberMeText="Lembrar acesso." TitleText="Dados de Acesso" UserNameLabelText="Usuário:" UserNameRequiredErrorMessage="Informe o usuário:">
                            <LayoutTemplate>
                                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;" >
                                    <tr>
                                        <td>
                                            <table cellpadding="0" class="body-login">
                                                <tr>
                                                    <td align="center" colspan="2" class="header-login">Insira os dados de acesso</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" class="error-login">
                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label-login">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Usuário:</asp:Label>
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Senha:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Informe o usuário:" ToolTip="Informe o usuário:" ValidationGroup="LoginUser" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" onkeydown ="if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {document.getElementById('MainContent_LoginUser_LoginButton').click();return false;}} else {return true}; "></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Informe a senha!." ToolTip="Informe a senha!." ValidationGroup="LoginUser" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <%--<tr>
                                                    <td colspan="2" class="remember-me">                                                        
                                                        <div style="text-align:center;">
                                                            <asp:LinkButton ID="lnkLembrarSenha" runat="server" 
                                                        onclick="lnkLembrarSenha_Click">LEMBRAR SENHA</asp:LinkButton>
                                                        </div>                                                        
                                                    </td>

                                                </tr>--%>
                                                <tr>
                                                    <td colspan="2" class="btn-login">
                                                        <asp:Button ID="LoginButton"  CssClass="btn btn-primary" runat="server" CommandName="Login" Text="Entrar" ValidationGroup="LoginUser" OnClientClick=";" />
                                                        <asp:Button ID="btnLembrar"  CssClass="btn btn-primary" runat="server"  Text="Lembrar Senha" onclick="lnkLembrarSenha_Click" />
                                                        <asp:Button ID="btnCadastro" CssClass="btn btn-primary" runat="server" Visible="false"   Text="Cadastrar" OnClick="lnkCriarConta_Click" />  
                                                        
                                                        <%--g-recaptcha" data-sitekey="6Ldf4ysUAAAAADZVYBbCPTGm5FOiNEht_MjS5P_n"
                                                            data-callback="OnSubmit--%>                                                      
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>                    
                            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />           
                        </asp:Login>
                    </div>
                </div>
                <div>
                    
                    <%--</ContentTemplate>
        </asp:UpdatePanel> 
                    <asp:UpdatePanel ID="upHeader" UpdateMode="Conditional" runat="server">
            <ContentTemplate>--%>  
                                
                <asp:Panel ID="pnlLembrar"  runat="server">                    
                    <uc:LembrarSenha runat="server" Visible="false" ID="ucLembrarSenha" />                                       
                </asp:Panel>        
                <asp:ModalPopupExtender ID="mpeLembrar" runat="server" TargetControlID="Label3" 
                PopupControlID="pnlLembrar" Drag="True" DropShadow="True" BackgroundCssClass="fundo_modal">
                </asp:ModalPopupExtender> 
                </div>
                <div>
                <%--<asp:Panel ID="pnlCadastro" CssClass="content_detalhe" runat="server"> --%> 
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>                                          
                <cad:Cadastro Visible="false"  runat="server" ID="CadastroUser" />  
                </ContentTemplate>    
                </asp:UpdatePanel>                                 
                <%--</asp:Panel>                            
                <asp:ModalPopupExtender ID="mpeCadastro" runat="server" TargetControlID="Label3" 
                PopupControlID="pnlCadastro" Drag="True" DropShadow="True" BackgroundCssClass="fundo_modal">
                </asp:ModalPopupExtender>--%>
                    </div>
            </ContentTemplate>
        </asp:UpdatePanel>                      
    </div>
</asp:Content>

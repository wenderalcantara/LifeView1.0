<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="CadPublic.aspx.cs" Inherits="Gestor.CadPublic" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/User_Controls/LembrarSenha.ascx" TagName="LembrarSenha"  TagPrefix="uc" %>
<%@ Register Src="~/User_Controls/Mestre.ascx" TagName="Cadastro"  TagPrefix="cad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main" style="height:90% !important;width:80%;left:10%;" >         
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="pnlCadastro" CssClass="content_detalhe" runat="server">                                        
                    <div class="content_title">    
                        <div style="width:95%;float:left;text-align:center;left:10px;vertical-align:middle;height:auto;line-height:25px">    
                            <asp:Label ID="lbl_Titulo" runat="server" Text=""></asp:Label>
                        </div>                        
                    </div> 

                    <asp:UpdatePanel ID="pnlContent" runat="server" UpdateMode="Conditional" >
                        <ContentTemplate></ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="botoes">
                        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" ValidationGroup="salvarMestre" Text="Enviar" CssClass="btn btn-primary" />
                                
                    </div>                                       
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

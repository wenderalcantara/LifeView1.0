<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" ValidateRequest="false" EnableEventValidation="true"   AutoEventWireup="true" CodeBehind="TesteWs.aspx.cs" Inherits="Gestor.TesteWs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpGeral" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <asp:UpdatePanel ID="upResultado" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Panel ID="pnlHelpGrid" runat="server" >
                                <div class="content_title_Msg">                            
                                    <div style="width:90%;float:left;text-align:center;left:10px;vertical-align:middle;height:auto;line-height:25px">    
                                        <asp:Label ID="Label1" runat="server" Text="Help"></asp:Label>
                                    </div>
                                    <div style="text-align:right">
                                        <asp:ImageButton ID="imgFechar" ImageUrl="~/imagens/close.png" Width="25px" runat="server" />           
                                    </div>
                                </div>
                                <div class="content_detalhe" style="min-width:800px;min-height:400px;padding:10px">
                                    <asp:Panel ID="pnlConteudoHelpGrid" runat="server" >
                                        <asp:Label ID="lblHelp" runat="server" 
                                    Text="teste Help....."></asp:Label>    
                                    </asp:Panel>                        
                                </div>
                            </asp:Panel>   
                            <asp:ModalPopupExtender ID="mpeHelpGrid" runat="server" TargetControlID="btnHelp"  
                            PopupControlID="pnlHelpGrid" Drag="True" CancelControlID="imgFechar"  DropShadow="True" BackgroundCssClass="fundo_modal">
                            </asp:ModalPopupExtender>                   
        
                            <div class="content_title">
                                <asp:Button ID="btnHelp" runat="server" Text="?"/>
                                <asp:Label ID="lbl_Titulo" runat="server" Text="TITULO"></asp:Label>
                                <asp:Label ID="lbl_tituloFiltro" runat="server" Text=" - REGISTROS GRAVADOS"></asp:Label>                    
                            </div>                
                            <div class="content_geral">
                                <div class="Campos">
                                    <asp:Label ID="Label2" runat="server" CssClass="descricao" Text="Endereço"></asp:Label>
                                    <asp:TextBox ID="txtEndereco" CssClass="valor" Width="500px" runat="server"></asp:TextBox>                                    
                                </div>  
                                <div class="Campos">
                                    <asp:Label ID="Label3" runat="server" CssClass="descricao" Text="Metodo"></asp:Label>
                                    <asp:TextBox ID="txtMetodo" CssClass="valor" Width="300px" runat="server"></asp:TextBox>                                    
                                </div>
                                <br />                                
                                <div class="Campos">
                                    <asp:Label ID="Label5" runat="server"  CssClass="descricao" Text="Xml"></asp:Label>
                                    <asp:TextBox ID="txtXml"  CssClass="valor" ValidationGroup="sts" CausesValidation="false"  Width="800px" Height="300" runat="server" TextMode="MultiLine"></asp:TextBox>                                                                        
                                </div> 
                                <br />
                                <div class="Campos">
                                    <asp:Label ID="Label4" runat="server" CssClass="descricao" Text="Resultado"></asp:Label>
                                    <asp:TextBox ID="txtResult" CssClass="valor" Width="800px" Height="300" runat="server" TextMode="MultiLine"></asp:TextBox>                                    
                                </div> 
                                <div class="wrapper-botao">                
                                    <asp:Button ID="btnInvocar" CausesValidation="false"  ValidationGroup="tst" runat="server" Text="Invocar" OnClick="btnInvocar_Click" CssClass="btn btn-primary" />                                                  
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>          
            </div>             
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

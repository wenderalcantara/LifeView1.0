<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mail.aspx.cs" Inherits="Gestor.Mail" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">        
    <asp:UpdatePanel ID="upMail" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
        <ContentTemplate>
            <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="Server" TargetControlID="pnlCadastro"
                CollapsedSize="0"  Collapsed="false" ExpandControlID="btnMinCadastro"
                CollapseControlID="btnMinCadastro" AutoCollapse="False"    AutoExpand="False"
                ScrollContents="false" ExpandDirection="Vertical"/>                                                     
            <div class="content_title">                                  
                <asp:Button ID="btnMinCadastro" runat="server" Text="-"/>    
                <asp:Label ID="lbl_Titulo" runat="server" Text="TITULO"></asp:Label>
            </div> 
            <div class="content_geral"> 
                <asp:Panel ID="pnlCadastro" runat="server">            
                    <asp:UpdatePanel ID="upcontet" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">       
                        <ContentTemplate>
                            <asp:Label ID="Label1" runat="server" Width="100px"  Text="Destinatário:"></asp:Label>
                            <asp:TextBox ID="txtDestinatario" runat="server"  Width="50%"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" runat="server" Width="100px"  Text="Cópia:"></asp:Label>
                            <asp:TextBox ID="txtCopia" runat="server"  Width="50%"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" Width="100px"  Text="assunto:"></asp:Label>
                            <asp:TextBox ID="txtAssunto" runat="server"  Width="50%"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Mensagem"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtMensagem" runat="server" TextMode="MultiLine" Width="90%" Height="300px"></asp:TextBox>
                        </ContentTemplate>            
                    </asp:UpdatePanel>      
                    <div style="display:block;position:static;height: auto; text-align:center;padding:9px 0px 0px 0px;">
                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="btn btn-primary" 
                        onclick="btnEnviar_Click" ValidationGroup="Enviar" />            
                    </div>    
                </asp:Panel>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>   
</asp:Content>

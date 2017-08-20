<%@ Page Language="C#" MasterPageFile="~/Report.Master" AutoEventWireup="true" CodeBehind="BolCaixa.aspx.cs" Inherits="Gestor.BolCaixa" %>
<%@ Register Assembly="Boleto.Net" Namespace="BoletoNet" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:Panel ID="pnlBoletos" runat="server">
    <asp:Label ID="lblBalanco" runat="server"></asp:Label>
    </asp:Panel>--%>
     
 <asp:UpdatePanel ID="upReport" runat="server" UpdateMode="Conditional" >
    <ContentTemplate>
       
       <div style="z-index:990; margin-left:20px;margin-top:10px; margin-bottom:0px;">
            
            <input type="button" name="imprimir" value="Imprimir Boleto(s)" onclick="this.style.display = 'none';window.print();this.style.display = 'block';">
            <asp:Panel  ID="pnlBoletos" runat="server" >                
            </asp:Panel> 
             </div>       
       </div>       
    </ContentTemplate>
</asp:UpdatePanel>  
</asp:Content>


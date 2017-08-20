<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BarraFerramentas.ascx.cs" Inherits="Gestor.User_Controls.BarraFerramentas" %>

<div class="wrapper-botao">
    <asp:TextBox ID="txtPesquisa"  Width="50%" 
        onkeydown ="if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {$('#MainContent_UcBarraFerramenta_btnPesquisar').click();return false;}} else {return true}; " runat="server"  ></asp:TextBox>                             
    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" CssClass="btn btn-primary" /> 
    <asp:Button ID="btnFiltro" runat="server" Text="Filtro Avançado" OnClick="btnFiltro_Click"  CssClass="btn btn-primary" />
    <asp:Button ID="btnLimpar" runat="server" Text="Limpar Filtro" OnClick="btnLimpar_Click"  CssClass="btn btn-primary" />
    <asp:Button ID="btnExportar" runat="server" Text="Exportar excel" 
    OnClick="btnExportar_Click" CssClass="btn btn-primary"  PostBackUrl="" />                            
    <asp:Button ID="btnNovoMestre" runat="server" Text="Novo" CssClass="btn btn-primary"  onclick="btnNovo_Click" />
</div>

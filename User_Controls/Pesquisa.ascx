<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="True" ViewStateMode="Enabled" CodeBehind="Pesquisa.ascx.cs" 
Inherits="Gestor.User_Controls.Pesquisa" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/User_Controls/Detalhes.ascx" TagName="Detalhes"  TagPrefix="uc" %>
<asp:Panel ID="pnlContentPesquisa" CssClass="content_pesquisa"  runat="server"  >
                                  
    <div id="title" class="content_title">
        <div style="width:95%;float:left;text-align:center;left:10px;vertical-align:middle;height:auto;line-height:25px">    
            <asp:Label ID="lblTituloPesquisa" runat="server" Text="PESQUISA"></asp:Label>
        </div>
        <div style="text-align:right">
            <asp:ImageButton ID="imgFechar" ImageUrl="~/imagens/close2.png" Width="25px" runat="server" />
            <%--<asp:Button ID="btnFechar" runat="server" Text="X"    /> --%> 
        </div>
    </div>
    <div class="content_geral"> 
    <asp:Panel ID="pnlPesquisaFiltro"  runat="server">
    
    <asp:UpdatePanel ID="upPesquisa" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
        <ContentTemplate>
                              
        </ContentTemplate>            
    </asp:UpdatePanel>
    <div style="display:block;position:static;height: auto; text-align:center;padding:9px 0px 0px 0px;">
        <asp:Button ID="btnPesquisa" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" CssClass="btn btn-primary" />              
    </div>
    </asp:Panel>
    <div></div>
    <asp:UpdatePanel ID="upCadastro" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
        <ContentTemplate>
        <uc:Detalhes ID="ucDetalhe" runat="server"  />                      
        </ContentTemplate>            
    </asp:UpdatePanel>
    <%--<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="lblTituloPesquisa"  
    PopupControlID="pnlDetalhe" CancelControlID="imgFechar"   Drag="True" DropShadow="True" BackgroundCssClass="fundo_modal">
    </asp:ModalPopupExtender> --%>
    </div>

    <asp:UpdatePanel ID="upResultado" runat="server" Visible="false" UpdateMode="Conditional">
        <ContentTemplate>
        
        <div class="content_title">            
            <asp:Label ID="lbl_tituloFiltro" runat="server" Text="RESULTADO"></asp:Label>
        </div>
        <div class="content_geral">                                                
            <asp:Panel ID="pnlresuldado" runat="server" ScrollBars="Auto" >                   
                <asp:SqlDataSource ID="dsResultado" runat="server" ProviderName="System.Data.SqlClient" />            
                <asp:GridView ID="gvDados" runat="server" BackColor="White" Width="100%"
                        BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                        GridLines="Vertical" AllowSorting="True"  DataKeyNames="COD" DataSourceID="dsResultado"
                        onselectedindexchanged="gvDados_SelectedIndexChanged"  AllowPaging="true"
                            AlternatingRowStyle-HorizontalAlign="Left" HorizontalAlign="Center" 
                            RowStyle-HorizontalAlign="Left" BorderStyle="None" >
                <AlternatingRowStyle BackColor="White"  Width="50px" />
                <Columns>                              
                    <asp:TemplateField HeaderText="VISUALIZAR">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ID="imbSelect" Width="20px" ImageUrl="~/imagens/lupa.png"
                                CssClass="selectButton" CommandName="Select" CausesValidation="false" />
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        
                    </asp:TemplateField>                                                        
                </Columns>
                <EmptyDataTemplate>
                    <asp:Label runat="server" ID="lblNoResults" Text="Nenhuma informação encontrada." />
                </EmptyDataTemplate>            
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#154e69" Font-Bold="True" ForeColor="White" Font-Size="12px" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F7DE" Wrap="false" Font-Names="Helvetica Neue,Lucida Grande, Segoe UI, Arial, Helvetica, Verdana, sans-serif" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#424C96" ForeColor="White" Font-Bold="True" />    
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#55A377" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
                <PagerStyle Width="200px" />            
                </asp:GridView>
                <div style="display:block;position:static;height: auto; text-align:center;">
                    <asp:Button ID="btnExportar" runat="server" Text="Exportar excel" 
                    OnClick="btnExportar_Click" CssClass="btn btn-primary"  PostBackUrl="" />                            
                </div>
            </asp:Panel>            
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Panel>
<asp:ModalPopupExtender ID="mpePesquisa" runat="server" TargetControlID="lblTituloPesquisa"  
PopupControlID="pnlContentPesquisa" PopupDragHandleControlID="title"  RepositionMode="RepositionOnWindowResizeAndScroll" CancelControlID="imgFechar"   Drag="True" DropShadow="True" 
BackgroundCssClass="fundo_modal" X="0" Y="0" >
</asp:ModalPopupExtender> 
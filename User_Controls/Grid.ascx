<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Grid.ascx.cs" Inherits="Gestor.User_Controls.Grid" %>

 
<asp:SqlDataSource ID="dsDetalhe" runat="server" ProviderName="System.Data.SqlClient" />             
<asp:GridView ID="gvDetalhe" runat="server" BackColor="White" Width="100%"
    BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
    GridLines="Vertical" AllowSorting="True"  DataKeyNames="COD" DataSourceID="dsDetalhe"
    onselectedindexchanged="gvDetalhe_SelectedIndexChanged"  AllowPaging="true"
        AlternatingRowStyle-HorizontalAlign="Left" HorizontalAlign="Center" 
        RowStyle-HorizontalAlign="Left" BorderStyle="None" >
    <AlternatingRowStyle BackColor="White"/>
    <Columns>                
    <asp:TemplateField HeaderText="EDITAR">
        <ItemTemplate>
            <asp:ImageButton runat="server" ID="imbSelect" ImageUrl="~/imagens/botao_editar.png"
                CssClass="selectButton" CommandName="Select" CausesValidation="false" />
        </ItemTemplate>
        <ItemStyle Width="40px" />
    </asp:TemplateField>  
    <asp:TemplateField HeaderText="Excluir">
        <HeaderTemplate>
            <asp:ImageButton runat="server" ID="imbDelete" CausesValidation="false" ImageUrl="~/imagens/botao_excluir.png"
                CssClass="deleteButton" CommandName="Delete" OnClientClick="showConfirm(this); return false;"
                ToolTip="Excluir" OnClick="imbDelete_Click" />
        </HeaderTemplate>
        <ItemTemplate>
            <asp:CheckBox ID="chkExcluir" runat="server" />
        </ItemTemplate>
        <ItemStyle Width="40px" />
    </asp:TemplateField>                              
    </Columns>
    <EmptyDataTemplate>
        <asp:Label runat="server" ID="lblNoResultsDetalhe" Text="Nenhuma informação encontrada." />
    </EmptyDataTemplate>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#54A276" Font-Bold="True" ForeColor="White" Font-Size="12px" />
    <PagerStyle CssClass="pagination-table" BackColor="#990000" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F7DE" HorizontalAlign="Left" />
    <SelectedRowStyle BackColor="#424C96" ForeColor="White" Font-Bold="True" />    
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#55A377" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#575357" />
    <PagerStyle  Width="200px" />            
</asp:GridView>            
            

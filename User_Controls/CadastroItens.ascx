<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CadastroItens.ascx.cs" Inherits="Gestor.User_Controls.CadastroItens" %>

<asp:UpdatePanel ID="upcontet" runat="server" UpdateMode="Conditional">
    <ContentTemplate>        
        <asp:Panel ID="pnlContent" runat="server" >            
        </asp:Panel>        
    </ContentTemplate>        
</asp:UpdatePanel>
<asp:Panel ID="pnlresuldado" runat="server"   ScrollBars="Auto" >
    <asp:SqlDataSource ID="dsResultado" runat="server"               
        ProviderName="System.Data.SqlClient"
        SelectCommand=""
        UpdateCommand="" >
    </asp:SqlDataSource>
    <asp:GridView ID="gvDados" runat="server" BackColor="White" Width="100%"
        BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
        GridLines="Vertical" AllowSorting="True"  DataKeyNames="COD" DataSourceID="dsResultado"
        onselectedindexchanged="gvDados_SelectedIndexChanged" AllowPaging="true"
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
    </Columns>
    <EmptyDataTemplate>
        <asp:Label runat="server" ID="lblNoResults" Text="Nenhuma informação encontrada." 
            />
    </EmptyDataTemplate>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#54A276" Font-Bold="True" ForeColor="White" Font-Size="12px" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F7DE" HorizontalAlign="Left" />
    <SelectedRowStyle BackColor="#424C96" ForeColor="White" Font-Bold="True" />
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#55A377" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#575357" />
    <PagerStyle Width="200px" />            
    </asp:GridView>
</asp:Panel>

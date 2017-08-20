<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Lockup.ascx.cs" Inherits="Gestor.User_Controls.Lockup" %>

<script type="text/javascript">
    function Validate() {

        __doPostBack('<%= upFiltro.ClientID  %>', '');
        
    }   
</script>
<asp:UpdatePanel ID="upContentLockup" runat="server" UpdateMode="Conditional"  ViewStateMode="Enabled" >
    <ContentTemplate> 
        
        <div class="content_title">            
            <asp:Label ID="lblTituloLockup" runat="server" Text="Consulta: "></asp:Label>
        </div>
        <div style=" padding:10px 0 10px;"> 
            <asp:Panel ID="pnlPesquisaFiltroLockup"  runat="server">
    
                <asp:UpdatePanel ID="upFiltro" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
                    <ContentTemplate>
                        <div style="width:100%;min-width:500px; float:left;	padding-right: 10px;font-weight: bold;padding:10px 10px 10px 20px;">
                            <asp:Label ID="lblPesquisa" CssClass="" runat="server" Text="Pesquisar:"></asp:Label>
                            <asp:TextBox ID="txtPesquisa"  Width="60%" runat="server"  ></asp:TextBox> 
                            
                            <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" OnClick="btnFiltrar_Click" CssClass="btn btn-primary" />      
                            <br />
                        </div>
                    </ContentTemplate>            
                </asp:UpdatePanel>
                &nbsp
            </asp:Panel>
    
        </div>
        <asp:UpdatePanel ID="upResultadoLockup" runat="server" UpdateMode="Conditional">
            <ContentTemplate>                
            <div >                                                
                <asp:Panel ID="pnlresuldadoLockup" runat="server" ScrollBars="Auto" > 
                    <asp:SqlDataSource ID="dsLockup" runat="server" ProviderName="System.Data.SqlClient"  >
                        <FilterParameters>
                            <asp:ControlParameter Name="NOME" ControlId="txtPesquisa" PropertyName="Text"/>
                        </FilterParameters>
                    </asp:SqlDataSource>             
                    <asp:GridView ID="gvLockup" runat="server" BackColor="White" Width="95%" OnSelectedIndexChanged="lnkSelect_Click"
                        BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                        GridLines="Vertical" AllowSorting="True" OnPageIndexChanging="gvLockup_PageIndexChanging" 
                        OnSorting ="gvLockup_Sorting" DataSourceID="dsLockup" DataKeyNames="COD"
                         AllowPaging="true" AlternatingRowStyle-HorizontalAlign="Left" HorizontalAlign="Center" 
                            RowStyle-HorizontalAlign="Left" BorderStyle="None"  >
                        <AlternatingRowStyle BackColor="White"/>
                        <Columns>                
                        <asp:TemplateField HeaderText="">                           
                            <ItemTemplate>                                
                                <asp:LinkButton ID="lnkSelect" ForeColor="Black"  CommandName="Select" runat="server">Selecionar</asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"  />
                        </asp:TemplateField>      
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label runat="server" ID="lblNoResultsLockup" Text="Nenhuma informação encontrada." />
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#54A276" Font-Bold="True" ForeColor="White" Font-Size="12px"  />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F7DE" HorizontalAlign="Left" Wrap="False" />
                        <SelectedRowStyle BackColor="#424C96" ForeColor="White" Font-Bold="True" />            
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#55A377" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                        <PagerStyle Width="200px" />            
                    </asp:GridView>
                    <%--<div style="display:block;position:static;height: auto; text-align:center;padding:9px 0px 0px 0px;">
                        <asp:Button ID="btnConfirmarLockup" OnClick="btnConfirmarLockup_Click" runat="server" Text="Confirmar"  CssClass="btn btn-primary" />              
                    </div>--%>
                </asp:Panel>
            </div>
            </ContentTemplate> 
        </asp:UpdatePanel>
    </ContentTemplate>
</asp:UpdatePanel>
       
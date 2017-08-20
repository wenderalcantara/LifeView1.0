<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="CadastroMestreA.aspx.cs" Inherits="Gestor.CadastroMestreA" EnableViewState="True" ViewStateMode="Enabled" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/User_Controls/BarraFerramentas.ascx" TagName="BarraFerramentas"  TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
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
                <asp:TextBox ID="txtPesquisa" runat="server"  Visible="false"></asp:TextBox>
                <uc:BarraFerramentas ID="UcBarraFerramenta" TPCADASTRO="Mestre"   runat="server"></uc:BarraFerramentas>
                
                <div class="content_geral">
                                                 
                    <asp:Panel ID="pnlresuldado" runat="server" ScrollBars="Auto" >                   
                        <asp:SqlDataSource ID="dsResultado" runat="server" ProviderName="System.Data.SqlClient">
                            <FilterParameters>
                                <asp:ControlParameter Name="NOME"   ControlId="txtPesquisa" PropertyName="Text"/>
                            </FilterParameters>
                        </asp:SqlDataSource>                                    
                        <asp:GridView ID="gvDados" runat="server" BackColor="White" Width="400px"
                            BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                            GridLines="Vertical" AllowSorting="True"  DataKeyNames="COD" DataSourceID="dsResultado"
                            onselectedindexchanged="gvDados_SelectedIndexChanged" AllowPaging="true"
                                AlternatingRowStyle-HorizontalAlign="Left" HorizontalAlign="Center" 
                                RowStyle-HorizontalAlign="Left" BorderStyle="None" ShowFooter="True">
                        <AlternatingRowStyle BackColor="White"  Width="50px" />
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
                            <asp:Label runat="server" ID="lblNoResults" Text="Nenhuma informação encontrada." />
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
                        
                    </asp:Panel>                   
                </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="col-md-12">
            <asp:UpdatePanel ID="UpContentPesquisa" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
            <ContentTemplate>
        
                 <div class="content_title">                    
                    <asp:Label ID="lblTituloPesquisa" runat="server" Text="FILTRO"></asp:Label>
                </div>
                <div class="content_geral"> 
                <asp:Panel ID="pnlPesquisaFiltro"  runat="server">
    
                <asp:UpdatePanel ID="upPesquisa" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
                    <ContentTemplate>
                              
                    </ContentTemplate>            
                </asp:UpdatePanel>
                <div class="wrapper-botao">                
                    <asp:Button ID="btnPesquisa" runat="server" Text="Filtrar" OnClick="btnPesquisar_Click" CssClass="btn btn-primary" />              
                    <asp:Button ID="btnFecharFiltro" runat="server" Text="Fechar" CssClass="btn btn-primary" onclick="btnFecharFiltro_Click" />
                </div>
                </asp:Panel>
    
                </div>
            </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        
    </div>   
      
    <asp:UpdatePanel ID="UpCadastroMestre"    runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
    <ContentTemplate>
        <asp:Panel ID="pnlHelpCadastro" runat="server" >
            <div class="content_title_Msg" >                            
                <div style="width:90%;float:left;text-align:center;left:10px;vertical-align:middle;height:auto;line-height:25px">    
                    <asp:Label ID="lbltituloHelp" runat="server" Text="Help"></asp:Label>
                </div>
                <div style="text-align:right">
                    <asp:ImageButton ID="btnFecherHelpCad" ImageUrl="~/imagens/close.png" Width="25px" runat="server" />           
                </div>
            </div>
            <div class="content_detalhe" style="min-width:800px;min-height:400px;padding:10px">
                <asp:Panel ID="Panel2" runat="server" >
                    <asp:Label ID="lblHelpCadastro" runat="server" 
                Text="teste Help....."></asp:Label>    
                </asp:Panel>                        
            </div>
        </asp:Panel>   
        <asp:ModalPopupExtender ID="mpeHelpCadastro" runat="server" TargetControlID="btnHelpCadastro"  
        PopupControlID="pnlHelpCadastro" Drag="True" CancelControlID="btnFecherHelpCad" DropShadow="True" BackgroundCssClass="fundo_modal">
        </asp:ModalPopupExtender>                   
        
        <div class="content_title"  >
            <asp:Button ID="btnHelpCadastro" runat="server" Text="?"/>            
            <asp:Label ID="lblCadastro" runat="server" Text="CADASTRO"></asp:Label>
            <asp:Label ID="lblOperacao" runat="server" Text=" - OPERAÇÃO"></asp:Label>
        </div> 
        <div class="content_geral"> 
            <asp:Panel ID="pnlCadastro" runat="server">           
            <asp:UpdatePanel ID="upcontet" runat="server" UpdateMode="Conditional" >               
                <ContentTemplate>                              
                </ContentTemplate>                  
            </asp:UpdatePanel>  
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false"  EnableClientScript="true"
            HeaderText = "Os seguintes campos são de preenchimento obrigatórios: "  ValidationGroup="salvarMestre" />
        <div class="wrapper-botao"  >        
            <asp:Button ID="btnSalvarMestre" runat="server" Text="Salvar" CssClass="btn btn-primary" 
                onclick="btnSalvar_Click" ValidationGroup="salvarMestre" />
            <asp:Button ID="btnFechar" runat="server" Text="Fechar" CssClass="btn btn-primary" 
                onclick="btnFechar_Click" />
            <asp:Button ID="btnExcluirMestre" runat="server" Text="Excluir" CssClass="btn btn-primary" Enabled="false"  />
        
            
            <%--<div  style="position:absolute;" >--%>
                <asp:Panel ID="pnlOpcoes" runat="server" class="btn-group" Width="300px" >
                  <button type="button" class="btn btn-primary">Opções</button>
                  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                    <span class="caret"></span>
                  </button>
                  <ul runat="server" id="MenuOpcoes" class="dropdown-menu"  role="menu">
            
                  </ul>
               </asp:Panel> 
            <%--</div>--%>
                
    </div>    
    <asp:Panel ID="pnlExcluir" runat="server" >
        <div class="content_title_Msg">
            <asp:Label ID="Label2" runat="server" Text="Exclusão"></asp:Label>
        </div>
        <div class="modalGestor">
            <asp:Label ID="lbl_mensagem" CssClass="texto_modal" runat="server" 
            Text="Confirmar a exclusão do registro?"></asp:Label>
            <asp:Button ID="btnSim" runat="server" Text="Sim" CssClass="btn btn-primary" onclick="btnExcluir_Click" />
            <asp:Button ID="btnNão" runat="server" Text="Não" CssClass="btn btn-primary"   />
        </div>
    </asp:Panel>   
    <asp:ModalPopupExtender ID="mpeEcluir" runat="server" TargetControlID="btnExcluirMestre"  
    PopupControlID="pnlExcluir" Drag="True" DropShadow="True" BackgroundCssClass="fundo_modal">
    </asp:ModalPopupExtender>
    </asp:Panel>
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

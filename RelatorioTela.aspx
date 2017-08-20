<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RelatorioTela.aspx.cs" Inherits="Gestor.RelatorioTela" %>

<%@ Register Assembly="Boleto.Net" Namespace="BoletoNet" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css"> 
        .tamPnl { min-height:80vh;max-height:800px;display:block;} 
          
    </style>
    <script src="Styles/StyleRelatorios.css"></script>   
    <div class="row">
        <div class="col-md-12">
            <asp:UpdatePanel ID="upRelatorio" runat="server" UpdateMode="Conditional">
                <ContentTemplate>    
                    <div class="content_title">                                     
                        <asp:Label ID="lbl_tituloFiltro" runat="server" Text="RELATORIO"></asp:Label>
                    </div>
                    
                    
                    <div class="content_geral"> 
                        <asp:Panel ID="pnlCadastro" runat="server">                
                            <asp:UpdatePanel ID="upcontet" runat="server" UpdateMode="Conditional" >               
                                <ContentTemplate>            
                                    <asp:TabContainer ID="TabRelatorio"  runat="server" ActiveTabIndex="0">                                    
                                        <asp:TabPanel ID="tabParans"  runat="server" HeaderText="Parâmetros">                                                                                         
                                            <ContentTemplate>
                                                <%--<asp:Panel ID="PnlParans"  runat="server" >--%>
                                                <asp:UpdatePanel ID="PnlParans"   UpdateMode="Conditional" runat="server">
                                                    <ContentTemplate>
                                                        
                                                        <%--<asp:Panel ID="PnlCamposParametros"  runat="server" >
                    
                                                        </asp:Panel>--%>
                                                        <asp:UpdatePanel ID="PnlCamposParametros"   UpdateMode="Conditional" runat="server">
                                                            <ContentTemplate>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>

                                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false"  EnableClientScript="true"
                                                        HeaderText = "Os seguintes parâmetros são obrigatórios:"  ValidationGroup="Gerar" />
                                                        <div class="wrapper-botao">
                                                            <asp:Button ID="btnGerar" CssClass="btn btn-primary" runat="server" ValidationGroup="Gerar"
                                                                                        Text="Gerar Relatório" onclick="btnGerar_Click" />                                                                                           
                                                        </div>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                
                                                    
                                                <%--</asp:Panel>--%>

                                            </ContentTemplate>
                                        </asp:TabPanel>
                                        <asp:TabPanel ID="tabRelPrint" runat="server"  HeaderText="Relatório">                                             
                                            <ContentTemplate>
                                                
                                                <asp:Panel ID="PnlRelatorio" CssClass="tamPnl" ScrollBars="Auto" runat="server">
                                                    <input type="button" id="btnPrint" onclick="PrinConteudo();" class="btn btn-primary" runat="server" value="Imprimir"/>
                                                    <%--<input type="button" id="btnFitro" onclick="AdicionarFiltro('tab');" class="btn btn-primary" value="Habilitar Filtros" />--%>
                                                    <%--<input type="image" id="btnAutoFilter" size="30px" src="imagens/filter_data.png" onclick="AdicionarFiltro('tab');" class="btn btn-primary"/>--%>
                                                     
                                                    <div id="print" class="conteudo"> 
                                                        <style type="text/css">                                                             
                                                            .filtroColuna
                                                            { 
                                                                height:27px; 
                                                                -webkit-border-radius:10px; 
                                                                -moz-border-radius:10px;
	                                                            border-radius:10px; 
	                                                            -webkit-box-shadow:rgb(76, 116, 122) -2px 0px 13px	0px; 
	                                                            -moz-box-shadow:rgb(76, 116, 122) -2px 0px 13px 0px; 
	                                                            box-shadow:rgb(76,	116, 122) -2px 0px 13px 0px; 
	                                                            color:rgb(255, 255, 255);
	                                                            background-color:rgb(0,	0, 0);
                                                            } 
                                                            .CabGrupo 
                                                            { 
                                                                width: 100%;
                                                                height:45px;
                                                                padding:2px 0px 5px 0px; 
                                                                margin:5px 0px	5px 0px;
                                                                line-height:45px;
                                                                vertical-align: middle; 
                                                                text-align:center;
	                                                            color:rgb(255, 255, 255); 
	                                                            font-weight:bold; 
	                                                            background-color:rgb(145, 186,	87); 
	                                                            -webkit-border-radius:5px 5px 0px 0px; 
	                                                            -moz-border-radius:5px 5px	0px 0px; 
	                                                            border-radius:5px 5px 0px 0px; 
                                                            } 
                                                            .tabela table 
                                                            { 
                                                                width: 100%!important;
                                                                font-family: arial, sans-serif;
	                                                            color:black; 
	                                                            border-width:0px;
	                                                            border-color:rgba(105, 105, 105, 0);
	                                                            border-collapse: collapse!important;
	 
                                                            } 
                                                            .tabela td, th 
                                                            { 
                                                                text-align:	left; 
                                                                padding: 8px; 
                                                            } 
                                                            .tabela th 
                                                            {
                                                                background-color:rgb(145, 186, 87);
                                                            } 
                                                            .tabela tr:nth-child(even)
                                                            { 
                                                                background-color: #dddddd; 
                                                            } 
                                                            .tabela tr:nth-child(odd) 
                                                            { 
                                                                background-color:rgb(189,189, 189); 
                                                            } 
                                                            .tabela tfoot tr:nth-last-child(n -1) 
                                                            { 
                                                                font-weight:bold; 
                                                                background-color:rgb(143,143, 143); 
                                                            } 
                                                            .tabela tfoot td:first-child 
                                                            { 
                                                                -webkit-border-bottom-left-radius:5px; 
                                                                -moz-border-bottom-left-radius: 5px; 
                                                                border-bottom-left-radius: 5px;
                                                            } 
                                                            .tabela tfoot td:last-child 
                                                            { 
                                                                -webkit-border-bottom-right-radius: 5px; 
                                                                -moz-border-bottom-right-radius:5px; 
                                                                border-bottom-right-radius: 5px; 
                                                            } 
                                                            .tabela h2,h1 
                                                            { 
                                                                text-align:center; 
                                                            }
                                                            .divImg
                                                            {
	                                                            float:left;
	                                                            text-align:left;
	                                                            width:10%;
                                                            }
                                                            .divTitRel
                                                            {
	                                                            float:right ;
	                                                            text-align:center;
	                                                            width:90%;
	                                                            height:100%;
                                                            }    
        
                                                        </style>
                                                        <br />                                                    
                                                        <asp:Label ID="lblRel" runat="server" Text=""></asp:Label>
                                                    </div>                
                                                </asp:Panel>
                                                
                                            </ContentTemplate>
                                        </asp:TabPanel>
                                    </asp:TabContainer>                                    
                                </ContentTemplate>                  
                            </asp:UpdatePanel>  
                                                          
                        </asp:Panel>

                    </div>                   
                </ContentTemplate>
            </asp:UpdatePanel> 
            </div>
        </div>
        <script>
            function TiraCss() {
                alert('teste');
            }
        </script>
        <%--<script>
            function cont() {
                $("#filtroColuna_1").parent().parent().hide();
                var conteudo = document.getElementById('print').innerHTML;
                tela_impressao = window.open('about:blank');
                tela_impressao.document.write(conteudo);
                tela_impressao.window.print();
                tela_impressao.window.close();
                $("#filtroColuna_1").parent().parent().show();
            }
        </script>--%>
        <script src="Scripts/scriptsRelatorios.js" defer="DEFER"></script>
        
        <%--<script>
            //FILTRO DINAMICO
            $(function () {
                $("#Filtertabela input").keyup(function () {
                    var index = $(this).parent().index();
                    var nth = "#Filtertabela td:nth-child(" + (index + 1).toString() + ")";
                    var valor = $(this).val().toUpperCase();
                    $("#Filtertabela tbody tr").show();
                    $(nth).each(function () {
                        if ($(this).text().toUpperCase().indexOf(valor) < 0) {
                            $(this).parent().hide();
                        }
                    });
                });

                $("#Filtertabela input").blur(function () {
                    $(this).val("");
                });
            })
    </script>--%>
</asp:Content>

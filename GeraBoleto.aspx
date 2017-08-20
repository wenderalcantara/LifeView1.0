<%@ Page Title="Gerador Boleto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeraBoleto.aspx.cs" Inherits="Gestor.GeraBoleto" 
EnableViewState="True" ViewStateMode="Enabled"%>
<%@ Register Assembly="Boleto.Net" Namespace="BoletoNet" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:UpdatePanel ID="UpCadastro" runat="server" UpdateMode="Conditional" ViewStateMode="Enabled">
    <ContentTemplate>
        <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="Server" TargetControlID="pnlCadastro"
            CollapsedSize="0"  Collapsed="false" ExpandControlID="btnMinCadastro"
            CollapseControlID="btnMinCadastro" AutoCollapse="False"    AutoExpand="False"
            ScrollContents="false" ExpandDirection="Vertical"/>                         
                            
        <div class="content_title">                                  
            <asp:Button ID="btnMinCadastro" runat="server" Text="-"/>    
            <asp:Label ID="lbl_Titulo" runat="server" Text="GERAÇÃO DE BOLETOS"></asp:Label>
        </div> 
        <div class="content_geral"> 
            <asp:Panel ID="pnlCadastro" runat="server">
                <asp:Label ID="Label4" runat="server" Text="Instruções: Informe o morador, competência e o vencimento desejado. Para boletos em atraso, 
                serão calculados os juros proporcionais de 1% ao mês e multa de mora de 2%. " ForeColor="#0000CC"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Morador:"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlApartantos" Width="300px" runat="server">
                <asp:ListItem Text="Todos" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Competência:"></asp:Label>
                <br />
                <asp:TextBox ID="txtCompetencia" Width="100PX" runat="server" 
                    AutoPostBack="True"  ontextchanged="txtCompetencia_TextChanged"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="txtCompetencia" runat="server" 
                ClearTime="True" DefaultView="Days" Format="MM/yyyy" PopupPosition="BottomRight" TodaysDateFormat="MM/yyyy" DaysModeTitleFormat="MM/yyyy">
                </ajaxToolkit:CalendarExtender>
                <asp:RequiredFieldValidator ID="reqComp" runat="server" ValidationGroup="gerador" ErrorMessage="*OBRIGATÓRIO" 
                ControlToValidate="txtCompetencia" CssClass="obrigatorio"></asp:RequiredFieldValidator>
                
                <asp:Label ID="Label3" runat="server" Text="Vencimento:"></asp:Label>
                <br />
                <asp:TextBox ID="txtVencimento" Width="100PX" runat="server"  ></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" TargetControlID="txtVencimento" runat="server" 
                ClearTime="True" DefaultView="Days" Format="dd/MM/yyyy" PopupPosition="BottomRight" TodaysDateFormat="dd/MM/yyyy" DaysModeTitleFormat="dd/MM/yyyy">
                </ajaxToolkit:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="gerador" ErrorMessage="*OBRIGATÓRIO" 
                ControlToValidate="txtVencimento" CssClass="obrigatorio"></asp:RequiredFieldValidator>                                
                <br />
                <asp:Label ID="Label7" runat="server" Text="Segunda Via:"></asp:Label>
                <asp:CheckBox ID="chkSegVia"  runat="server" />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Exibir Banlancete:"></asp:Label>
                <asp:CheckBox ID="chkBalancete"  runat="server" />
                <br />                
                <asp:Label ID="lblcheck" runat="server" Text="Emissão de taxa:"></asp:Label>
                <asp:CheckBox ID="chkTaxa" AutoPostBack="true" runat="server" 
                    oncheckedchanged="CheckBox1_CheckedChanged" />
                <br />
                <br />
                <asp:Panel ID="pnlTaxa" Visible="false" runat="server">
                    <asp:Label ID="Label5" runat="server" Text="Valor"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtValor" Width="100px"  runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Observações (motivo do boleto)"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtObs" Width="800px" MaxLength="300" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:Panel>
                
                <asp:Button ID="btnGerar" CssClass="btn btn-primary" runat="server" ValidationGroup="gerador" Text="Gerar Boleto(s)" 
                    onclick="btnGerar_Click" />
            </asp:Panel>
            <asp:Panel ID="pnlBoleto"  runat="server">
                <%--<cc1:BoletoBancario id="boletoBancario" runat="server" CodigoBanco="104"></cc1:BoletoBancario>
                <asp:Label ID="lblCodigoBarras" runat="server"></asp:Label>--%>

            </asp:Panel>
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

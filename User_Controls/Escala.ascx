<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Escala.ascx.cs" Inherits="Gestor.User_Controls.Escala" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="aspx" %>

<%--GRID MESTRE--%>    
    <asp:UpdatePanel ID="upEscala" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <aspx:CollapsiblePanelExtender ID="cpeFiltroMestre" runat="Server" TargetControlID="pnlEscala"
            CollapsedSize="0"  Collapsed="false" ExpandControlID="btnOcultaFMestre"
            CollapseControlID="btnOcultaFMestre" AutoCollapse="false"    AutoExpand="false"
            ScrollContents="false" ExpandDirection="Vertical"/> 
            <div class="content_title">             
                <asp:Button ID="btnOcultaFMestre" runat="server" Text="-"/>        
                <asp:Label ID="lbl_tituloFiltro" runat="server" Text="ESCALA DE SERVIÇOS"></asp:Label>
            </div>
            <div class="content_geral">             
            <div style=" min-height:400px;"> 
            <div style="padding:10px 0 10px 0;">
                <asp:Label ID="lb_data_ini" runat="server" Text="Data Inicial:"></asp:Label>
                <asp:TextBox ID="txt_data_ini" Width="100" runat="server"></asp:TextBox>                
                <ajaxToolkit:CalendarExtender ID="CE_dt_ini" PopupButtonID="txt_data_ini" TargetControlID="txt_data_ini" ClearTime="true" runat="server">
                </ajaxToolkit:CalendarExtender>
                <ajaxToolkit:MaskedEditExtender ID="Mask_dt_ini" Mask="99/99/9999"  ClearTextOnInvalid ="true" 
                MaskType="Date" TargetControlID="txt_data_ini" runat="server">
                </ajaxToolkit:MaskedEditExtender>

                <asp:Label ID="lb_data_fim" runat="server" Text="Data Inicial:"></asp:Label>
                <asp:TextBox ID="txt_data_fim" Width="100" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="CE_dt_fim" PopupButtonID="txt_data_fim" TargetControlID="txt_data_fim" ClearTime="true" runat="server">
                </ajaxToolkit:CalendarExtender>
                <ajaxToolkit:MaskedEditExtender ID="Mask_dt_fim" Mask="99/99/9999"  ClearTextOnInvalid ="true" 
                MaskType="Date" TargetControlID="txt_data_fim" runat="server">
                </ajaxToolkit:MaskedEditExtender>
                <asp:Button ID="btnAtualizar" CssClass="btn btn-primary" runat="server" Text="Atualizar" />
            </div>
            
            <asp:Panel ID="pnlEscala" runat="server" ScrollBars="Auto"  >
                

                <asp:SqlDataSource ID="dsResultadoEscala" runat="server" 
                ProviderName="System.Data.SqlClient" SelectCommand="" />               
                <asp:GridView ID="gvDadosEscala" runat="server" BackColor="White" 
                    BorderColor="#54A276" BorderStyle="Solid" BorderWidth="2px" CellPadding="3" ForeColor="Black" 
                    GridLines="Vertical" AllowSorting="True"  DataKeyNames="TURNO" DataSourceID="dsResultadoEscala"
                     AllowPaging="true" AlternatingRowStyle-HorizontalAlign="Left" HorizontalAlign="Left" 
                        RowStyle-HorizontalAlign="Left" 
                    onrowdatabound="gvDadosEscala_RowDataBound" ondatabound="gvDadosEscala_DataBound" 
                     >
                    <AlternatingRowStyle BackColor="White"/>
                   <%-- <Columns>                
                        <asp:TemplateField HeaderText="EDITAR">
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imbSelect" ImageUrl="~/imagens/botao_editar.gif"
                                    CssClass="selectButton" CommandName="Select" CausesValidation="false" />
                            </ItemTemplate>
                            <ItemStyle Width="40px" />
                        </asp:TemplateField>                
                    </Columns>--%>
                    <EmptyDataTemplate>
                        <asp:Label runat="server" ID="lblNoResultsMestre" Text="Nenhuma informação encontrada." />
                    </EmptyDataTemplate>
                    
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#54A276" Font-Bold="True" ForeColor="White" Font-Size="12px" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />                    
                    <RowStyle BackColor="#F7F7DE"  HorizontalAlign="Left" Wrap="false"  />                    
                    <SelectedRowStyle BackColor="#424C96" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#55A377" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                    <PagerStyle Width="200px" />            
                </asp:GridView>
                
            </asp:Panel>
            <div style="width:300px;height:100px;float:left;border-width:1px;border-style:solid;text-align:center;font-weight:bold;padding:10px 0px 10px 0px;
            margin-top:30px;display:block;">
                LEGENDA
                <br />
                <div style="text-align:left;float:left;padding:0px 10px 10px 0px">
                    Domingo
                    <div style="width:30px;height:30px;background-color:rgb(79,185,255);">            
                    </div>
                </div>
                <div style="text-align:left;float:left;padding:0px 10px 10px 0px"">
                    Feriado
                    <div style="width:30px;height:30px;background-color:rgb(245,228,130);">            
                    </div>
                </div>
                
            </div> 
            <div style="width:900px;height:100px;float:left;border-width:1px;border-style:solid;text-align:center;font-weight:bold;padding:10px 0px 10px 0px;
            margin-top:30px;display:block;margin-left:10px;">
                <asp:Label ID="lblFeriados" runat="server" Text="Feriados"></asp:Label>
                <div style="columns:auto 2;-webkit-columns:auto 2 ;-moz-columns:auto 2 ;height:80px;width:300px;text-align:left;vertical-align:text-top">
                    <asp:BulletedList ID="BulletedList1" runat="server"  >                 
                        <asp:ListItem>ColdFusion</asp:ListItem>  
                        <asp:ListItem>PHP</asp:ListItem>  
                        <asp:ListItem>Asp.Net</asp:ListItem>  
                        <asp:ListItem>JSP</asp:ListItem>   
                        <asp:ListItem>Asp.Net</asp:ListItem>  
                        <asp:ListItem>JSP</asp:ListItem>    
                        <asp:ListItem>JSP</asp:ListItem>   
                        <asp:ListItem>Asp.Net</asp:ListItem>  
                        <asp:ListItem>JSP</asp:ListItem>              
                    </asp:BulletedList>
                </div>                                
            </div>   
        </div>   
    </div>
    </ContentTemplate>
</asp:UpdatePanel>

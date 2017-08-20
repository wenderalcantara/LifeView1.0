<%@ Page Title="" Language="C#" MasterPageFile="~/Relatorios/Relatorio.Master" AutoEventWireup="true" CodeBehind="SMS.aspx.cs" Inherits="Gestor.SMS" %>
<%@ Register   Assembly="AjaxControlToolkit"    Namespace="AjaxControlToolkit.HTMLEditor"   TagPrefix="HTMLEditor" %>
<%--<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:Label ID="lblteste" runat="server" ></asp:Label>
<%--<eo:Editor runat="server" ID="htmlteste" ></eo:Editor>--%>

<%--<HTMLEditor:Editor ID="Editor1" runat="server" Content="testefhdsfsk" 
Height="300px" Width="100%" AutoFocus="true"  TopToolbarPreservePlace="True"   />

 
 
 <asp:TextBox ID="txtBody" runat="server" Width="100%" Height="90%" Columns="80" Rows="40" TextMode="MultiLine"></asp:TextBox> 
<ajaxToolkit:HtmlEditorExtender ID="heeBody" EnableSanitization="false"  runat="server" TargetControlID="txtBody"> 
     <Toolbar>               
        <ajaxToolkit:Undo />
        <ajaxToolkit:Redo />
        <ajaxToolkit:Bold />
        <ajaxToolkit:Italic />
        <ajaxToolkit:Underline />
        <ajaxToolkit:StrikeThrough />
        <ajaxToolkit:Subscript />
        <ajaxToolkit:Superscript />
        <ajaxToolkit:JustifyLeft />
        <ajaxToolkit:JustifyCenter />
        <ajaxToolkit:JustifyRight />
        <ajaxToolkit:JustifyFull />
        <ajaxToolkit:InsertOrderedList />
        <ajaxToolkit:InsertUnorderedList />
        <ajaxToolkit:CreateLink />
        <ajaxToolkit:UnLink />
        <ajaxToolkit:RemoveFormat />
        <ajaxToolkit:SelectAll />
        <ajaxToolkit:UnSelect />
        <ajaxToolkit:Delete />
        <ajaxToolkit:Cut />
        <ajaxToolkit:Copy />
        <ajaxToolkit:Paste />
        <ajaxToolkit:BackgroundColorSelector />
        <ajaxToolkit:ForeColorSelector />
        <ajaxToolkit:FontNameSelector />
        <ajaxToolkit:FontSizeSelector />
        <ajaxToolkit:Indent />
        <ajaxToolkit:Outdent />
        <ajaxToolkit:InsertHorizontalRule />
        <ajaxToolkit:HorizontalSeparator />
        <ajaxToolkit:InsertImage  />
    </Toolbar> 
</ajaxToolkit:HtmlEditorExtender>    

--%>

</asp:Content>

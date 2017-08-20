<%@ Page Language="C#" AutoEventWireup="true"  
CodeBehind="Export.aspx.cs" Inherits="Gestor.Export" EnableEventValidation="false" %>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">      
    <div>
        <asp:SqlDataSource ID="dsResultado" runat="server" ProviderName="System.Data.SqlClient" />
        <asp:GridView ID="gridExport" DataKeyNames="COD" runat="server" DataSourceID="dsResultado" >            
            <Columns>
                
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>--%>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Gestor.WebForm1" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="dsResultado" runat="server" ProviderName="System.Data.SqlClient" />
        <asp:GridView ID="gridExport" DataKeyNames="COD" runat="server" DataSourceID="dsResultado" >            
            <Columns>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
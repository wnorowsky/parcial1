<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="parcial1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/altaPrecio.aspx">Alta de precios</asp:HyperLink>
            <br />
            <br />
        </div>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/bajaProductos.aspx">Baja de precios y productos</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/modificacionPrecio.aspx">Modificacion de precios</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/consultaPrecios.aspx">Consulta de precios</asp:HyperLink>
        <p>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/altaProducto.aspx">Alta de productos</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/modificacionProducto.aspx">Modificacion de productos</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/consultaProductos.aspx">Consulta de productos</asp:HyperLink>
        </p>
    </form>
</body>
</html>

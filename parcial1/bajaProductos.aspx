<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajaProductos.aspx.cs" Inherits="parcial1.baja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            - Baja de productos y precio asociado -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Codigo del producto a borrar: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:parcial1ConnectionString %>" DeleteCommand="DELETE FROM precios WHERE idProducto = @idProducto; DELETE FROM productos WHERE id = @idProducto;">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

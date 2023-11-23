<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacionPrecio.aspx.cs" Inherits="parcial1.modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            - Modificación del precio de un producto -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Codigo del producto: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Monto: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Fecha: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSourcePrecio" runat="server" ConnectionString="<%$ ConnectionStrings:parcial1ConnectionString %>" SelectCommand="select * from precios where idProducto = @idProducto" UpdateCommand="update precios set fecha = @fecha, monto = @monto where idProducto = @idProducto">
                <SelectParameters>
                    <asp:Parameter Name="idProducto" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="fecha" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="monto" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

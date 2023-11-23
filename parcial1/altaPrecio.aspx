<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaPrecio.aspx.cs" Inherits="parcial1.alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            - Registrar nuevo precio de producto -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Produto: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceProductos" DataTextField="descripcion" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceProductos" runat="server" ConnectionString="<%$ ConnectionStrings:parcial1ConnectionString %>" SelectCommand="SELECT [id], [descripcion] FROM [productos]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Fecha: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Precio: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourcePrecios" runat="server" ConnectionString="<%$ ConnectionStrings:parcial1ConnectionString %>" InsertCommand="insert into precios (fecha, monto, idProducto) values (@fecha, @monto, @idProducto);" SelectCommand="SELECT * FROM [precios]">
                <InsertParameters>
                    <asp:Parameter Name="fecha" />
                    <asp:Parameter Name="monto" />
                    <asp:Parameter Name="idProducto" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>

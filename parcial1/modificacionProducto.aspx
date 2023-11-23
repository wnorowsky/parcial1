<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacionProducto.aspx.cs" Inherits="parcial1.modificacionProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            - Modificar un producto -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ingrese el codigo del producto: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:parcial1ConnectionString %>" SelectCommand="select * from productos where id = @idProducto" UpdateCommand="update productos set descripcion = @descripcion where id = @idProducto">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="descripcion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Ingrese la nueva descripcion: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>

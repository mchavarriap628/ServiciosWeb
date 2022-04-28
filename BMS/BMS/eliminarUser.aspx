<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eliminarUser.aspx.cs" Inherits="BMS.eliminarUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Eliminar empleado"></asp:Label>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="Correo"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="ListCorreos" runat="server" DataSourceID="SqlDataSource1" DataTextField="correo" DataValueField="correo" Height="22px" Width="201px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:serviciosWebDBConnectionString %>" SelectCommand="SELECT [correo] FROM [usuarios]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="bntEliminar" runat="server" OnClick="bntEliminar_Click" Text="Eliminar" />
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Limpiar" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
    </form>
</body>
</html>

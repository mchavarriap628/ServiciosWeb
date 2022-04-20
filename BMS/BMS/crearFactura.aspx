<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearFactura.aspx.cs" Inherits="BMS.crearFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Nueva factura</h1>
            <p>Aquí puede generar nuevas facturas para cobrarle a sus clientes y posteriormente
                <br />
                darle seguimiento a alguna especifica en caso de ser necesario.</p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Número de factura"></asp:Label>
            </p>
        </div>
        <asp:TextBox ID="txtNumeroFactura" runat="server" Enabled="False" OnInit="txtNumeroFactura_Init" Style="margin-bottom: 0px"></asp:TextBox>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Nombre del cliente"></asp:Label>
        </p>
        <asp:TextBox ID="txtNombreCliente" runat="server" Width="240px"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Descripción del cargo"></asp:Label>
        </p>
        <asp:TextBox ID="txtDescripcionCargo" runat="server" Height="185px" Width="240px" TextMode="MultiLine"></asp:TextBox>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Monto ₡"></asp:Label>
        </p>
        <asp:TextBox ID="txtMonto" runat="server" Width="144px" TextMode="Number"></asp:TextBox>
        <p>
            <asp:Button ID="btnCrearFactura" runat="server" Text="Crear factura" Width="150px" OnClick="btnCrearFactura_Click" />
        </p>
        <p>
            <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" Width="150px" />
        </p>
    </form>
</body>
</html>

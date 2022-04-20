<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facturas.aspx.cs" Inherits="BMS.facturas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Facturas - Seguimiento</title>
    <style>
        *{}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Facturas</h1>
            <asp:Label ID="Label1" runat="server" Text="Número de factura"></asp:Label>
            <asp:DropDownList ID="ddNumeroFactura" runat="server" Height="18px" Width="183px" OnInit="ddNumeroFactura_Init">
            </asp:DropDownList>
            <asp:Button ID="btnBuscarFactura" runat="server" OnClick="btnBuscarFactura_Click" Text="Buscar factura" />
            <br />
        </div>

        <asp:Label ID="Label2" runat="server" Text="Cliente"></asp:Label>
        <asp:TextBox ID="txtCliente" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="Label3" runat="server" Text="Estado de la factura"></asp:Label><br />
        <asp:RadioButton ID="rbPendiente" runat="server" GroupName="rgEstado" Text="Pendiente" Checked="true"/>
        <asp:RadioButton ID="rbCancelada" runat="server" GroupName="rgEstado" Text="Cancelada" />
        <br />
        <asp:Button ID="btnCambiarEstado" runat="server" OnClick="btnCambiarEstado_Click" Text="Cambiar estado" Width="196px" />
&nbsp;<br />
        <asp:Label ID="txtResultadoCambioEstado" runat="server" Text="..."></asp:Label>
        <br />
        <br />

        <asp:Label ID="Label4" runat="server" Text="Descripción del cargo"></asp:Label><br />
        <asp:TextBox ID="txtDescripcionCargo" runat="server" Height="187px" Width="276px" Enabled="False" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="Label5" runat="server" Text="Monto"></asp:Label>
        <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="btnGenerarFactura" runat="server" Text="Generar nueva factura" OnClick="btnGenerarFactura_Click" Width="190px" />
        <br />
        <p>
            <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar al menú" Width="190px" />
        </p>

    </form>
</body>
</html>

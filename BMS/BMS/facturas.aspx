<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facturas.aspx.cs" Inherits="BMS.facturas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Selecciono el diseño de CSS -->
<link href="css/general.css" rel="stylesheet" />
<link href="css/iconos.css" rel="stylesheet" />

<head runat="server">
    <title>BMP Facturas</title>
    <style>
        *{}
    </style>
</head>
<body>
    <!-- INICIO MENU VERTICAL -->
    <header class="header">
        <div class="container">
            <div class="btn-menu">
                <label for="btn-menu" class="icon-menu"></label>
            </div>
        </div>
    </header>
     <!-- FIN MENU VERTICAL -->
    <form id="form1" runat="server">
        <div class="general-boxes">

<div>
            <center>
<h1>Facturas</h1>
            </center>
            
            <asp:Label ID="Label1" runat="server" Text="Número de factura"></asp:Label>
            &nbsp;<asp:DropDownList ID="ddNumeroFactura" runat="server" Height="18px" Width="183px" OnInit="ddNumeroFactura_Init" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black">
            </asp:DropDownList>
            &nbsp;<asp:Button ID="btnBuscarFactura" runat="server" OnClick="btnBuscarFactura_Click" Text="Buscar factura" CssClass="boton_validar"/>
            <br />
            <br />
        </div>

        <asp:Label ID="Label2" runat="server" Text="Cliente"></asp:Label>
        &nbsp;<asp:TextBox ID="txtCliente" runat="server" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="Label3" runat="server" Text="Estado de la factura"></asp:Label><br />
        <asp:RadioButton ID="rbPendiente" runat="server" GroupName="rgEstado" Text="Pendiente" Checked="true"/>
        <asp:RadioButton ID="rbCancelada" runat="server" GroupName="rgEstado" Text="Cancelada" />
        <br />
        <asp:Button ID="btnCambiarEstado" runat="server" OnClick="btnCambiarEstado_Click" Text="Cambiar estado" Width="196px" CssClass="boton_general"/>
&nbsp;<br />
        <asp:Label ID="txtResultadoCambioEstado" runat="server" Text="..."></asp:Label>
        <br />

        <asp:Label ID="Label4" runat="server" Text="Descripción del cargo"></asp:Label><br />
        <asp:TextBox ID="txtDescripcionCargo" runat="server" Height="76px" Width="512px" Enabled="False" TextMode="MultiLine" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="Label5" runat="server" Text="Monto"></asp:Label>
        <asp:TextBox ID="txtMonto" runat="server" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        <br />
        
        <br />
        </div>
        

    </form>

    <!-- Checkbox del menu VERTICAL -->
<input type="checkbox" id="btn-menu" />
<div class="container-menu">
    <div class="cont-menu">
        <nav>
            <h1 style="color: white;">Menú usuario</h1>
            <a href="user.aspx">Inicio</a>
            <a href="facturas.aspx">Facturas</a>
            <a href="crearFactura.aspx">Crear factura</a>
            <a href="login.aspx">Salir</a>
        </nav>
        <label for="btn-menu" class="icon-equis"></label>
    </div>
</div>
</body>
</html>

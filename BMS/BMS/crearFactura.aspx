<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearFactura.aspx.cs" Inherits="BMS.crearFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Selecciono el diseño de CSS -->
<link href="css/general.css" rel="stylesheet" />
<link href="css/iconos.css" rel="stylesheet" />


<head runat="server">
    <title>BMP Crear factura</title>
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
            <h1>Nueva factura</h1>
                </center>
            <p>Aquí puede generar nuevas facturas para cobrarle a sus clientes y posteriormente
                <br />
                darle seguimiento a alguna especifica en caso de ser necesario.</p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Número de factura"></asp:Label>
            &nbsp;
        <asp:TextBox ID="txtNumeroFactura" runat="server" Enabled="False" OnInit="txtNumeroFactura_Init" Style="margin-bottom: 0px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
            </p>
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Nombre del cliente" ></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtNombreCliente" runat="server" Width="240px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Descripción del cargo"></asp:Label>
        </p>
        <asp:TextBox ID="txtDescripcionCargo" runat="server" Height="92px" Width="415px" TextMode="MultiLine" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Monto ₡"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtMonto" runat="server" Width="144px" TextMode="Number" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnCrearFactura" runat="server" Text="Crear factura" Width="150px" OnClick="btnCrearFactura_Click" CssClass="boton_general" />
        </p>
      

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

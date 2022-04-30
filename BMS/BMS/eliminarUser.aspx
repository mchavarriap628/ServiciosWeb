<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eliminarUser.aspx.cs" Inherits="BMS.eliminarUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <!-- Selecciono el diseño de CSS -->
<link href="css/general.css" rel="stylesheet" />
<link href="css/iconos.css" rel="stylesheet" />

<head runat="server">
    <title>BMP Eliminar usuario</title>
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
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Eliminar empleado"></asp:Label>
            </center>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="Correo"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="ListCorreos" runat="server" DataSourceID="SqlDataSource1" DataTextField="correo" DataValueField="correo" Height="22px" Width="201px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:serviciosWebDBConnectionString %>" SelectCommand="SELECT [correo] FROM [usuarios]"></asp:SqlDataSource>
        <br />
        <br />
            <center>
                <asp:Button ID="bntEliminar" runat="server" OnClick="bntEliminar_Click" Text="Eliminar" CssClass="boton_general" />
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Limpiar"  CssClass="boton_general"/>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver"  CssClass="boton_general"/>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </center>
        

        </div>
        
    </form>

<!-- Checkbox del menu VERTICAL -->
<input type="checkbox" id="btn-menu" />
<div class="container-menu">
    <div class="cont-menu">
        <nav>
            <h1 style="color: white;">Menú administrador</h1>
            <a href="admin.aspx">Inicio</a>
            <a href="crearUser.aspx">Crear empleado</a>
            <a href="editarUser.aspx">Editar empleado</a>
            <a href="eliminarUser.aspx">Eliminar empleado</a>
            <a href="login.aspx">Salir</a>
        </nav>
        <label for="btn-menu" class="icon-equis"></label>
    </div>
</div>
</body>
</html>

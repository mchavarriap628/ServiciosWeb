<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="BMS.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Selecciono el diseño de CSS -->
<link href="css/general.css" rel="stylesheet" />
<link href="css/iconos.css" rel="stylesheet" />

<head runat="server">
    <title>BMP Menú administrador</title>
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
        <div class="general-box">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Business Management Plus - Acceso de administrador"></asp:Label>
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="Aquí usted puede realizar tareas del area administrativa, como crear, editar y eliminar empleados."></asp:Label>
        <br />
        <br />
        <center>
            <asp:Image ID="Image1" runat="server" Height="342px" ImageUrl="~/images/icono_admin.png" Width="321px" />
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

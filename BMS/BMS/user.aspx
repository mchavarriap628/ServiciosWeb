<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="BMS.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Selecciono el diseño de CSS -->
<link href="css/general.css" rel="stylesheet" />
<link href="css/iconos.css" rel="stylesheet" />

<head runat="server">
    <title>BMP Menú contador</title>
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
            <h1>Business Management Plus - Acceso de contador</h1>
            <p>Aquí usted puede realizar tareas del area financiera, como llevar el control de la planilla<br />
                y las facturas pendientes tanto como generar y enviar nuevas facturas.
            </p>
                <center>
  <p>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/icono_user.png" />
            </p>
                </center>
              
        </div>
            </div>
    </form>

    
<!-- Checkbox del menu VERTICAL -->
<input type="checkbox" id="btn-menu" />
<div class="container-menu">
    <div class="cont-menu">
        <nav>
            <h1 style="color: white;">Menú administrador</h1>
            <a href="user.aspx">Inicio</a>
            <a href="PlantillasVF.aspx">Planillas</a>
            <a href="facturas.aspx">Facturas</a>
            <a href="login.aspx">Salir</a>
        </nav>
        <label for="btn-menu" class="icon-equis"></label>
    </div>
</div>

</body>
</html>

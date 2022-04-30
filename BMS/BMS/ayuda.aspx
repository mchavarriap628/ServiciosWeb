<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ayuda.aspx.cs" Inherits="BMS.ayuda" %>

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
                <h1>Business Management Plus - Sección de ayuda</h1>
                <p>
                    Si tiene problemas con la aplicación, puede seguir las siguientes indicaciones.
                </p>
                
                <p>1. Muchos problemas también son causados por la memoria de su computadoa y porque<br />
                   no se ha reiniciado en varios días, trate reiniciando su equipo. Ver video.</p>
                <video width="320" height="240" controls="controls">
                    <source src="media/reiniciar.mp4" type="video/mp4"/>
                </video>

                <p>2. Ya que es una aplicación web, es muy probable que el problema sea en su navegador<br />
                   trate actualizando a la ultima versión. Ver imagenes.</p>
                <img src="media/ayuda1.png" alt="imagen 1 - entrar a la configuración" style="width:700px;height:350px;">
                <img src="media/ayuda2.png" alt="imagen 2 - actualizar el navegador" style="width:700px;height:350px;">

            </div>
        </div>
    </form>


    <!-- Checkbox del menu VERTICAL -->
    <input type="checkbox" id="btn-menu" />
    <div class="container-menu">
        <div class="cont-menu">
            <nav>
                <h1 style="color: white;">Menú de ayuda</h1>
                <a href="user.aspx">Regresar</a>
                <a href="login.aspx">Salir</a>
            </nav>
            <label for="btn-menu" class="icon-equis"></label>
        </div>
    </div>

</body>
</html>

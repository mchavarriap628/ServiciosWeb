<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Design_Test.aspx.cs" Inherits="BMS.Design_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<!-- Selecciono el diseño de CSS -->
<link href="css/general.css" rel="stylesheet" />
<link href="css/iconos.css" rel="stylesheet" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pruebas con CSS</title>
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
        <!-- Coloco el recuadro del fondo de las pantallas-->
        <div class="general-box">
            <img class="avatar" src="images/general_icon.png" alt="Logo de BMP" />
        <!-- Titulo de la pagina -->
        <h1>Prueba de estilo CSS</h1>
            
        <!-- INICIO DE TEXTBOX, BOTONES, ETC -->
            <label>Esto es un label, donde vamos a describir la información requerida</label>
            <textbox>Esto es un textbox<br />
            </textbox>
            <textbox>
            <input type="submit" value="Esto es un boton con estilo" />
        <!-- FIN DE TEXTBOX, BOTONES, ETC -->

            </textbox>

        </div>
    </form>

<!-- Checkbox del menu VERTICAL -->
<input type="checkbox" id="btn-menu" />
<div class="container-menu">
    <div class="cont-menu">
        <nav>
            <a href="#">Titulo 1</a>
            <a href="#">Titulo 2</a>
            <a href="#">Titulo 3</a>
            <a href="#">Titulo 4</a>
            <a href="login.aspx">Salir</a>
        </nav>
        <label for="btn-menu" class="icon-equis"></label>
    </div>
</div>

</body>
</html>

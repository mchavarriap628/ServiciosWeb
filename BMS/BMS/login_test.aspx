<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_test.aspx.cs" Inherits="BMS.WebForm1" %>

<!DOCTYPE html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="css/master.css" rel="stylesheet" />

    <title>Login Business Managment Plus</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <img class="avatar" src="images/main_icon.png" alt="Logo de BMP" />
            <h1>Login</h1>
            <form>
                <!-- Ingreso de datos de usuario-->
                <label for="username">Nombre de usuario</label>
                <input type="text" placeholder="Ingrese el usuario" id="txtUsuario"/>

                <!-- Ingreso de datos de clave-->
                <label for="password">Contraseña</label>
                <input type="password" placeholder="Ingrese la contraseña" id="txtPassword" />

                <input type="submit" value="Ingresar" />
         
            </form>

        </div>
    </form>
</body>

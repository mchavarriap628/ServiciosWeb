<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearUser.aspx.cs" Inherits="BMS.crearUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Selecciono el diseño de CSS -->
<link href="css/general.css" rel="stylesheet" />
<link href="css/iconos.css" rel="stylesheet" />


<head runat="server">
    <title>BMP Crear usuario</title>
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
            <center>

 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Crear empleado"></asp:Label>
            </center>
        <div>
           
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNombre" runat="server" Width="238px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Label ID="Label3" runat="server" Text="Correo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCorreo" runat="server" Width="241px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Role"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="listRol" runat="server" Height="22px" Width="245px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black">
            <asp:ListItem>empleado</asp:ListItem>
            <asp:ListItem>contador</asp:ListItem>
            <asp:ListItem>admin</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Salario"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSalario" runat="server" Width="237px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtContrasena" runat="server" Width="233px" TextMode="Password" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        &nbsp;
        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" CssClass="boton_validar"/>
        <br />
        <br />
            <center>
                <asp:Button ID="btnCrearEmpleado" runat="server" OnClick="btnCrearEmpleado_Click" Text="Crear" CssClass="boton_general"/>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Limpiar" CssClass="boton_general"/>
        &nbsp;&nbsp;
        <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver" CssClass="boton_general" />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editarUser.aspx.cs" Inherits="BMS.editarUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Selecciono el diseño de CSS -->
<link href="css/general.css" rel="stylesheet" />
<link href="css/iconos.css" rel="stylesheet" />

<head runat="server">
    <title>BMP Editar usuario</title>
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
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Editar empleado"></asp:Label>

                </center>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Correo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:DropDownList ID="ListCorreoUsers" runat="server" DataSourceID="SqlDataSource1" DataTextField="correo" DataValueField="correo" Height="17px" style="margin-left: 12px" Width="206px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:serviciosWebDBConnectionString %>" SelectCommand="SELECT [correo] FROM [usuarios]"></asp:SqlDataSource>
            <asp:Button ID="btnEditar" runat="server" OnClick="btnEditar_Click" Text="Editar" CssClass="boton_validar"/>
            <br />
        </div>
        <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNombre" runat="server" Width="196px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Salario"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSalario" runat="server" Height="16px" Width="194px" style="margin-left: 5px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Role"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ListRoles" runat="server" Height="16px" Width="199px" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black">
            <asp:ListItem>empleado</asp:ListItem>
            <asp:ListItem>contador</asp:ListItem>
            <asp:ListItem>admin</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLimpiar" runat="server" OnClick="Button2_Click" Text="Restablecer contraseña" Width="199px" CssClass="boton_general"/>
        <br />
        <asp:Label ID="LabelContrasena" runat="server" Text="Nueva contraseña" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtContrasena" runat="server" Width="198px" style="margin-left: 5px" TextMode="Password" Visible="False" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black"></asp:TextBox>
        &nbsp;<asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" Visible="False" Width="64px" CssClass="boton_general" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            <center>
                <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" CssClass="boton_general"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Limpiar" CssClass="boton_general"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver" CssClass="boton_general"/>
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

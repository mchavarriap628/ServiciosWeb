<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editarUser.aspx.cs" Inherits="BMS.editarUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Editar empleado"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Correo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:DropDownList ID="ListCorreoUsers" runat="server" DataSourceID="SqlDataSource1" DataTextField="correo" DataValueField="correo" Height="17px" style="margin-left: 12px" Width="206px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:serviciosWebDBConnectionString %>" SelectCommand="SELECT [correo] FROM [usuarios]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="btnEditar" runat="server" OnClick="btnEditar_Click" Text="Editar" />
            <br />
            <br />
        </div>
        <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNombre" runat="server" Width="196px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Salario"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSalario" runat="server" Height="16px" Width="194px" style="margin-left: 5px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Role"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ListRoles" runat="server" Height="16px" Width="199px">
            <asp:ListItem>empleado</asp:ListItem>
            <asp:ListItem>contador</asp:ListItem>
            <asp:ListItem>admin</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLimpiar" runat="server" OnClick="Button2_Click" Text="Restablecer contraseña" Width="199px" />
        <br />
        <br />
        <asp:Label ID="LabelContrasena" runat="server" Text="Nueva contraseña" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtContrasena" runat="server" Width="198px" style="margin-left: 5px" TextMode="Password" Visible="False"></asp:TextBox>
        &nbsp;<asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" Visible="False" Width="64px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Limpiar" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver" />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
    </form>
</body>
</html>

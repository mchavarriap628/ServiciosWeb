<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="BMS.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Business Management Plus - Acceso de administrador"></asp:Label>
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="Aquí usted puede realizar tareas del area administrativa, como crear, editar y eliminar empleados."></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnAddUser" runat="server" OnClick="btnAddUser_Click" Text="Crear empleado" Width="222px" />
        <br />
        <br />
        <asp:Button ID="btnEditUser" runat="server" OnClick="btnEditUser_Click" Text="Editar empleado" Width="223px" />
        <br />
        <br />
        <asp:Button ID="btnDeleteUser" runat="server" OnClick="btnDeleteUser_Click" Text="Eliminar empleado" Width="222px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSalir" runat="server" OnClick="btnSalir_Click" Text="Salir" Width="132px" />
    </form>
</body>
</html>

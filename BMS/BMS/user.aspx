<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="BMS.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Business Management Plus - Acceso de contador</h1>
            <p>Aquí usted puede realizar tareas del area financiera, como llevar el control de la planilla<br />
                y las facturas pendientes tanto como generar y enviar nuevas facturas.
            </p>
        </div>
        <p>
            <asp:Button ID="btnPlanillas" runat="server" OnClick="btnPlanillas_Click" Text="Planillas" Width="200px" />
        </p>
        <asp:Button ID="btnFacturas" runat="server" OnClick="btnFacturas_Click" Text="Facturas" Width="200px" />
    </form>
</body>
</html>

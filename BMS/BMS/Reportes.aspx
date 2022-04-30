<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="BMS.Reportes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Selecciono el diseño de CSS -->
<link href="css/general.css" rel="stylesheet" />
<link href="css/iconos.css" rel="stylesheet" />

<head runat="server">
    <title>BMP Reportes</title>
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
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Reporte de Facturas"></asp:Label>
            </center>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Filtrar por estado"></asp:Label>
            &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" BorderStyle="Double" BackColor="#c0c0c0" ForeColor="Black">
                    <asp:ListItem>pendiente</asp:ListItem>
                    <asp:ListItem>cancelado</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Filtrar" CssClass="boton_validar" AutoGenerateColumns="False" DataKeyNames="estadoFactura" DataSourceID="SqlDataSource"/>
                <br />
            <br />
        
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="166px" Width="758px" Font-Size="Small">
                    <Columns>
                        <asp:BoundField DataField="numeroFactura" HeaderText="Número de Factura" SortExpression="numeroFactura" />
                        <asp:BoundField DataField="nombreCliente" HeaderText="Cliente" SortExpression="nombreCliente" />
                        <asp:BoundField DataField="estadoFactura" HeaderText="Estado" SortExpression="estadoFactura" />
                        <asp:BoundField DataField="monto" HeaderText="Monto" SortExpression="monto" />
                        <asp:BoundField DataField="descripcionFactura" HeaderText="Descripcion" SortExpression="descripcionFactura" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:serviciosWebDBConnectionString %>" SelectCommand="SELECT [numeroFactura], [nombreCliente], [estadoFactura], [monto], [descripcionFactura] FROM [facturas] WHERE ([estadoFactura] = @estadoFactura)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="estadoFactura" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
        
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
            <a href="Reportes.aspx">Reportes</a>
            <a href="login.aspx">Salir</a>
        </nav>
        <label for="btn-menu" class="icon-equis"></label>
    </div>
</div>
</body>
</html>

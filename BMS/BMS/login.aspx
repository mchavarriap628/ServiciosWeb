<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BMS.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- CSS para login -->
<link href="css/master.css" rel="stylesheet" />

<head runat="server">
    <title>BMP Login</title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="login-box">
            <img class="avatar" src="images/main_icon.png" alt="Logo de BMP" />
            <h1>Login BMP</h1>
            <form>
                <asp:Table ID="Table1" runat="server" Width="487px">
                <asp:TableRow runat="server">

                    <asp:TableCell runat="server">
                        <meta charset="utf-8" />
                    </asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Center">
                        <!--Login-->
                        <asp:Table ID="tbLogin" runat="server">
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">Nombre de usuario  </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtUsuario" runat="server" BorderColor="White" TextMode="Email"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server" HorizontalAlign="Left">Contraseña  </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtPassword" runat="server" BorderColor="White" TextMode="Password"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" HorizontalAlign="Center">
                                <asp:TableCell runat="server" ColumnSpan="2">
                                    <br/>
                                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" Width="200px" BackColor="#ffcc00" ForeColor="Black" OnClick="btnLogin_Click"/>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" HorizontalAlign="Center">
                                <asp:TableCell runat="server" ColumnSpan="2">
                                    <br/>
                                    <asp:Label ID="txtQueryResult" runat="server" Text="..."></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                        </asp:Table>
                        <!--Login-->
                    </asp:TableCell>

                </asp:TableRow>
            </asp:Table>
            </form>
            

        </div>


        


    </form>
</body>
</html>

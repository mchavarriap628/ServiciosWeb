<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BMS.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Design/Style.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h1>Business Managment Plus</h1>
            <br />
            <br />
            <br />
            <br />
            <asp:Table ID="Table1" runat="server" Width="652px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <meta charset="utf-8" />
                        <b id="docs-internal-guid-a1bf283c-7fff-2490-b118-2c3552778e18" style="font-weight:normal;"><span style="font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"><span style="border:none;display:inline-block;overflow:hidden;width:324px;height:234px;">
                        <img height="234" src="https://lh4.googleusercontent.com/6G9WaCsS6ctlJLCbxCeLzKKGVub2gAm-QyCJQPvuBzcsHVSXNDmC1Xb-5yDRbfdvlh7zlZJVArUds_5Fs2-deiUHxfBvGcwhPZ3xFLhE3A4EbCBGKPxoXH3Wm6sEyGtDyBNHM3Lu" style="margin-left:0px;margin-top:0px;" width="324" /></span></span></b></p>
                    </asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Center">
                        <!--Login-->
                        <asp:Table ID="tbLogin" runat="server">
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server" HorizontalAlign="Left">Nombre de usuario</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" BorderColor="Black" TextMode="Email"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server" HorizontalAlign="Left">Contraseña</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" BorderColor="Black" TextMode="Password"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" HorizontalAlign="Center">
                                <asp:TableCell runat="server" ColumnSpan="2">
                                    <br/>
                                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" Width="200px"  BackColor="Black" ForeColor="White" OnClick="btnLogin_Click"/>
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
            <br />
            <br />

        </div>


        


    </form>
</body>
</html>

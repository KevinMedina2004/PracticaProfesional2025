<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PracticaProfesional2025.Login" %>

<html lang="es">
<head>
    <title>Bienvenidos!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="Contenido/Login/css/Login.css">
</head>
<body>
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">Ingreso</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-7 col-lg-5">
                    <div class="wrap">
                        <div class="img" style="background-image: url('Contenido/fondo_login.jpg');"></div>
                        <div class="login-wrap p-4 p-md-5">

                            <!-- FORMULARIO PRINCIPAL -->
                            <form id="Form1" runat="server" class="signin-form">

                                <!-- LOGIN -->
                                <h3 class="mb-4">Inicia Sesión</h3>
                                <div class="form-group mt-3">
                                    <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server" />
                                    <label class="form-control-placeholder">Mail</label>
                                </div>
                                <div class="form-group mt-3">
                                    <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" />
                                    <label class="form-control-placeholder">Contraseña</label>
                                </div>
                                <div class="form-group mt-3">
                                    <asp:Button ID="btnLogin" CssClass="form-control btn btn-primary rounded submit px-3"
                                                Text="Ingresar" runat="server" OnClick="btnLogin_Click" />
                                </div>
                                <asp:Label ID="lblMensaje" ForeColor="Red" runat="server" />

                                <!-- PANEL DE REGISTRO -->
                                <asp:Panel ID="pnlRegistro" runat="server" Visible="false" CssClass="login-wrap p-4 p-md-5 mt-3">
                                    <h3 class="mb-4">Registro de Usuario</h3>

                                    <div class="form-group mt-3">
                                        <asp:TextBox ID="txtNombreReg" CssClass="form-control" runat="server" />
                                        <label class="form-control-placeholder">Nombre</label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <asp:TextBox ID="txtApellidoReg" CssClass="form-control" runat="server" />
                                        <label class="form-control-placeholder">Apellido</label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <asp:TextBox ID="txtMailReg" CssClass="form-control" runat="server" />
                                        <label class="form-control-placeholder">Email</label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <asp:TextBox ID="txtPasswordReg" CssClass="form-control" TextMode="Password" runat="server" />
                                        <label class="form-control-placeholder">Contraseña</label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <asp:Button ID="btnRegistrar" CssClass="form-control btn btn-primary rounded submit px-3"
                                                    Text="Registrarse" runat="server" OnClick="btnRegistrar_Click" />
                                    </div>
                                    <asp:Label ID="lblMensajeReg" ForeColor="Red" runat="server" />
                                </asp:Panel>

                                <p class="text-center mt-3">
                                    <asp:LinkButton ID="lnkMostrarRegistro" runat="server" OnClick="lnkMostrarRegistro_Click">
                                        Registrate
                                    </asp:LinkButton>
                                </p>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="Contenido/Login/js/jquery.min.js"></script>
    <script src="Contenido/Login/js/popper.js"></script>
    <script src="Contenido/Login/js/bootstrap.min.js"></script>
    <script src="Contenido/Login/js/main.js"></script>
</body>
</html>

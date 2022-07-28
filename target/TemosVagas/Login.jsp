<%-- 
    Document   : Login
    Created on : 29 de out. de 2021, 21:10:23
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- Site made with Mobirise Website Builder v5.4.1, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.4.1, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/mbr-96x80.png" type="image/x-icon">
  <meta name="description" content="">
  
  
  <title>Login</title>
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  <link href="Login.css" rel="stylesheet" type="text/css"/>
  
  
  
</head>
<body>

    <section data-bs-version="5.1" class="menu menu1 cid-sK3aBAB1Gq" once="menu" id="menu1-m">


        <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
            <div class="container-fluid">
                <div class="navbar-brand">
                    <span class="navbar-logo">
                        <a href="Home.html">
                            <img src="assets/images/mbr-96x80.png" alt="Mobirise" style="height: 3.3rem;">
                        </a>
                    </span>
                    <span class="navbar-caption-wrap"><a class="navbar-caption text-black display-5" href="https://mobiri.se">TemosVagas</a></span>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-bs-toggle="collapse" data-target="#navbarSupportedContent" data-bs-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <div class="hamburger">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
                        <li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="Home.html">Home</a></li>
                        <li class="nav-item dropdown"><a class="nav-link link text-black text-primary dropdown-toggle display-4" href="#" data-toggle="dropdown-submenu" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Para Usuários</a><div class="dropdown-menu" aria-labelledby="dropdown-undefined"><a class="text-black text-primary dropdown-item display-4" href="CadastroUsuario.html">Cadastre seu Usuário</a><a class="text-black text-primary show dropdown-item display-4" href="Home.html#content6-g" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Vagas<br></a><a class="text-black text-primary show dropdown-item display-4" href="Impressao.html" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="true">Impressão da Documentação</a></div></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link link text-black dropdown-toggle show display-4" href="#" data-toggle="dropdown-submenu" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Para Empresas</a><div class="dropdown-menu show" aria-labelledby="dropdown-undefined" data-bs-popper="none"><a class="text-black dropdown-item text-primary display-4" href="CadastroEmpresa.html">Cadastre sua Empresa<br></a><a class="text-black show dropdown-item text-primary display-4" href="CadastroVaga.jsp" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Cadastro de Vagas<br></a></div>
                        </li>
                        <li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="Login.jsp">Login</a></li>
                    </ul>
                    <div class="icons-menu">
                        <a class="iconfont-wrapper" href="https://mobiri.se" target="_blank">
                            <span class="p-2 mbr-iconfont socicon-facebook socicon"></span>
                        </a>
                        <a class="iconfont-wrapper" href="https://mobiri.se" target="_blank">
                            <span class="p-2 mbr-iconfont socicon-twitter socicon"></span>
                        </a>
                        <a class="iconfont-wrapper" href="https://mobiri.se" target="_blank">
                            <span class="p-2 mbr-iconfont socicon-instagram socicon"></span>
                        </a>
                        <a class="iconfont-wrapper" href="https://mobiri.se" target="_blank">
                            <span class="p-2 mbr-iconfont socicon-mail socicon"></span>
                        </a>
                    </div>

                </div>
            </div>
        </nav>
    </section>

    <section data-bs-version="5.1" class="content5 cid-sKHTnhJPcU" id="content5-x">

                     <%
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        
        if(usuario!=null && senha!=null && !usuario.isEmpty() && !senha.isEmpty())
      {
      if (usuario.equals("adm") && (senha.equals("123") ))
      {
          session.setAttribute("usuario", usuario);
            response.sendRedirect("Home.html");
                     }
        
        }
        %>

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <div class="container">
            <form action="Login.jsp">
                <div class="title">Login</div>
                <div class="input-box underline">
                    <input type="text" name="usuario" placeholder="Insira seu E-mail ou CNPJ" required>
                    <div class="underline"></div>
                </div>
                <div class="input-box">
                    <input type="password" name="senha" placeholder="Insira sua Senha" required>
                    <div class="underline"></div>
                </div>
                <div class="input-box button">
                    <input type="submit" name="buttom" value="Continue">
                    
                </div>
            </form>
            

        
            <div class="option">ou conecte com sua Social Media</div>
            <div class="twitter">
                <a href="#"><i class="fab fa-twitter"></i>Login com Twitter</a>
            </div>
            <div class="facebook">
                <a href="#"><i class="fab fa-facebook-f"></i>Login com Facebook</a>
            </div>
        </div>

        </section><section style="background-color: #fff; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Helvetica Neue', Arial, sans-serif; color:#aaa; font-size:12px; padding: 0; align-items: center; display: flex;"><a href="https://mobirise.site/i" style="flex: 1 1; height: 3rem; padding-left: 1rem;"></a><p style="flex: 0 0 auto; margin:0; padding-right:1rem;"><a href="https://mobirise.site/d" style="color:#aaa;">This page</a> was started with Mobirise</p></section>
        <script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/smoothscroll/smooth-scroll.js"></script>
        <script src="assets/ytplayer/index.js"></script>
        <script src="assets/dropdown/js/navbar-dropdown.js"></script>
        <script src="assets/theme/js/script.js"></script>


    </body>
</html>
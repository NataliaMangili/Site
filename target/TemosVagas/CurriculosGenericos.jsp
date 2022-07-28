<%-- 
    Document   : Vagas
    Created on : 9 de nov. de 2021, 00:37:59
    Author     : User
--%>

<%@page import="Controle.Banco.FormGenerico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
       FormGenerico formgenerico;


       HttpSession sessao = request.getSession();
       formgenerico = (FormGenerico) sessao.getAttribute("FORMGENERICO");
   %>
   

  <html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.4.1, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.4.1, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/mbr-96x80.png" type="image/x-icon">
  <meta name="description" content="">
  
  
  <title>CadGenerico</title>
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  
  <section data-bs-version="5.1" class="menu menu1 cid-sK3aBAB1Gq" once="menu" id="menu1-1g">
    

    <nav class="navbar navbar-dropdown navbar-expand-lg">
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
                <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="Home.html">Home</a></li>
                    <li class="nav-item dropdown"><a class="nav-link link text-black text-primary dropdown-toggle display-4" href="#" data-toggle="dropdown-submenu" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Para Usuários</a><div class="dropdown-menu" aria-labelledby="dropdown-undefined"><a class="text-black text-primary dropdown-item display-4" href="CadastroUsuario.html">Cadastre seu Usuário</a><a class="text-black text-primary show dropdown-item display-4" href="Home.html#content6-g" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Vagas<br></a><a class="text-black text-primary show dropdown-item display-4" href="Impressao.html" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="true">Impressão da Documentação</a></div></li>
                    <li class="nav-item dropdown"><a class="nav-link link text-black dropdown-toggle display-4" href="#" data-toggle="dropdown-submenu" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Para Empresas</a><div class="dropdown-menu" aria-labelledby="dropdown-undefined"><a class="text-black dropdown-item text-primary display-4" href="CadastroEmpresa.html">Cadastre sua Empresa<br></a><a class="text-black show dropdown-item text-primary display-4" href="CadastroVaga.html" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Cadastro de Vagas<br></a></div>
                    </li><li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="Login.jsp">Login</a></li></ul>
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
    <br>
    <br>
    <br>
<section data-bs-version="5.1" class="content8 cid-sOIiX94AMj" id="content8-1i">
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="counter-container col-md-12 col-lg-10">
                
                <div class="mbr-text mbr-fonts-style display-7">
                    <ul>
                        <li><strong>Nome Completo:&nbsp;</strong><%=formgenerico.getNomeCompleto() %></li>
                        <li><strong>Email:&nbsp;</strong><%=formgenerico.getEmail() %></li>
                        <li><strong>Telefone:&nbsp;</strong><%=formgenerico.getTel() %></li>
                        <li><strong>PDF do Curriculo:&nbsp;</strong>Baixar</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
    <br>
    <br>
<section data-bs-version="5.1" class="content8 cid-sOIjrm1L6f" id="content8-1l">
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="counter-container col-md-12 col-lg-10">
                
                <div class="mbr-text mbr-fonts-style display-7">
                    <ul>
                     <li><strong>Nome Completo:&nbsp;</strong>Ainda não enviado</li>
                        <li><strong>Email:&nbsp;</strong></li>
                        <li><strong>Telefone:&nbsp;</strong></li>
                        <li><strong>PDF do Curriculo:&nbsp;</strong>Baixar</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
    <br>
    <br>
<section data-bs-version="5.1" class="content8 cid-sOIjrOFmAz" id="content8-1m">
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="counter-container col-md-12 col-lg-10">
                
                <div class="mbr-text mbr-fonts-style display-7">
                    <ul>
                        <li><strong>Nome Completo:&nbsp;</strong>Ainda não enviado</li>
                        <li><strong>Email:&nbsp;</strong></li>
                        <li><strong>Telefone:&nbsp;</strong></li>
                        <li><strong>PDF do Curriculo:&nbsp;</strong>Baixar</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
    <br>
    <br>
<section data-bs-version="5.1" class="footer3 cid-sKHX89bvj6" once="footers" id="footer3-1h">

    

    

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="row row-links">
                <ul class="foot-menu">
                    
                    
                    
                    
                    
                <li class="foot-menu-item mbr-fonts-style display-7">Vagas</li><li class="foot-menu-item mbr-fonts-style display-7">Usuários</li><li class="foot-menu-item mbr-fonts-style display-7">Empresas</li></ul>
            </div>
            <div class="row social-row">
                <div class="social-list align-right pb-2">
                    
                    
                    
                    
                    
                    
                <div class="soc-item">
                        <a href="https://twitter.com/mobirise" target="_blank">
                            <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://www.facebook.com/pages/Mobirise/1616226671953247" target="_blank">
                            <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://www.youtube.com/c/mobirise" target="_blank">
                            <span class="mbr-iconfont mbr-iconfont-social socicon-mail socicon"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://instagram.com/mobirise" target="_blank">
                            <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social"></span>
                        </a>
                    </div></div>
            </div>
            <div class="row row-copirayt">
                <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">
                    © Copyright 2025 Mobirise. All Rights Reserved.
                </p>
            </div>
        </div>
    </div>
</section><section style="background-color: #fff; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Helvetica Neue', Arial, sans-serif; color:#aaa; font-size:12px; padding: 0; align-items: center; display: flex;"><a href="https://mobirise.site/x" style="flex: 1 1; height: 3rem; padding-left: 1rem;"></a><p style="flex: 0 0 auto; margin:0; padding-right:1rem;">Design a web page with <a href="https://mobirise.site/z" style="color:#aaa;">Mobirise</a></p></section><script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>  <script src="assets/smoothscroll/smooth-scroll.js"></script>  <script src="assets/ytplayer/index.js"></script>  <script src="assets/dropdown/js/navbar-dropdown.js"></script>  <script src="assets/theme/js/script.js"></script>  
  
  
</body>
</html>
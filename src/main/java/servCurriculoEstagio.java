/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Controle.Banco.FormEstagio;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class servCurriculoEstagio extends HttpServlet {

    //Objetos Globais
    FormEstagio formestagio;
    
    String e;
    String destino = "/Home.html";
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private void recebeDados(HttpServletRequest request) {
        
        String nomeCompleto = request.getParameter("nomeCompleto");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String cursoAtual = request.getParameter("cursoAtual");
        
        
        preencherFormEstagio(nomeCompleto, email, telefone, cursoAtual);
          
    }
        
    private void preencherFormEstagio(String nomecompleto, String email, String telefone, String cursoAtual) {
       
        formestagio = new FormEstagio(); //inicialização de objeto
        formestagio.setNomeCompleto(nomecompleto);
        formestagio.setEmail(email);
        formestagio.setTelefone(telefone);
        formestagio.setCursoAtual(cursoAtual);

        
    }
        
        private void redirecionar(HttpServletRequest request, HttpServletResponse response) {
     
        HttpSession session = request.getSession();
        session.setAttribute("FORMESTAGIO", formestagio);
        
        RequestDispatcher rd = request.getRequestDispatcher
            (destino);
        
        try {
            rd.forward(request, response);
        } catch (Exception e) {
            this.e = e.getMessage();
        }
        
    }
 
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        recebeDados(request);
        redirecionar(request, response);
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title></title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h3> </h3>");
            out.println("<h1> </h1>");
            out.println("<p>"+this.e+"</p>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}

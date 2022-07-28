/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Controle.Banco.FormTrainee;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class serCurriculos extends HttpServlet {

    //Objetos Globais
    FormTrainee formtrainee;
    
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
        
        String txtNome = request.getParameter("txtNome");
        String txtEmail = request.getParameter("txtEmail");
        String txtTelefone = request.getParameter("txtTelefone");
        String txtCurso = request.getParameter("txtCurso");
        
        
        preencherFormTrainee(txtEmail, txtNome, txtTelefone, txtCurso);
          
    }
        
    private void preencherFormTrainee(String txtNome, String txtEmail, String txtTelefone, String txtCurso) {
       
        formtrainee = new FormTrainee(); 
        formtrainee.setTxtNome(txtNome);
        formtrainee.setTxtEmail(txtEmail);
        formtrainee.setTxtTelefone(txtTelefone);
        formtrainee.setTxtCurso(txtCurso);

        
    }
        
        private void redirecionar(HttpServletRequest request, HttpServletResponse response) {
     
        HttpSession session = request.getSession();
        session.setAttribute("FORMTRAINEE", formtrainee);
        
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

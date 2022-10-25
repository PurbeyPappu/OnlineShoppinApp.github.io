/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.e.commerce.servlets;

import com.mycompany.e.commerce.entities.User;
import com.mycompany.e.commerce.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */

public class RegisterServlets extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            try{
              String userName = request.getParameter("user_name");
              String userEmail = request.getParameter("user_email");
              String userPassword = request.getParameter("user_password");
              String userPhone = request.getParameter("user_phone");
              String userAddress = request.getParameter("user_address");
              
              // validations
              if(userName.isEmpty())
              {
                  out.println("Name is Blank");
                  return;
              }
              
              //creating user object to store data
               
            User user = new User(userName,userEmail,  userPassword, userPhone, "default.jpg",  userAddress, "normal");
                Session hibernateSession = FactoryProvider.getFactory().openSession();
            
            
                Transaction tx = hibernateSession.beginTransaction();
               int userId= (int) hibernateSession.save(user);
                
                
                tx.commit();
                hibernateSession.close();
                HttpSession  httpSession = request.getSession();
                httpSession.setAttribute("message", "Registration Successful !! "
                        + "your UserId is : "+userId+
                           "  keep it safe for future use..." );
                response.sendRedirect("register.jsp");
                return;
            }
            
            catch(Exception e)
            {
                e.printStackTrace();
            }
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
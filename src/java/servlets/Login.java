/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import daos.UserDAO;
import daos.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mahrous
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
        HttpSession userSession = request.getSession();
        if (userSession != null) {
            String username = userSession.getAttribute("username").toString();
            String password = userSession.getAttribute("password").toString();
            UserDAO regUser = null;
            for (UserDAO foundUser : Users.registeredUsers) {
                if (foundUser.getUsername().equals(username) && foundUser.getPassword().equals(password)) {
                    regUser = foundUser;
                }

            }
            if (regUser != null) {
                regUser.setStatus(Users.Status.offline);
            }
            userSession.invalidate();
        }
        response.sendRedirect("Login.jsp");
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
        String username, password;
        username = request.getParameter("username");
        password = request.getParameter("password");
        if (username != null && password != null) {
            UserDAO regUser = null;
            for (UserDAO foundUser : Users.registeredUsers) {
                if (foundUser.getUsername().equals(username) && foundUser.getPassword().equals(password)) {
                    regUser = foundUser;
                }
            }

            if (regUser != null) {
                HttpSession userSession = request.getSession(true);
                userSession.setAttribute("username", username);
                userSession.setAttribute("password", password);
                regUser.setStatus(Users.Status.online);
                request.getRequestDispatcher("ChatRoom.jsp").forward(request, response);
            } else {
                response.sendRedirect("Login.jsp");
            }
        } else {
            response.sendRedirect("Registration.jsp");
        }
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

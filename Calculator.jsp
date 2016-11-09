<!-- INDEX HTML -->

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>SIMPLE CALCULATOR</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
         
        <p class="sansserif">1.Addition</p>
        <p class="sansserif">2.Subtraction</p>
        <p class="sansserif">3.Division</p></p>       
        <p class="sansserif">4.Multiplication</p>
        <form  name="myForm" action="Cal"  method="POST" >
       Input 1:<input type="text" id="num1" name="num1" required>
       Input 2:<input type="text" id="num2" name="num2" required>
       Option:<input type="text" id="c" name="c" required>
       <input type="submit" value="submit">
         
        </form>
        
       
         
       
    </body>
</html>
****************************************************************************************************************************************
<!-- Call.JAVA -->
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pradeep.kk
 */
@WebServlet(urlPatterns = {"/Cal"})
public class Cal extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
                int r = 0;
                String op = null;
            String num1 = request.getParameter("num1");
            String num2 = request.getParameter("num2");
            String c = request.getParameter("c");

            Integer n1 = Integer.parseInt(num1);
            Integer n2 = Integer.parseInt(num2);
            Integer choice = Integer.parseInt(c);
            //'n' as a Scanner class object with "System.in" as constructor argument
                      
             
              
              switch (choice) {
                    case 1: {
                         r = n1 + n2;
                        System.out.print("Sum :" + r);
                        op="Sum";
                        break;
                    } // end case 1

                    case 2: {
                         r = n1 - n2;
                        System.out.print("Difference :" + r);
                          op="Difference";
                        break;
                    } // end case 2

                    case 3: {
                         r = n1 / n2;
                        System.out.print("Division :" + r);
                          op="Division";
                        break;
                    } // end case 3

                    case 4: {
                         r = n1 * n2;
                        System.out.print("Product :" + r);
                          op="Product";
                        break;
                    }  // end case 4

                    default: {
                        System.out.print("Invalid Input, try again");
                        break;
                    }  // end default

                } // end switch

              request.setAttribute("r", r);
              request.setAttribute("op", op); 
              request.setAttribute("n1", n1);
              request.setAttribute("n2", n2);
              
            RequestDispatcher dispatcher1 = request.getRequestDispatcher("index.html");
            dispatcher1.forward(request, response);
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

***********************************************************************************************************************************
<!-- RESULT.JSP -->
<%-- 
    Document   : Result
    Created on : 9 Nov, 2016, 11:06:05 AM
    Author     : pradeep.kk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <style>
h1 {
    color: darkorchid;
    font-family: verdana;
    font-size: 300%;
    text-align: center;

}
p  {
    color: red;
    font-family: courier;
    font-size: 160%;
     text-align: center;
}
</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ANSWER</h1>
        <p class="sansserif">The <%=request.getAttribute("op")%> of <%=request.getAttribute("n1")%> and <%=request.getAttribute("n2")%> is <%=request.getAttribute("r")%></p>
    </body>
</html>



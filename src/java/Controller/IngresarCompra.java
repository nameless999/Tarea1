/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Modelo.Registro;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
/**
 *
 * @author nameless999
 */
public class IngresarCompra extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            HttpSession session = request.getSession();
            Calendar fecha = new GregorianCalendar();
            int year = fecha.get(Calendar.YEAR);
            int mes = fecha.get(Calendar.MONTH)+1;
            int dia = fecha.get(Calendar.DAY_OF_MONTH);
            int hora = fecha.get(Calendar.HOUR_OF_DAY);
            int minuto = fecha.get(Calendar.MINUTE);
            int segundo = fecha.get(Calendar.SECOND);
            String date = dia+"/"+mes+"/"+year;
            String hour = hora+":"+(minuto < 10 ? "0"+minuto : minuto)+":"+(segundo < 10 ? "0"+segundo : segundo);
            int i;

 
            String Contador = request.getParameter("Contador");
            session.setAttribute("Contador", Contador);
            Registro ingCompra = new Registro();
            int montoTotal;
            JOptionPane.showMessageDialog(null, Contador);
            for(i=1; i <= Integer.parseInt((String) request.getParameter("Contador")); i++ ){
                montoTotal = Integer.parseInt(request.getParameter("precio"+i))* Integer.parseInt(request.getParameter("cantidad"+i));
                ingCompra.IngresarCompra(Integer.parseInt((String) request.getParameter("producto"+i)), montoTotal, date , hour);
                session.setAttribute("producto"+i, Integer.parseInt((String) request.getParameter("producto"+i)));
                session.setAttribute("montoTotal"+i, montoTotal);
                session.setAttribute("precio"+i,  Integer.parseInt(request.getParameter("precio"+i)));
                ingCompra.ObtenerProductoid(Integer.parseInt((String) request.getParameter("producto"+i)));
                session.setAttribute("id_producto"+i, ingCompra.getId_producto());
            }



            session.setAttribute("date", date);
            session.setAttribute("hour", hour);
            JOptionPane.showMessageDialog(null, "Compra ingresada exitosamente");
            response.sendRedirect("Views/Administrador/ResultadosCompras.jsp");
            //ingCompra.IngresarCompra(hora, minuto, dma, dma);

        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

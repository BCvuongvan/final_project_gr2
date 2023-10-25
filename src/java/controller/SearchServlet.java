/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Product;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "Search", urlPatterns = {"/Search"})
public class SearchServlet extends HttpServlet {

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
        try {
            String txtSearch = request.getParameter("search");
            DAO db = new DAO();
            
            System.out.println("ABC");
            
            //Tạo biến index
            String indexString = request.getParameter("index");
            int index = Integer.parseInt(indexString);
            
            // Giá trị tìm kiếm do người dùng nhập vào
            int count = db.countProduct(txtSearch); 
            
            //set số lượng sản phẩm có thể có cho 1 trang
            int pageSize = 4;
            
            //set trang cuối là trang số mấy dựa vào số lượng sp
            int endPage = 0;
            endPage = count / pageSize;
            //nếu số lượng sản phẩm tìm được còn dư ra sẽ tạo thêm 1 trang nữa
            if(count % pageSize != 0){
                endPage++;
            }
            
            //tạo list chứa sản phẩm cho từng trang
            List<Product> listSearch = db.search(txtSearch, index, pageSize);
           
            request.setAttribute("save", txtSearch);
            request.setAttribute("index", index);
            
            request.setAttribute("list", listSearch);
            request.setAttribute("end", endPage);
            request.getRequestDispatcher("search.jsp").forward(request, response);
        } catch (Exception e) {
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

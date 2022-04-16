package pl.coderslab;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/add")
public class Add_User_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        User user = new User();
        user.setUserName(request.getParameter("userName"));
        user.setEmail(request.getParameter("userEmail"));
        user.setPassword(request.getParameter("userPassword"));
        userDao.create(user);


        response.sendRedirect("/list");
    }
}

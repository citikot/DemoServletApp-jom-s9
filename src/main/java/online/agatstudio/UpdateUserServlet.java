package online.agatstudio;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/users/update")
public class UpdateUserServlet extends HttpServlet {

    private UserDao userDao;

    private int userId;

    private User user;

    public void init() {
        userDao = UserDao.getInstance();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        user.setUserName(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        userDao.update(user.getId(), user);
        response.sendRedirect("/users/list");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        user = userDao.read( Integer.parseInt(request.getParameter("id")));
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/update-user.jsp").forward(request, response);
    }
}

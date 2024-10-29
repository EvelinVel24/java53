package servlet;

import dao.ListarDao;
import dao.ListarDaoImpl;
import dto.Usuario;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/usuarios")
public class UsuarioServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ListarDao listarDao = new ListarDaoImpl();
        List<Usuario> usuarios = listarDao.listarUsuarios();

        request.setAttribute("usuarios", usuarios);
        request.getRequestDispatcher("empleado.jsp").forward(request, response);
    }
}


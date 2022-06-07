package Controleur;

import Beans.etudiant;
import Dao.etudiantdao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class controleur extends HttpServlet {

    private static final long serialVersionUID = 1L;

    etudiantdao etudiantdao;

    public void init() throws ServletException {

        etudiantdao = new etudiantdao();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();
        HttpSession session = request.getSession();

        if (path.equals("/index.do")) {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        if (path.equals("/data.do")) {
            request.getRequestDispatcher("data.jsp").forward(request, response);
        }
         if (path.equals("/cssi.do")) {
            request.getRequestDispatcher("cssi.jsp").forward(request, response);
        }
          if (path.equals("/itirc.do")) {
            request.getRequestDispatcher("itirc.jsp").forward(request, response);
        }
        if (path.equals("/aboutus.do")) {
            request.getRequestDispatcher("aboutus.jsp").forward(request, response);
        }
        if (path.equals("/contactus.do")) {
            request.getRequestDispatcher("contactus.jsp").forward(request, response);}
        if (path.equals("/login.do")) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        if (path.equals("/register.do")) {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
     
        if (path.equals("/reg.do") && (request.getMethod().equals("POST"))) {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String password_confirm = request.getParameter("password_confirm");
            if (!username.equals("") && !email.equals("") && !password.equals("") && !password_confirm.equals("")) {
                if (password.equals(password_confirm)) {

                    etudiant e = new etudiant();
                    
                    e.setUsername(username);
                    e.setEmail(email);
                    e.setPassword(password);
                    

                    etudiantdao.register(e);
                    int id = etudiantdao.login(email, password);
                    etudiant X = etudiantdao.select(id);
                    session.setAttribute("etudiant", X);
                    request.getRequestDispatcher("home.jsp").forward(request, response);
                } else {
                    String message = "le mot de pass est incorect";
                    request.setAttribute("message", message);
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            } else {
                String message = "saisé tout les chanps";
                request.setAttribute("message", message);
                request.getRequestDispatcher("regester.jsp").forward(request, response);
            }
        }

        if (path.equals("/log.do") && (request.getMethod().equals("POST"))) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            if (!email.equals("") && !password.equals("")) {
                int id = etudiantdao.login(email, password);

                if (id == -1) {
                    String message = "email or password incorrect";
                    request.setAttribute("message", message);
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    etudiant X = etudiantdao.select(id);
                    session.setAttribute("etudiant", X);
                    request.getRequestDispatcher("home.jsp").forward(request, response);
                }
            } else {
                String message = "remplez vous tous les champs ";
                request.setAttribute("message", message);
                request.getRequestDispatcher("login.jsp").forward(request, response);

            }
        }
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              doGet(request, response);
    }
}

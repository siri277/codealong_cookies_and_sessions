

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/controller")
public class CookieController extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String name = request.getParameter("name");
			String pass = request.getParameter("pass");
			
			//cookie
			Cookie ck = new Cookie("Username",name);
			response.addCookie(ck);
			
			//session
			HttpSession session = request.getSession();
			session.setAttribute("password", pass);
		
			response.sendRedirect("result.jsp");
		}

}

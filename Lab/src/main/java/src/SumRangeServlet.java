package src;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sumrange")
public class SumRangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SumRangeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setAttribute("result", 0);
		req.getRequestDispatcher("/views/sumrange/index.jsp").forward(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int a = Integer.valueOf(req.getParameter("a"));
		int b = Integer.valueOf(req.getParameter("b"));
		
		int result = 0;
		for(int i = a; i <= b; i++) {
			result += i;
		}
		
		req.setAttribute("result", result);
		req.getRequestDispatcher("/views/sumrange/index.jsp").forward(req, res);
	}

}

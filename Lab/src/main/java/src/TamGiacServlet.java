package src;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/tamgiac", "/dientich", "/chuvi"})
public class TamGiacServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TamGiacServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/tamgiac/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		double a = Double.valueOf(request.getParameter("a"));
		double b = Double.valueOf(request.getParameter("b"));
		double c = Double.valueOf(request.getParameter("c"));
		
		double cv = 0;
		double dt = 0;
		String message = "";
		
		if ((a + b > c) && (a + c > b) && (b + c > a) ) {
			String uri = request.getRequestURI();
			cv = a + b + c;
			if(uri.contains("chuvi")) {
				request.setAttribute("message", "Chu vi cua tam giac la: " + cv + "cm");
			} else {
				dt = Math.sqrt(cv * (a + b - c) * (a + c - b) * (b + c - a))/4;
				request.setAttribute("message", "Dien tich cua tam giac la: " + dt + "cm2");
			}
		} else {
			message = "Tam Giac khong hop le";
			request.setAttribute("message", message);
		}
		
		request.getRequestDispatcher("/views/tamgiac/index.jsp").forward(request, response);
	}
	
	
}

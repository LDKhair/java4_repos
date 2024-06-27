package src;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TriangleServlet
 */
@WebServlet("/triangle")
public class TriangleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TriangleServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/triangle/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		double a = Double.parseDouble(request.getParameter("a"));
		double b = Double.parseDouble(request.getParameter("b"));
		double c = Double.parseDouble(request.getParameter("c"));

		String result;
		if (isValidTriangle(a, b, c)) {
			result = "Kind of triangle: " + getTriangleType(a, b, c);
		} else {
			result = "Not a triangle";
		}
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("/views/triangle/index.jsp").forward(request, response);
	}

	private boolean isValidTriangle(double a, double b, double c) {
		return a + b > c && a + c > b && b + c > a;
	}

	private String getTriangleType(double a, double b, double c) {
		if (a == b && b == c) {
			return "Equilateral triangle";
		} else if (a == b || b == c || a == c) {
			if (isRightTriangle(a, b, c)) {
				return "Triangle right angle";
			} else {
				return "Isosceles triangle";
			}
		} else if (isRightTriangle(a, b, c)) {
			return "Right triangle";
		} else {
			return "Regular triangle";
		}
	}

	private boolean isRightTriangle(double a, double b, double c) {
		double max = Math.max(a, Math.max(b, c));
		if (max == a) {
			return Math.pow(a, 2) == Math.pow(b, 2) + Math.pow(c, 2);
		} else if (max == b) {
			return Math.pow(b, 2) == Math.pow(a, 2) + Math.pow(c, 2);
		} else {
			return Math.pow(c, 2) == Math.pow(a, 2) + Math.pow(b, 2);
		}
	}
}

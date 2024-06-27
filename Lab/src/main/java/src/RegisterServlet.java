package src;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/register/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// setting language
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		// create variables
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String nation = request.getParameter("nation");
		String note = request.getParameter("notes");
		boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
		boolean married = (request.getParameter("married") != null);
		String hobbies = Arrays.toString(request.getParameterValues("hobbies"));
		String stringHobbies = hobbies.substring(1, hobbies.length() - 1);

		// check data
		System.out.println(">>username: " + username);
		System.out.println(">>password: " + password);
		System.out.println(">>gender: " + (gender ? "Nam" : "Nu"));
		System.out.println(">>married: " + (married ? "Da ket hon" : "Chua ket hon"));
		System.out.println(">>hobbies: " + stringHobbies);

		// create OB
		HashMap<String, Object> x = new HashMap<>();
		x.put("username", username);
		x.put("password", password);
		x.put("nation", nation);
		x.put("gender", (gender ? "Male" : "Female"));
		x.put("married", (married ? "Marrried" : "Single"));
		x.put("hobbies", stringHobbies);
		x.put("note", (note.length() != 0 ? note : "None"));

		// set attribute and get request
		request.setAttribute("user", x);
		request.getRequestDispatcher("/views/register/information.jsp").forward(request, response);
	}

}

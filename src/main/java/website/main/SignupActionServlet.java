package website.main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignupServlet
 */
public class SignupActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		fieldValidator = new FieldValidator();

	}

	private FieldValidator fieldValidator;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignupActionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		System.out.println("post got called!");
		insertValues(request);

		// respond
		String fullName = request.getParameter("fullname");
		Map requestMap = request.getParameterMap();
		List<String> errors = fieldValidator.validateMap(requestMap);
		System.out.println("errors = " + errors);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			String jsonString = objectMapper.writeValueAsString(errors);
			System.out.println(jsonString);
			response.setContentType("application/json");
			response.getWriter().append(jsonString);
		} catch (Exception e) {
			e.printStackTrace();
		}
//		String errorMessage = fieldValidator.validateFullName(fullName);
//		if (errorMessage == null) {
//			response.setContentType("application/json");
//			response.getWriter().append(jso);
//
//		} else {
//			response.setContentType("application/json");
//			response.getWriter().append("{\"error\":\"" + errorMessage + "\"}");
//
//		}
	}

	public static void insertValues(HttpServletRequest request) {
		// Assuming you have a Connection object, replace the connection URL, username,
		// and password
		String jdbcUrl = "jdbc:postgresql://localhost/gg?user=postgres&password=postgres";

		try (Connection connection = DriverManager.getConnection(jdbcUrl)) {

			// Replace "your_database" with your actual database name
			String insertQuery = "INSERT INTO users (username, full_name, email, phone_number, password_hash) VALUES (?, ?, ?, ?, ?)";

			try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {

				// Assuming your columns have specific names; replace them accordingly
				preparedStatement.setObject(1, request.getParameter("username"));
				preparedStatement.setObject(2, request.getParameter("fullname"));
				preparedStatement.setObject(3, request.getParameter("email"));
				preparedStatement.setObject(4, request.getParameter("phonenumber"));

				// hash the password
				String passwordHash = BCrypt.hashpw(request.getParameter("password"), BCrypt.gensalt());
				System.out.println(passwordHash);

				preparedStatement.setObject(5, passwordHash);

				// Execute the insert statement for each entry
				preparedStatement.executeUpdate();
			}

			System.out.println("Data inserted into the users table successfully.");

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}

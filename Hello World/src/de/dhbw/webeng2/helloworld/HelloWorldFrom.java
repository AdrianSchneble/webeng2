package de.dhbw.webeng2.helloworld;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorldFrom
 */
@WebServlet("/HelloWorldFrom")
public class HelloWorldFrom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorldFrom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		appendPrefix(response).append("GET").append(getCurrentTime());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		appendPrefix(response).append("POST").append(getCurrentTime());;
	}
	
	private PrintWriter appendPrefix(HttpServletResponse response) throws IOException {
		return response.getWriter().append("Hello World from ");
	}

	private String getCurrentTime() {
		return new SimpleDateFormat(" '// Time =' HH:mm:ss").format(new Date());
	}

}

package rems_servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rems_beans.DBConnector;

/**
 * Servlet implementation class Subscribe
 */
@WebServlet("/Subscribe")
public class Subscribe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Subscribe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String emid;
		
		emid=request.getParameter("em");
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		
		try {
		DBConnector dbc=new DBConnector();
		con=dbc.getDbconnection();
		pst=con.prepareStatement("insert into subscribe values(?);");
		pst.setString(1, emid);
		pst.executeUpdate();
		out.println("<html>");
		out.println("<center>");
		out.println("<h2 Style='color:green'>Successfully Subscribed...!</h2><hr>");
		out.println("<a href='index.html'><b>Home</b></a> | <a href='login.html'><b>Login Page</b></a>");
		out.println("</html>");
		
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
	}

}

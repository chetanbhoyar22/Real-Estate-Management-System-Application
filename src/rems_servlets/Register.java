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
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nm,emid,ps,mob;
		
		nm=request.getParameter("usrnm");
		emid=request.getParameter("em");
		mob=request.getParameter("mn");
		ps=request.getParameter("psw");
		
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		
		try {
		DBConnector dbc=new DBConnector();
		con=dbc.getDbconnection();
		pst=con.prepareStatement("insert into userpersonal values(?,?,?,?);");
		pst.setString(1, nm);
		pst.setString(2, emid);
		pst.setString(3, mob);
		pst.setString(4, ps);
		pst.executeUpdate();
		
		out.println("<html>");
		out.println("<center>");
		out.println("<h2 Style='color:green'>Registration Successfully Completed...!</h2><hr>");
		out.println("<a href='login.html'><b>Login</b></a> | <a href='contact.html'><b>Contact Us</b></a>");
		out.println("</html>");
		
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	
	}


}

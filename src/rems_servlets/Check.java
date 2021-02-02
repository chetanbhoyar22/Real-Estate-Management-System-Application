package rems_servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rems_beans.DBConnector;

/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String emid,ps,ty;
		PrintWriter out=response.getWriter();
		emid=request.getParameter("em");
		ps=request.getParameter("psw");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try 
		{
			DBConnector dbc=new DBConnector();
			con=dbc.getDbconnection();
			pst=con.prepareStatement("select * from userpersonal where email=? and password=?;");
			pst.setString(1,emid);
			pst.setString(2,ps);
			rs=pst.executeQuery();
			if (rs.next()) 
			{
				HttpSession ses=request.getSession(true);
				ses.setAttribute("email",emid);
				ty=rs.getString("Name");
			if(ty.equals("Admincase"))
				response.sendRedirect("adminpanel.jsp");
			else
				response.sendRedirect("userdashboard.jsp");
			}
			else
				response.sendRedirect("failure.jsp");
			      
			con.close();
		    }	
		catch(Exception e)
		{
			out.println(e);
		}
	}

}

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
 * Servlet implementation class Change2
 */
@WebServlet("/Change2")
public class Change2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Change2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		String id,curps,newps,conps;
		id=request.getParameter("uid");
		curps=request.getParameter("curps");
		newps=request.getParameter("newps");
		conps=request.getParameter("conps");
		
		if(newps.equals(conps))
		{
			try
			{
				DBConnector dbc=new DBConnector();
				con=dbc.getDbconnection();
				pst=con.prepareStatement("update userpersonal set password=? where email=? and password=?;");
				pst.setString(1, newps);
				pst.setString(2,id);
				pst.setString(3,curps);
				int cnt=pst.executeUpdate();
				if(cnt==0){ 
						out.println("<html>");
						out.println("<center>");
						out.println("<h2 Style='color:red'>Email/Current Password is Incorrect</h2><hr>");	
				        out.println("<a href='changepassword.jsp'><b>Back</b></a>");
				        out.println("</html>");
				        }
			    else{ 
			    		out.println("<html>");
			    		out.println("<center>");
						out.println("<h2 Style='color:green'>Password Changed Successfully</h2><hr>");
						out.println("<a href='adminpanel.jsp'><b>Back</b></a>");
						out.println("</html>");
						con.close();
			    }
			}
			catch(Exception e)
			{
				out.println(e);
			}
		}
		else
		{
			out.println("<html>");
    		out.println("<center>");
			out.println("<h2 Style='color:red'>New Passwords is Mismatched</h2><hr>");
			out.println("<a href='changepassword.jsp'><b>Back</b></a>");
			out.println("</html>");
	}
	}

}

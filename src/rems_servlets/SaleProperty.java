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
 * Servlet implementation class SaleProperty
 */
@WebServlet("/SaleProperty")
public class SaleProperty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaleProperty() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String unm,addr,cty,mn,emid,ty,st,psfr,yr,pi,oi,prc,bamt;
		
		unm=request.getParameter("nm");
		addr=request.getParameter("ads");
		cty=request.getParameter("cit");
		mn=request.getParameter("mob");
		emid=request.getParameter("em");
		ty=request.getParameter("pt");
		st=request.getParameter("ps");
		psfr=request.getParameter("psf");
		yr=request.getParameter("yc");
		pi=request.getParameter("pd");
		oi=request.getParameter("pa");
		prc=request.getParameter("pr");
		bamt=request.getParameter("ba");

				
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		
		try {
		DBConnector dbc=new DBConnector();
		con=dbc.getDbconnection();
		pst=con.prepareStatement("insert into SOP values(?,?,?,?,?,?,?,?,?,?,?,?,?,default);");
		pst.setString(1, unm);
		pst.setString(2, addr);
		pst.setString(3, cty);
		pst.setString(4, mn);
		pst.setString(5, emid);
		pst.setString(6, ty);
		pst.setString(7, st);
		pst.setString(8, psfr);
		pst.setString(9, yr);
		pst.setString(10, pi);
		pst.setString(11, oi);
		pst.setString(12, prc);
		pst.setString(13, bamt);
		
		int n=pst.executeUpdate();
		if(n>0){
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<center>");
		out.println("<body bgcolor='LightYellow'>");
		out.println("<h2 Style='color:green'>Successfully Submitted...!</h2><hr>");
		out.println("<h3 Style='color:purple'>After Verification, We Will Update Soon..!</h3>");
		out.println("<a href='userdashboard.jsp'><b>Home</b></b> | <a href='contact.html'><b>Contact Us</b></a>");
		out.println("");
		out.println("</body>");
		out.println("</html>");
		con.close();
		}
		}
		catch(Exception e)
		{
			out.println(e);
		}
	
	}

}

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
 * Servlet implementation class Purchase
 */
@WebServlet("/Purchase")
public class Purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Purchase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String name,pname,mobn,add,mode,price;
		double amount;
		name=request.getParameter("nm");
		pname=request.getParameter("pnm");
		price=request.getParameter("ppr");
		mobn=request.getParameter("mob");
		add=request.getParameter("ads");
		amount=Double.parseDouble(request.getParameter("amt"));
		mode=request.getParameter("opt");
		
		
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		
		try {
		DBConnector dbc=new DBConnector();
		con=dbc.getDbconnection();
		pst=con.prepareStatement("insert into purchaseproperty values(?,?,?,?,?,?,?,now(),default);");
		pst.setString(1, name);
		pst.setString(2, pname);
		pst.setString(3, price);
		pst.setString(4, mobn);
		pst.setString(5, add);
		pst.setDouble(6, amount);
		pst.setString(7, mode);
        pst.executeUpdate();
        
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body bgcolor='LightYellow'>");
		out.println("<center>");
		out.println("<br>");
		out.println("<a href='pay.jsp'><h3><i>Click To Pay Amount</i></h3></a>");
		out.println("</body>");
		out.println("</html>");
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}

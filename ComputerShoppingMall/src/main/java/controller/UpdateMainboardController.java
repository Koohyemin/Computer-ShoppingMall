package controller;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MainboardDao;
import vo.Mainboard;

@WebServlet("/login/UpdateMainboardController")
public class UpdateMainboardController extends HttpServlet {
	private MainboardDao mainboardDao;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/deleteMainboardForm.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 변수등록
		int MainboardNo = 0;
		int price = 0;
		int quantity = 0;
		
		// request값 받기
		if(request.getParameter("MainboardNo")!= null && request.getParameter("MainboardNo") != "") {
			MainboardNo = Integer.parseInt(request.getParameter("MainboardNo"));
		}
		if(request.getParameter("price")!= null && request.getParameter("price") != "") {
			price = Integer.parseInt(request.getParameter("price"));
		}
		if(request.getParameter("quantity")!= null && request.getParameter("quantity") != "") {
			quantity = Integer.parseInt(request.getParameter("quantity"));
		}
		
		// 디버깅
		System.out.println(MainboardNo+"<-MainboardNo");
		System.out.println(price+"<-price");
		System.out.println(quantity+"<-quantity");
		
		// vo
		Mainboard m = new Mainboard();
		m.getMainboardNo();
		m.getPrice();
		m.getQuantity();
		
		// dao
		mainboardDao = new MainboardDao();
		mainboardDao.updateMainboard(m);
		
		response.sendRedirect(request.getContextPath()+"/DigitalDownloadController");
	}

}

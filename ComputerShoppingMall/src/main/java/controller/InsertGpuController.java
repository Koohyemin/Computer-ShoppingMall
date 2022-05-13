package controller;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GpuDao;
import vo.Gpu;

@WebServlet("/InsertGpuController")
public class InsertGpuController extends HttpServlet {
	private GpuDao gpuDao;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sessionCustomerId = (String)session.getAttribute("sessionCustomerId");
		System.out.println(sessionCustomerId+"<-sessionCustomerId");
		if(sessionCustomerId == null) {
			response.sendRedirect(request.getContextPath()+"/LoginController");
			return;
		}
		request.getRequestDispatcher("/WEB-INF/view/insertGpuForm.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String sessionCustomerId = (String)session.getAttribute("sessionCustomerId");
		// 로그인이 안되어있을시 로그인창으로 이동
		if(sessionCustomerId == null) {
			response.sendRedirect(request.getContextPath()+"/LoginController");
			return;
		}
		// 변수등록
		String gpuName = null;
		String companyName = null;
		String chipsetCompany = null;
		int gpuSize = 0;
		int price = 0;
		int quantity = 0;
		String memo = null;
		
		// request값 받아오기
		if(request.getParameter("gpuName") != null || request.getParameter("gpuName") !="") {
			gpuName = request.getParameter("gpuName");
		}
		if(request.getParameter("companyName") != null ||request.getParameter("companyName") !="") {
			companyName = request.getParameter("companyName");
		}
		if(request.getParameter("chipsetCompany") != null ||request.getParameter("chipsetCompany") !="") {
			chipsetCompany = request.getParameter("chipsetCompany");
		}
		if(request.getParameter("gpuSize") != null || request.getParameter("gpuSize") !="") {
			gpuSize = Integer.parseInt(request.getParameter("gpuSize"));
		}
		if(request.getParameter("price") != null || request.getParameter("price") !="") {
			price = Integer.parseInt(request.getParameter("price"));
		}
		if(request.getParameter("quantity") != null || request.getParameter("quantity") !="") {
			quantity = Integer.parseInt(request.getParameter("quantity"));
		}
		if(request.getParameter("memo") != null || request.getParameter("memo") !="") {
			memo = request.getParameter("memo");
		}
		
		// 디버깅
		System.out.println(gpuName+"<--gpuName");
		System.out.println(companyName+"<--companyName");
		System.out.println(chipsetCompany+"<--companyName");
		System.out.println(gpuSize+"gpuSize");
		System.out.println(price+"<--price");
		System.out.println(quantity+"<--quantity");
		System.out.println(memo+"<--memo");
		
		// vo
		Gpu g = new Gpu();
		g.setGpuName(gpuName);
		g.setCompanyName(companyName);
		g.setChipsetCompany(companyName);
		g.setGpuSize(gpuSize);
		g.setPrice(price);
		g.setQuantity(quantity);
		g.setMemo(memo);
		
		// dao insert
		gpuDao = new GpuDao();
		gpuDao.insertGpu(g);
		
		// 홈페이지 이동
		response.sendRedirect(request.getContextPath() + "/DigitalDownloadController");
	}

}
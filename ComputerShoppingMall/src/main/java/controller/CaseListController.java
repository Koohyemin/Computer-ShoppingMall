package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CaseDao;
import vo.Case;

@WebServlet("/CaseListController")
public class CaseListController extends HttpServlet {

	private CaseDao caseDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		caseDao = new CaseDao();
		// case 이름, 가격 정보
		ArrayList<Case> caseList = caseDao.selectCaseList();
		// case size
		ArrayList<String> caseSizeList = caseDao.caseSizeList();
		// gpu size
		ArrayList<String> gpuSizeList = caseDao.gpuSizeList();
		// bay64mm
		ArrayList<String> bay64mmList = caseDao.bay64mmList();
		// bay89mm
		ArrayList<String> bay89mmList = caseDao.bay89mmList();
		
		request.setAttribute("caseList", caseList);
		request.setAttribute("caseSizeList", caseSizeList);
		request.setAttribute("gpuSizeList", gpuSizeList);
		request.setAttribute("bay64mmList", bay64mmList);
		request.setAttribute("bay89mmList", bay89mmList);
		request.getRequestDispatcher("/WEB-INF/nonCustomer/caseList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
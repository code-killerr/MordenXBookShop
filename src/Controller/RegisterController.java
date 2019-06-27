package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.RegisterService;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userEmail=request.getParameter("useremail");
		String userName=request.getParameter("username");
		String userPassword=request.getParameter("password");
		//1:������ͻ�����Ӧ����������
		response.setContentType("text/html;charset=utf-8");
		//2:������ͻ����������Ӧ��out����
		PrintWriter out = response.getWriter();
		
		RegisterService registerService=new RegisterService();
		
		if(!registerService.judgeExist(userName)) {
			out.print("�û����Ѵ���");
			out.flush();
			out.close();
			return ;
		}else if(registerService.judgeScusse(userEmail,userName,userPassword)) {
			request.setAttribute("message", "ע��ɹ�������ǰ����½ҳ��");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	
	}

}

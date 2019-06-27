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
		//1:设置向客户的响应的内容类型
		response.setContentType("text/html;charset=utf-8");
		//2:创建向客户端浏览器响应的out对象
		PrintWriter out = response.getWriter();
		
		RegisterService registerService=new RegisterService();
		
		if(!registerService.judgeExist(userName)) {
			out.print("用户名已存在");
			out.flush();
			out.close();
			return ;
		}else if(registerService.judgeScusse(userEmail,userName,userPassword)) {
			request.setAttribute("message", "注册成功，即将前往登陆页面");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	
	}

}

package Controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.BookInfoModel;
import service.GetBookInfoService;

/**
 * Servlet implementation class GetBookInfo
 */
@WebServlet("/GetBookInfo")
public class GetBookInfoController extends HttpServlet {
	private static final long serialVersionUID = 1;
	GetBookInfoService bookInfoService=new GetBookInfoService();
	List<BookInfoModel> list=new ArrayList<>();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("bookType");
		String bookName=request.getParameter("bookName");
		//��ͨ�鼮��ѯ,����������ѯ
		if(bookName!=null) {
			try {
				list=bookInfoService.getBookInfoByName(bookName);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if(list.size()>0) {
			
				String path ="F:\\sts\\MordenXBookShop\\WebContent\\info";   // ����ļ�Ŀ¼��ĳ����·��  
				File file = new File(path,list.get(0).getBookPath());  
				FileReader fr = new FileReader(file);  //�ַ�������  
				BufferedReader br = new BufferedReader(fr);  //ʹ�ļ��ɰ��ж�ȡ�����л��幦��  
				StringBuffer strB = new StringBuffer();   //strB�����洢�ļ��������  
				String str = br.readLine();  
				while(str!=null){  
					strB.append(str).append("<br>"); 
					strB.append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"); //����ȡ�����ݷ���strB  
					str = br.readLine();  
				}  
				String s=strB.toString();
				list.get(0).setBookPath(s);
				br.close();
				request.setAttribute("bookInfo", list);
				request.getRequestDispatcher("bookInfo.jsp").forward(request, response);
				return;
				}else {
			
				}
		}
		
		//�������Ͳ�ѯ
		if(type!=null) {
			try {
				list=bookInfoService.getBookInfoByType(type);
				int i=list.size(),j=0;
				while(i>0) {
					String path ="F:\\sts\\MordenXBookShop\\WebContent\\info";   // ����ļ�Ŀ¼��ĳ����·��  
				    File file = new File(path,list.get(j).getBookPath());  
				    FileReader fr = new FileReader(file);  //�ַ�������  
				    BufferedReader br = new BufferedReader(fr);  //ʹ�ļ��ɰ��ж�ȡ�����л��幦��  
				    StringBuffer strB = new StringBuffer();   //strB�����洢�ļ��������  
				    String str = br.readLine();  
			        while(str!=null){  
			            strB.append(str).append("<br>"); 
			            str = br.readLine();  
			        }  
			        String s=strB.toString();
			        list.get(j).setBookPath(s);
			        br.close();
			        i--;
			        j++;
				}
				request.setAttribute("bookInfo", list);
				request.getRequestDispatcher("showBookByType.jsp").forward(request, response);
					return;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			request.setAttribute("message", "���޴����鼮");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}
	}

}

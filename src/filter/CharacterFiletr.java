package filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

public class CharacterFiletr implements Filter{

	/*String chara=null;
	//����
	@Override
	public void destroy() {
	}

	//�������в���
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		//�޸Ķ�������
		HttpServletRequest request= (HttpServletRequest) req;
		HttpServletResponse response=(HttpServletResponse) res;
		if(request.getMethod().equalsIgnoreCase("POST")){
			request.setCharacterEncoding(chara);
			response.setCharacterEncoding(chara);
			chain.doFilter(request, response);
			return;
		}else {
			request=new CharFilterRequest(request);
		}
		response.setCharacterEncoding(chara);
		chain.doFilter(request, response);
	}
	
	
	//����������ʱ������������������
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		//��ȡweb.xml�б����ʽ
		chara=arg0.getInitParameter("character");
		if(chara==null) {
			chara="utf-8";
		}
	}
	
	//�ڲ��࣬��дrequest��getParameter()����,��Get����ı����ΪUTF-8
	class CharFilterRequest extends HttpServletRequestWrapper{
		public CharFilterRequest(HttpServletRequest request) {
			super(request);
		}

		
		@Override
		public String getParameter(String name) {

			String res=null;
			try {
				if (super.getParameter(name)!=null) {
				res=new String(super.getParameter(name).getBytes("iso-8859-1"),chara);
				}	
			} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			}
			return res;
		}
	}*/
	
	

	

	    protected String encoding = null;
	    protected FilterConfig filterConfig = null;
	    protected boolean ignore = true;
	    public void destroy() {

	        this.encoding = null;
	        this.filterConfig = null;

	    }
	    public void doFilter(ServletRequest request, ServletResponse response,
	                         FilterChain chain) throws IOException,
	            ServletException {
	        if (ignore || (request.getCharacterEncoding() == null)) {
	            String encoding = selectEncoding(request);
	            if (encoding != null) {
	                request.setCharacterEncoding(encoding);
	            }
	        }
	        chain.doFilter(request, response);
	    }

	    public void init(FilterConfig filterConfig) throws ServletException {
	        this.filterConfig = filterConfig;
	        this.encoding = filterConfig.getInitParameter("encoding");
	        String value = filterConfig.getInitParameter("ignore");
	        if (value == null) {
	            this.ignore = true;
	        } else if (value.equalsIgnoreCase("true")) {
	            this.ignore = true;
	        } else if (value.equalsIgnoreCase("yes")) {
	            this.ignore = true;
	        } else {
	            this.ignore = false;
	        }
	    }
	    protected String selectEncoding(ServletRequest request) {
	        return (this.encoding);
	    }
	
	
}

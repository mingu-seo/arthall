package interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//수정
public class UserLoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest req, 
							HttpServletResponse res, 
							Object handler) throws Exception {
		
		// 로그인 세션이 존재하는지 확인
//		if (req.getSession().getAttribute("authUser") == null) {
//			// 로그인이 안되어 있는 상태
//			res.setContentType("text/html;charset=utf-8");
//			PrintWriter out = res.getWriter();
//			out.print("<script>");
//			out.print("alert(\"로그인후 사용가능합니다.\");");
//			out.print("location.href='/member/loginForm.do';");
//			out.print("</script>");
//			out.flush();
//			return false;
//		}
		
		return true;
	}
}

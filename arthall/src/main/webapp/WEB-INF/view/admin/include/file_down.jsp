<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ page import="java.io.*" %><%@ page import="java.net.*" %><%
String fileName = request.getParameter("file_name");
//자바에서 파일을 다운로드 (읽어들이기 다운로드하는 코드)
//
String savePath = "/upload/notice"; // 경롤를 만들어줌
ServletContext context = getServletContext();
String sFilePath = context.getRealPath(savePath)+"/"+fileName;
//String sFilePath = "D:/java/workspace/.../upload/"+fileName;
byte b[] = new byte[4096];
//FileInputStream in = new FileInputStream(sFilePath);
File f = new File(sFilePath);
BufferedInputStream in = new BufferedInputStream(new FileInputStream(f));
//ServletOutputStream out2 = response.getOutputStream();
BufferedOutputStream out2 = new BufferedOutputStream(response.getOutputStream());

String sMimeType = getServletContext().getMimeType(sFilePath);
System.out.println("sMimeType>>>"+sMimeType);
if (sMimeType == null) sMimeType = "application/octet-stream";


response.setContentType(sMimeType);
String agent = request.getHeader("User-Agent");
boolean ieBrowser = (agent.indexOf("MSIE") > -1 || agent.indexOf("Trident") > -1);


if (ieBrowser) {
	fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
} else {
	fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
}
response.setHeader("Content-Disposition", "attachment; filename="+fileName);

int numRead;

//while ((numRead = in.read(b, 0, b.length)) != -1) {
for (int i; (i=in.read(b)) != -1; ){
	out2.write(b, 0, i);
	out2.flush();
}
in.close();
out2.close();

%>
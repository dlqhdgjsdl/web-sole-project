<%@page import="sist.com.project.dao.bulltinbean"%>
<%@page import="sist.com.project.dao.OrangeDao"%>
<%@page import="sist.com.dao.BoardDao"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileUpload"%>
<%@page import="sist.com.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="bean" class="sist.com.project.dao.bulltinbean" scope="page" />
<jsp:setProperty property="writer" value="writer" name="bean" />
<jsp:setProperty property="name" value="name" name="bean" />
<jsp:setProperty property="age" value="age" name="bean" />
<jsp:setProperty property="team" value="team" name="bean" />
<jsp:setProperty property="nation" value="nation" name="bean" />
<jsp:setProperty property="contents" value="contents" name="bean" />
</head>
<body>
	<%
		String pathValue = "C:\\Users\\user\\Desktop\\eclipse_file\\eclipse-jee-2018-09-win32-x86_64\\jspMyBatis\\jspMyBatis\\WebContent\\project\\upimage\\";
		bulltinbean bulltinbean = new bulltinbean();
		String fileName = "";		
		String no=request.getParameter("no");
		String flag=request.getParameter("flag");
		String pageno=request.getParameter("page");
		bulltinbean.setNo(no!=null?Integer.parseInt(no):0);
		/* bulltinbean.setFlag(flag); */ 
		int index=0;
		String modifyfile=(String)session.getAttribute("modifyfile");
		 String []res=null;
		 res=modifyfile!=null?modifyfile.split("#"):null;	
		if (FileUpload.isMultipartContent(request)) {
			DiskFileUpload fileUpload = new DiskFileUpload();
			fileUpload.setRepositoryPath(pathValue);
			fileUpload.setSizeMax(1024 * 1024 * 3);
			List<FileItem> list = fileUpload.parseRequest(request);
			for (FileItem f : list) {
				//out.print("ctype="+f.getContentType()+" fieldName="+f.getFieldName()+"name="+f.getName()+"size="+f.getSize());
				String fieldName = f.getFieldName();
				if (fieldName.equals("writer")) {
					bulltinbean.setWriter(f.getString("EUC-KR"));
				}
				if (fieldName.equals("name")) {
					bulltinbean.setName(f.getString("EUC-KR"));
				}
				if (fieldName.equals("age")) {
					bulltinbean.setAge(f.getString("EUC-KR"));
				}
				if (fieldName.equals("team")) {
					bulltinbean.setTeam(f.getString("EUC-KR"));
				}
				if (fieldName.equals("nation")) {
					bulltinbean.setNation(f.getString("EUC-KR"));
				}
				if(fieldName.equals("contents")){
					bulltinbean.setContents(f.getString("EUC-KR"));
				}
				if (!f.isFormField()) {
									   
					if (f.getName() != null && f.getName().length() > 0) {
					    						 
						fileName += f.getName() + "#";
						if(flag.equals("mode1"))
						res[index]=f.getName();
						System.out.println(pathValue);
						System.out.println(f.getName());
						File file = new File(pathValue + f.getName());
						try {
							f.write(file);
						} catch (Exception e) {

						} //catch

					} //if
				index++;
				}

			} //for
			bulltinbean.setImage(fileName!=null&&!fileName.equals("")?fileName:"noimg.png");
			if(res!=null){
			String temp="";	
			for(String ss:res){
				temp+=(ss+"#");
			 }
			bulltinbean.setImage(temp);
			}
			//out.println("flag"+flag+" fileName"+fileName+" modFile="+modFile);
			if(flag.equals("mode1")&& bulltinbean.getImage().equalsIgnoreCase("noimg.png")){
				bulltinbean.setImage(modifyfile);
			}		
			
			out.println(bulltinbean);
			if(flag.equals("mode1")){
				OrangeDao.BoardUpdate(bulltinbean);
				response.sendRedirect("boardInfo.jsp?no="+bulltinbean.getNo()+"&page="+pageno);
				
			}else if(flag.equals("insert1")){
				 OrangeDao.BoardInsert(bulltinbean);
			     response.sendRedirect("borderlist.jsp");
			}			 

		}
	%>

</body>
</html>







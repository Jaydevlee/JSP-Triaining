<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
  <title>File Upload</title>
</head>
<body>
  <% 
   String path="C:\\upload";
  
   DiskFileUpload upload = new DiskFileUpload();
   
   upload.setSizeMax(5 * 1024 * 1024); //업로드할 파일의 최대 크기 지정
   upload.setSizeThreshold(4096); //메모리 상에 저장할 최대 크기
   upload.setRepositoryPath(path); // 업로드 된 파일의 임시 저장 경로
   
   List items = upload.parseRequest(request); //폼 페이지에서 전송된 요청 파라미터를 받도록 parseRequest()메소드 작성
   Iterator params = items.iterator(); //폼 페이지에서 전송된 요청 파라미터를 Iterator클래스로 변환

   while (params.hasNext()) { //폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 Iterator 객체 타입의 hasNext() 메소드 작성
       FileItem item = (FileItem) params.next(); //폼 페이지에서 전송된 요청 파라미터의 이름을 가져오도록 Iterator 객체 타입 next()메소드를 작성
       
       if (item.isFormField()) { //전송된 요청 파라미터가 일반 데이터이면 요청 파라미터의 이름과 값을 출력
           String name=item.getFieldName();
           String value=item.getString("utf-8");
           out.println(name + "=" + value + "<br>");
       } else {                  //전송된 요청 파라미터가 파일이면
    	   		String fileFieldName=item.getFieldName(); //요청 파라미터의 이름
    	   		String fileName = item.getName();         //저장 파일의 이름
    	   		String contentType=item.getContentType(); //파일 콘텐츠 유형
    	   		
           fileName=fileName.substring(fileName.lastIndexOf("\\") + 1);
           long fileSize=item.getSize(); //파일 크키에 대한 정보 출력
           
           File file=new File(path + "/" + fileName);
           item.write(file);
           
           out.println("--------------------------<br>");
           out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
           out.println("저장 파라미터 이름 : " + fileName + "<br>");
           out.println("파일 콘텐츠 이름 : " + contentType + "<br>");
           out.println("파일 크기 : " + fileSize);
       }
   }
  %>
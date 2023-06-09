<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%-- 
<c:set var="item"  value="${itemMap.item}"  />
<c:set var="imageFileList"  value="${itemMap.imageFileList}"  />

 --%>
<%
  request.setCharacterEncoding("UTF-8");
%> 

<head>
   <meta charset="UTF-8">
   <title>글보기</title>
   <style>
     #tr_file_upload{
       display:none;
     }
     #tr_btn_modify{
       display:none;
     }
   
   </style>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
   <script type="text/javascript" >
     function backToList(obj){
	    obj.action="${contextPath}/adboard/listItems.do";
	    obj.submit();
     }
 
	 function fn_enable(obj){
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("i_content").disabled=false;
		 document.getElementById("i_imageFileName").disabled=false;
		 document.getElementById("tr_btn_modify").style.display="block";
		 document.getElementById("tr_file_upload").style.display="block";
		 document.getElementById("tr_btn").style.display="none";
	 }
	 
	 function fn_modify_item(obj){
		 obj.action="${contextPath}/adboard/modItem.do";
		 obj.submit();
	 }
	 
	 function fn_remove_item(url,adboard_num){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var adboard_numInput = document.createElement("input");
	     adboard_numInput.setAttribute("type","hidden");
	     adboard_numInput.setAttribute("name","adboard_num");
	     adboard_numInput.setAttribute("value", adboard_num);
		 
	     form.appendChild(adboard_numInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function fn_reply_form(url, ){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var Input = document.createElement("input");
	     Input.setAttribute("type","hidden");
	     Input.setAttribute("name","");
	     Input.setAttribute("value", );
		 
	     form.appendChild(Input);
	     document.body.appendChild(form);
		 form.submit();
	 }
	 
	 function readURL(input) {
	     if (input.files && input.files[0]) {
	         var reader = new FileReader();
	         reader.onload = function (e) {
	             $('#preview').attr('src', e.target.result);
	         }
	         reader.readAsDataURL(input.files[0]);
	     }
	 }  
 </script>
</head>
<body>
  <form name="frmItem" method="post"  action="${contextPath}"  enctype="multipart/form-data">
  <table  border=0  align="center">
  
  <tr>
    <td width="150" align="center" bgcolor="#FF9933">
      작성자
   </td>
   <td >
    <input type=text value="${item.id }" name="writer"  disabled />
   </td>
  </tr>
   <tr>
    <td width="150" align="center" bgcolor="#FF9933">
      유형
   </td>
   <td >
    <input type=text value="${item.adboard_category }" name="writer"  disabled />
   </td>
  </tr>
  <tr>
    <td width="150" align="center" bgcolor="#FF9933">
      제목 
   </td>
   <td>
    <input type=text value="${item.adboard_title }"  name="adboard_title"  id="i_title" disabled />
   </td>   
  </tr>
  <tr>
    <td width="150" align="center" bgcolor="#FF9933">
      내용
   </td>
   <td>
    <textarea rows="20" cols="60"  name="ㅁㅇboard_content"  id="i_content"  disabled />${item.adboard_content }</textarea>
   </td>  
  </tr>
 <%-- 
 <c:if test="${not empty imageFileList && imageFileList!='null' }">
	  <c:forEach var="item" items="${imageFileList}" varStatus="status" >
		    <tr>
			    <td width="150" align="center" bgcolor="#FF9933"  rowspan="2">
			      이미지${status.count }
			   </td>
			   <td>
			     <input  type= "hidden"   name="originalFileName" value="${item.imageFileName }" />
			    <img src="${contextPath}/download.do?board_num=${item.board_num}&imageFileName=${item.imageFileName}" id="preview"  /><br>
			   </td>   
			  </tr>  
			  <tr>
			    <td>
			       <input  type="file"  name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);"   />
			    </td>
			 </tr>
		</c:forEach>
 </c:if>
 	 --%>    
 	 
  <c:choose> 
	  <c:when test="${not empty item.imageFileName && item.imageFileName!='null' }">
	   	<tr>
		    <td width="150" align="center" bgcolor="#FF9933"  rowspan="2">
		      이미지
		   </td>
		   <td>
		     <input  type= "hidden"   name="originalFileName" value="${item.imageFileName }" />
		    <img src="${contextPath}/download2.do?adboard_num=${item.adboard_num}&imageFileName=${item.imageFileName}" id="preview"  /><br>
		   </td>   
		  </tr>  
		  <tr>
		    <td ></td>
		    <td>
		       <input  type="file"  name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);"   />
		    </td>
		  </tr> 
		 </c:when>
		 <c:otherwise>
		    <tr  id="tr_file_upload" >
				    <td width="150" align="center" bgcolor="#FF9933"  rowspan="2">
				      이미지
				    </td>
				    <td>
				      <input  type= "hidden"   name="originalFileName" value="${item.imageFileName }" />
				    </td>
			    </tr>
			    <tr>
				    <td ></td>
				    <td>
				       <img id="preview"  /><br>
				       <input  type="file"  name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);"   />
				    </td>
			  </tr>
		 </c:otherwise>
	 </c:choose>
  <tr>
	   <td width="150" align="center" bgcolor="#FF9933">
	      등록일자
	   </td>
	   <td>
	    <input type=text value="<fmt:formatDate value="${item.writeDate}" />" disabled />
	   </td>   
  </tr>
  <tr   id="tr_btn_modify"  align="center"  >
	   <td colspan="2"   >
	       <input type=button value="수정반영하기"   onClick="fn_modify_item(frmitem)"  >
           <input type=button value="취소"  onClick="backToList(frmitem)">
	   </td>   
  </tr>
    
  <tr  id="tr_btn"    >
   <td colspan="2" align="center">
       <c:if test="${memberInfo.id == item.id || companyInfo.id == item.id }">
	      <input type=button value="수정하기" onClick="fn_enable(this.form)">
	      <input type=button value="삭제하기" onClick="fn_remove_item('${contextPath}/adboard/removeitem.do', ${item.adboard_num})">
	    </c:if>
	    <input type=button value="리스트로 돌아가기"  onClick="backToList(this.form)">
	     <input type=button value="답글쓰기"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${item.adboard_num})">
   </td>
  </tr>
 </table>
 </form>
</body>
</html>
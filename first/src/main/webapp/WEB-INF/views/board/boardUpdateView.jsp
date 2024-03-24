<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
 
 <c:set var="currentPage" value="${ requestScope.page }"/>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first</title>
</head>
<body>
<c:import url="/WEB-INF/views/common/menubar.jsp" />
<hr>

<h1 align="center">${ board.boardNum } 번 게시글 수정 페이지</h1>
<br>

<%-- 원글 수정 폼 : 첨부파일 수정 기능 포함 --%>
<c:if test="${ board.boardLev eq 1 }">
<!-- form 에서 입력값들과 파일을 함께 전송하려면 반드시 속성 추가해야 함 :  
	enctype="multipart/form-data"
-->
<form action="boriginupdate.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="boardNum" value="${ board.boardNum } ">
	<input type="hidden" name="page" value="${ currrentPage }">
	<input type="hidden" name="boardOriginalFileName" value="${ board.boardOriginalFileName }">
	<input type="hidden" name="boardRenameFileName" value="${ board.boardRenameFileName }">

<table align="center" width="500" border="1" cellspacing="0" cellpadding="5">
	<tr>
		<th>제 목</th>
		<td><input type="text" name="boardTitle" size="50" value="${ board.boardTitle }"></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><input type="text" name="boardWriter" readonly value="${ board.boardWriter }"></td>
	</tr>
	<tr>
		<th>첨부파일</th>
		<td>
		
		<c:if test="${ !empty board.boardOriginalFileName }">
			${ board.boardOriginalFileName } &nbsp; 
			<input type="checkbox" name="deleteFlag" value="yes"> 파일삭제 <br>
			변경 : <input type="file" name="upfile">
		</c:if>
		<c:if test="${ !empty board.boardOriginalFileName }">
			첨부된 파일 없음 <br>
			추가 : <input type="file" name="upfile">
		
		</c:if>
		</td>
	</tr>
	<tr>
		<th>내 용</th>
		<td><textarea rows="5" cols="50" name="boardContent">${ board.boardContent }</textarea></td>
	</tr>
	<tr>
		<th colspan="2">
			<input type="submit" value="수정하기"> &nbsp; 
			<input type="reset" value="수정취소"> &nbsp;
			<input type="button" value="이전페이지로 이동" 
			onclick="javascript:history.go(-1); return false;"> &nbsp;
			<input type="button" value="목록" 
			onclick="javascript:location.href='blist.do?page=${ currentPage }'; return false;">
		</th>		
	</tr>
</table>
</form>
<br>
</c:if>

<%-- 댓글, 대댓글 수정 폼 --%>
<c:if test="${ board.boardLev > 1 }">
<form action="breplyupdate.do" method="post">
	<input type="hidden" name="boardNum" value="${ board.boardNum }">
	<input type="hidden" name="page" value="${ currentPage }">
	
<table align="center" width="500" border="1" cellspacing="0" cellpadding="5">
	<tr>
		<th>제 목</th>
		<td><input type="text" name="boardTitle" size="50" value="${ board.boardTitle }"></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><input type="text" name="boardWriter" readonly value="${ board.boardWriter }"></td>
	</tr>	
	<tr>
		<th>내 용</th>
		<td><textarea rows="5" cols="50" name="boardContent">${ board.boardContent }</textarea></td>
	</tr>
	<tr>
		<th colspan="2">
			<input type="submit" value="수정하기"> &nbsp; 
			<input type="reset" value="수정취소"> &nbsp;
			<input type="button" value="이전페이지로 이동" 
			onclick="javascript:history.go(-1); return false;"> &nbsp;
			<input type="button" value="목록" 
			onclick="javascript:location.href='/first/blist.do?page=${ currentPage }'; return false;">
		</th>		
	</tr>
</table>
</form>
<br>
</c:if>

<hr>
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>






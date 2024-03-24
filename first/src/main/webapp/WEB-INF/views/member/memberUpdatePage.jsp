
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>first</title>
<style type="text/css">
table th { background-color: #9ff; }
table#outer { border: 2px solid navy; }
</style>
</head>
<body>
<h1 align="center">회원 정보 수정 페이지</h1>
<br>
<form action="mupdate.do" method="post">
	<!-- 원래 암호도 함께 전송함 -->
	<input type="hidden" name="origin_userpwd" value = "${ member.userPwd }">



<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">
	<tr><th colspan="2">등록된 회원정보는 아래와 같습니다.<br> 
	수정할 내용이 있으면 변경하고 수정하기 버튼을 누르세요.</th></tr>
	<tr><th width="120">아이디</th>
	<td><input type="text" name="userId" value="${ member.userId }" readonly>
	</td></tr>	
	<tr><th>이름</th>
	<td><input type="text" name="userName" value="${ member.userName  }" readonly></td></tr>
	<tr><th>암호</th>
	<td><input type="password" name="userPwd" id="userpwd" ></td></tr>
	<tr><th>암호확인</th>
	<td><input type="password" id="userpwd2" onblur="validate();"></td></tr>
	<tr><th>성별</th>
	<td>
		<% if(member.getGender().equals("M")){ %>
		<c:if test="${ member.gender eq 'M' }">
		<input type="radio" name="gender" value="M" checked> 남자 &nbsp;
		<input type="radio" name="gender" value="F"> 여자
		</c:if>
		<% }else{ %>
		<c:if test="${ member.gender eq 'F' }">
		<input type="radio" name="gender" value="M"> 남자 &nbsp;
		<input type="radio" name="gender" value="F" checked> 여자
		</c:if>
		<% } %>
	</td></tr>
	<tr><th>나이</th>
	<td><input type="number" name="age" min="19" value="${ member.age }"></td></tr>
	<tr><th>전화번호</th>
	<td><input type="tel" name="phone" value="${ member.phone }"></td></tr>
	<tr><th>이메일</th>
	<td><input type="email" name="email" value="${ member.email }"></td></tr>
	<tr><th>취미(연습용)</th>
	<%
		//예를 들어, hobby 로 응답온 값이 "game,sport,cook" 인 경우
		String hobby = "game,sport,cook";
	
		//하나의 문자열을 "," 로 각각 분리 처리
		String[] hobbies = hobby.split(",");
		
		//checkbox 의 checked 속성 설정을 위한 배열 만듦 : checkbox 갯수만큼
		String[] checked = new String[9];
		
		for(String hb : hobbies){
			switch(hb){
			case "game":  checked[0] = "checked"; break;
			case "reading":  checked[1] = "checked"; break;
			case "climb":  checked[2] = "checked"; break;
			case "sport":  checked[3] = "checked"; break;
			case "music":  checked[4] = "checked"; break;
			case "movie":  checked[5] = "checked"; break;
			case "travel":  checked[6] = "checked"; break;
			case "cook":  checked[7] = "checked"; break;
			case "etc":  checked[8] = "checked"; break;
			}
		}
		
	%>
	<td>
		<table width="350">
		<tr>
			<td><input type="checkbox" name="hobby" value="game" <%= checked[0] %>> 게임</td>
			<td><input type="checkbox" name="hobby" value="reading" <%= checked[1] %>> 독서</td>
			<td><input type="checkbox" name="hobby" value="climb" <%= checked[2] %>> 등산</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="hobby" value="sport" <%= checked[3] %>> 운동</td>
			<td><input type="checkbox" name="hobby" value="music" <%= checked[4] %>> 음악</td>
			<td><input type="checkbox" name="hobby" value="movie" <%= checked[5] %>> 영화</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="hobby" value="travel" <%= checked[6] %>> 여행</td>
			<td><input type="checkbox" name="hobby" value="gook" <%= checked[7] %>> 요리</td>
			<td><input type="checkbox" name="hobby" value="etc" <%= checked[8] %>> 기타</td>
		</tr>
		</table>
	</td></tr>	
	<tr><th colspan="2">
		<input type="submit" value="수정하기"> &nbsp;
		
		<c:url var="callMdel" value="mdel.do">
			<c:param name="userId" value="${ member.userId }"/>
		
		</c:url>
		<a href="${ callMdel }">탈퇴하기</a>
		
		<a href="javascript:history.go(-1);">이전 페이지로 이동</a> &nbsp;
		<a href="main.do">시작페이지로 이동</a>
	</th></tr>
</table>
</form>
</body>
</html>
 --%>

 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>first</title>
<style type="text/css">
table th { background-color: #9ff; }
table#outer { border: 2px solid navy; }
</style>
</head>
<body>
<h1 align="center">회원 정보 수정 페이지</h1>
<br>
<form action="mupdate.do" method="post">
	<!-- 원래 암호도 함께 전송함 -->
	<input type="hidden" name="origin_userpwd" value="${ member.userPwd }">

<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">
	<tr><th colspan="2">등록된 회원정보는 아래와 같습니다.<br> 
	수정할 내용이 있으면 변경하고 수정하기 버튼을 누르세요.</th></tr>
	<tr><th width="120">아이디</th>
	<td><input type="text" name="userId" value="${ member.userId }" readonly>
	</td></tr>	
	<tr><th>이름</th>
	<td><input type="text" name="userName" value="${ member.userName }" readonly></td></tr>
	<tr><th>암호</th>
	<td><input type="password" name="userPwd" id="userpwd"></td></tr>
	<tr><th>암호확인</th>
	<td><input type="password" id="userpwd2" onblur="validate();"></td></tr>
	<tr><th>성별</th>
	<td>
		<%-- <% if(member.getGender().equals("M")){ %> --%>
		<c:if test="${ member.gender eq 'M' }">
		<input type="radio" name="gender" value="M" checked> 남자 &nbsp;
		<input type="radio" name="gender" value="F"> 여자
		</c:if>
		<%-- <% }else{ %> --%>
		<c:if test="${ member.gender eq 'F' }">
		<input type="radio" name="gender" value="M"> 남자 &nbsp;
		<input type="radio" name="gender" value="F" checked> 여자
		</c:if>
		<%-- <% } %> --%>
	</td></tr>
	<tr><th>나이</th>
	<td><input type="number" name="age" min="19" value="${ member.age }"></td></tr>
	<tr><th>전화번호</th>
	<td><input type="tel" name="phone" value="${ member.phone }"></td></tr>
	<tr><th>이메일</th>
	<td><input type="email" name="email" value="${ member.email }"></td></tr>
	<tr><th>취미(연습용)</th>
	<%
		//예를 들어, hobby 로 응답온 값이 "game,sport,cook" 인 경우
		String hobby = "game,sport,cook";
	
		//하나의 문자열을 "," 로 각각 분리 처리
		String[] hobbies = hobby.split(",");
		
		//checkbox 의 checked 속성 설정을 위한 배열 만듦 : checkbox 갯수만큼
		String[] checked = new String[9];
		
		for(String hb : hobbies){
			switch(hb){
			case "game":  checked[0] = "checked"; break;
			case "reading":  checked[1] = "checked"; break;
			case "climb":  checked[2] = "checked"; break;
			case "sport":  checked[3] = "checked"; break;
			case "music":  checked[4] = "checked"; break;
			case "movie":  checked[5] = "checked"; break;
			case "travel":  checked[6] = "checked"; break;
			case "cook":  checked[7] = "checked"; break;
			case "etc":  checked[8] = "checked"; break;
			}
		}
		
	%>
	<td>
		<table width="350">
		<tr>
			<td><input type="checkbox" name="hobby" value="game" <%= checked[0] %>> 게임</td>
			<td><input type="checkbox" name="hobby" value="reading" <%= checked[1] %>> 독서</td>
			<td><input type="checkbox" name="hobby" value="climb" <%= checked[2] %>> 등산</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="hobby" value="sport" <%= checked[3] %>> 운동</td>
			<td><input type="checkbox" name="hobby" value="music" <%= checked[4] %>> 음악</td>
			<td><input type="checkbox" name="hobby" value="movie" <%= checked[5] %>> 영화</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="hobby" value="travel" <%= checked[6] %>> 여행</td>
			<td><input type="checkbox" name="hobby" value="gook" <%= checked[7] %>> 요리</td>
			<td><input type="checkbox" name="hobby" value="etc" <%= checked[8] %>> 기타</td>
		</tr>
		</table>
	</td></tr>	
	<tr><th colspan="2">
		<input type="submit" value="수정하기"> &nbsp;
		
		<c:url var="callMdel" value="mdel.do">
			<c:param name="userId" value="${ member.userId }" />
		</c:url>
		<a href="${ callMdel }">탈퇴하기</a>
		
		<a href="javascript:history.go(-1);">이전 페이지로 이동</a> &nbsp;
		<a href="main.do">시작페이지로 이동</a>
	</th></tr>
</table>
</form>
</body>
</html>
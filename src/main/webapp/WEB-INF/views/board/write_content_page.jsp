<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous"/>

</head>
<body>
<%--

	<jsp:include page="../commons/global_nav.jsp"></jsp:include>

	<div class="container mt-5">
		<div class="row">
			<div class="col-1"></div>
			<div class="col">
				<div class="row text-center">
					 //글쓰기 
					<div class="col">
						<h1>글쓰기</h1>
					</div>
				</div>
				<form
					action="${pageContext.request.contextPath}/board/write_content_process.do"
					method="post">

					<label for="validationTooltip01">제목</label> <input type="text"
						class="form-control" id="validationTooltip01" value="제목을 입력하세요."
						required>
					<div class="valid-tooltip">Looks good!</div>




					<div class="form-group">
						<label for="exampleFormControlTextarea1">내용</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3"></textarea>

					</div>
					<input type="submit" class="btn btn-primary btn-block" value="글쓰기">
				</form>
			</div>

			<div class="col-1"></div>

		</div>
	</div>
	 --%> 

	<form
		action="${pageContext.request.contextPath}/board/write_content_process.do"
		method="post">
			닉네임 : ${sessionUser.member_nick}<br> 
			제목 : <input type="text" name="board_title"><br> 
			내용 : <br>
		<textarea rows="10" cols="40" name="board_content"></textarea>
		<input type="submit" value="글쓰기">
	</form>





	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>


</body>
</html>
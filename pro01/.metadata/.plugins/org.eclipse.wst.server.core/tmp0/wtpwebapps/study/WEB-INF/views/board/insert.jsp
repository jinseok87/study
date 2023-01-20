<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<title>게시글 작성</title>
			</head>

			<body>
				<form name="board" action="/board/insert" method="post">
					<input type="hidden" type="text" name="depth" value="${depth}">
					<input type="hidden" type="text" name="parent_seq" value="${parent_seq}">
					<table>
						<tbody>
							<tr>
								<th>제목</th>
								<td><input type="text" name="title"></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><textarea name="content" cols="30" rows="10"></textarea></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><input type="text" name="nickname"></td>
							</tr>
						</tbody>
					</table>
				</form>
				<button onclick="goList()">리스트</button>
				<button onclick="goRegist()">등록</button>
			</body>
			<script>
				function goList() {
					location.href = "./list";
				}
				function goRegist() {
					document.board.submit();
				}
			
			</script>

			</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<title>게시판 목록</title>
			</head>

			<body>
				<table>
					<tbody>
						<tr>
							<th>글번호</th>
							<td>${dto.seq}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td>${dto.title}</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>${dto.content}</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>${dto.nickname}</td>
						</tr>
						<tr>
							<th>등록일</th>
							<td>${dto.regDate}</td>
						</tr>
						<tr>
							<th>조회수</th>
							<td>${dto.visited}</td>
						</tr>
					</tbody>
				</table>
				<button onclick="goList()">리스트</button>
				<button onclick="goEdit('${dto.seq}')">수정</button>
				<button onclick="goDetail('${dto.seq}')">삭제</button>
			</body>
			<script>
				function goList(){
					location.href="./list";
				}
				function goEdit(seq) {
						location.href = "./edit?seq"+seq;
				}
				function goDelete(seq) {
						location.href = "./delete?seq" + seq;
				}
			</script>

			</html>
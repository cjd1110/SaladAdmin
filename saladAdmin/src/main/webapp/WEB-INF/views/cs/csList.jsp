<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/default.css"> 
<link rel="stylesheet" type="text/css" href="../css/cs.css"> 
<title> </title>
</head>
<body>
		
		<div class="cs">
			
			<div>
				<select>
					<option value="전체">전체</option>
					<option value="상품문의">상품문의</option>
					<option value="배송문의">배송문의</option>
					<option value="반품/교환">반품/교환</option>
					<option value="기타문의">기타문의</option>
				</select>
			</div>
			
			<div class="cs_list">
			
				<div class="cs_box">
					<ul>
						<li>제목</li>
						<li>아이디</li>
						<li>주문번호</li>
						<li>카테고리</li>
					</ul>
					<div>
						글 내용
					</div>
					
					<!-- 답변이 업는 게시글에만 나오는 버튼 -->
					<div><a href="">답변쓰기</a></div>
					<!-- 답변이 있는 게시글에만 나오는 버튼 -->
					<div><a href="">답변보기</a></div>
				</div><!-- box -->
				
				<!-- 답변쓰기 버튼 클릭시 나옴 -->
				<div class="cs_wirte">
					<form action="" method="post">
						<textarea style="resize:none;"></textarea>
						<div><input type="submit" value="글쓰기" /></div>
					</form>
				</div><!-- write -->
				
				<!-- 답변보기 버튼 클릭시 나옴 -->
				<div class="cs_view">
						<p>답변</p>
					<div><a href="">수정</a></div>
					<div><a href="">삭제</a></div>
				</div>
				
			</div><!-- list -->
		
		</div>

</body>
</html>
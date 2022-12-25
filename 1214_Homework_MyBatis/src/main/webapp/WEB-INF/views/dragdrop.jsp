<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Drag&Drop</title>
<link rel="stylesheet" href="./css/dragdrop.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// todo 작성하기 버튼 클릭
	$(function() {

		/* 	$(document)
			.ready(
				function() {
						alert("로드");
						let list = document.getElementById('innertext').getElementByTagName("div");
						alert(list[0].val());
						});
		 */
		$(document).on("click", "#todowrite", function(e) {

			const todotext = $('#todotext');
			const todowrite = $('#todowrite');
			const todowriteok = $('#todowriteok');
			const todocancel = $('#todocancel');

			todotext.show();
			todowrite.hide();
			todowriteok.show();
			todocancel.show();

		});

		$(document).on("click", "#todocancel", function(e) {

			const todotext = $('#todotext');
			const todowrite = $('#todowrite');
			const todowriteok = $('#todowriteok');
			const todocancel = $('#todocancel');

			todotext.hide();
			todowrite.show();
			todowriteok.hide();
			todocancel.hide();

		});

		// todo 등록하기 버튼 클릭
		$(document)
				.on(
						"click",
						"#todowriteok",
						function setInnerHTML() {

							const todo = $('#todo');
						
							const data = todo.val();
							const element = document
									.getElementById('innertext');
							element.innerHTML += '<div class="list-group-item" draggable="true">'
									+ data
									+ '  <button id="todoedit">수정</button>'
									+ '  <button id="tododelete">삭제</button><div>';
									
						$(this).attr("#todo").val().empty();
						});

		// 등록된 todo 삭제 버튼 클릭
		$(document).on("click", "#tododelete", function tododelete() {

			
			const tododelete = $('#tododelete');

			$(this).parent().remove(); // 삭제 버튼의 부모요소 삭제

		});

		// 수정버튼 클릭
		$(document).on("click", "#todoedit", function todoedit() {

			const todoedit = $('#todoedit');
			$(this).parent().empty().append('<input class="list-group-item" type="text" id="todo1" name="todo"><button id="todoeditok">수정 완료</button>');
			
		});
		
		$(document).on("click", "#todoeditok", function todoedit() {

			
			
			const todo = $('#todo1');
			const data = todo.val();
			const element = document
					.getElementById('innertext');
			element.innerHTML += '<div class="list-group-item" draggable="true">'
					+ data
					+ '  <button id="todoedit">수정</button>'
					+ '  <button id="tododelete">삭제</button><div>';
					
			const todoeditok = $('#todoeditok');
			todoeditok.parent().remove();		
			
		});

	});
</script>
</head>
<body>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Sortable/1.14.0/Sortable.min.js"
		integrity="sha512-zYXldzJsDrNKV+odAwFYiDXV2Cy37cwizT+NkuiPGsa9X1dOz04eHvUWVuxaJ299GvcJT31ug2zO4itXBjFx4w=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<div class="column2">
		<div>

			<div id="todotext" style="display: none;">
				<input class="list-group-item" type="text" id="todo" name="todo">
			</div>
			<button id="todowrite">to-do 작성하기</button>
			<button id="todowriteok" style="display: none;">to-do등록하기</button>
			<button id="todocancel" style="display: none;">취소</button>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="column" id="innertext">
			<h1>to-do</h1>
			<div class="list-group-item" draggable="true">Fix workshop</div>
			<div class="list-group-item" draggable="true">Visit the zoo</div>
		</div>
		<div class="column">
			<h1>완료</h1>
		</div>
		<div class="column">
			<h1>실패</h1>
		</div>
		<div class="column">
			<h1>기타</h1>
		</div>

	</div>
	<br>
	<!-- <div class="column2">
		<div>
			<div class="list-group-item" draggable="true">Wash Clothes</div>
			<button type="submit">제출하기</button>
			<button type="reset">초기값으로 리셋하기</button>
		</div>
	</div> -->
	<script src="./js/dragdrop.js"></script>

</body>
</html>
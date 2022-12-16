<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Drag&Drop</title>
<link rel="stylesheet" href="./css/dragdrop.css">
</head>
<body>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Sortable/1.14.0/Sortable.min.js" integrity="sha512-zYXldzJsDrNKV+odAwFYiDXV2Cy37cwizT+NkuiPGsa9X1dOz04eHvUWVuxaJ299GvcJT31ug2zO4itXBjFx4w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <div class = "column2">
 <div>
     <div class="list-group-item" draggable="true">Wash Clothes</div>
     <button type="submit">제출하기</button>
     <button type="reset">초기값으로 리셋하기</button>
</div>
</div> 
<br>
<div class="container">
   <div class="column">
      <h1>to-do</h1>
      <div class="list-group-item" draggable="true">Wash Clothes</div>
      <div class="list-group-item" draggable="true">Take a stroll outside</div>
      <div class="list-group-item" draggable="true">Design Thumbnail</div>
      <div class="list-group-item" draggable="true">Attend Meeting</div>
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
      <h1>기타 </h1>
   </div>
   
</div>
<br>
<div class = "column2">
 <div>
     <div class="list-group-item" draggable="true">Wash Clothes</div>
     <button type="submit">제출하기</button>
     <button type="reset">초기값으로 리셋하기</button>
</div>
</div> 
 <script src = "./js/dragdrop.js"></script>

</body>
</html>
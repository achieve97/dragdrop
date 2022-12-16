<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Drag&Drop</title>
<link rel="stylesheet" href="./css/dragdrop.css">
<style>
@import url('https://fonts.googleapis.com/css?family=Raleway:300,800');
$fontFamily: 'Raleway',
sans-serif;
$blue: #0072ff;
body {
  background-color: $blue;
  h1{
    text-align: center;
    font-family: $fontFamily;
    color: white;
    font-size: 50px;
    font-weight: normal;
  }
  .adder {
    position: relative;
    width: 250px;
    margin: 0px auto;
    display: block;
    ::-webkit-input-placeholder {
       color: #cecece;
    }
    .input {
      outline: none;
      border: 1px solid white;
      background-color: $blue;
      color: white;
      height: 50px;
      width: 250px;
      padding-left: 10px;
      font-family: $fontFamily;
      font-weight: 800;
      font-size: 16px;
      margin-left: -5px;
    }
    span {
      position: absolute;
      right: 0;
      top: 0;
      font-size: 30px;
      font-weight: 800;
      line-height: 1.8;
      cursor: pointer;
      transition: all 200ms;
      color: white;
      will-change: transform;
      &:hover{
        transform: rotate(180deg);
      }
    }
  }
  ul {
    padding: 0px;
    .draggable {
      will-change: transform;
      font-family: $fontFamily;
      font-weight: 800;
      height: 50px;
      list-style-type: none;
      margin: 10px;
      background-color: white;
      color: $blue;
      width: 250px;
      line-height: 3.2;
      padding-left: 10px;
      cursor: move;
      transition: all 200ms;
      user-select: none;
      margin: 10px auto;
      position: relative;
      &:after {
        content: 'drag me';
        right: 7px;
        font-size: 10px;
        position: absolute;
        cursor: pointer;
        line-height: 5;
        transition: all 200ms;
        transition-timing-function: cubic-bezier(0.48, 0.72, 0.62, 1.50);
        transform: translateX(120%);
        opacity: 0;
      }
      &:hover {
        &:after {
          opacity: 1;
          transform: translate(0);
        }
      }
    }
  }
}

.over {
  transform: scale(1.1, 1.1);
}
</style>
</head>
<body>
  <h1>DRAG AND DROP HTML5</h1>
  <div class="adder">
    <input type="text" class="input" placeholder="Add items in your list"/>
    <span class="add">+</span>
  </div>
  <ul>
    <li class="draggable" draggable="true">JavaScript</li>
    <li class="draggable" draggable="true">SCSS</li>
    <li class="draggable" draggable="true">HTML5</li>
    <li class="draggable" draggable="true">Awesome DnD</li>
    <li class="draggable" draggable="true">Follow me</li>
  </ul>
 
 <script src = "./js/dragdrop.js">
</script> 
<script type="text/javascript">
var btn = document.querySelector('.add');
var remove = document.querySelector('.draggable');

function dragStart(e) {
  this.style.opacity = '0.4';
  dragSrcEl = this;
  e.dataTransfer.effectAllowed = 'move';
  e.dataTransfer.setData('text/html', this.innerHTML);
};

function dragEnter(e) {
  this.classList.add('over');
}

function dragLeave(e) {
  e.stopPropagation();
  this.classList.remove('over');
}

function dragOver(e) {
  e.preventDefault();
  e.dataTransfer.dropEffect = 'move';
  return false;
}

function dragDrop(e) {
  if (dragSrcEl != this) {
    dragSrcEl.innerHTML = this.innerHTML;
    this.innerHTML = e.dataTransfer.getData('text/html');
  }
  return false;
}

function dragEnd(e) {
  var listItens = document.querySelectorAll('.draggable');
  [].forEach.call(listItens, function(item) {
    item.classList.remove('over');
  });
  this.style.opacity = '1';
}

function addEventsDragAndDrop(el) {
  el.addEventListener('dragstart', dragStart, false);
  el.addEventListener('dragenter', dragEnter, false);
  el.addEventListener('dragover', dragOver, false);
  el.addEventListener('dragleave', dragLeave, false);
  el.addEventListener('drop', dragDrop, false);
  el.addEventListener('dragend', dragEnd, false);
}

var listItens = document.querySelectorAll('.draggable');
[].forEach.call(listItens, function(item) {
  addEventsDragAndDrop(item);
});

function addNewItem() {
  var newItem = document.querySelector('.input').value;
  if (newItem != '') {
    document.querySelector('.input').value = '';
    var li = document.createElement('li');
    var attr = document.createAttribute('draggable');
    var ul = document.querySelector('ul');
    li.className = 'draggable';
    attr.value = 'true';
    li.setAttributeNode(attr);
    li.appendChild(document.createTextNode(newItem));
    ul.appendChild(li);
    addEventsDragAndDrop(li);
  }
}

btn.addEventListener('click', addNewItem);

</script>
</body>
</html>
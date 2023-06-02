<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BookMate</title>
</head>
<style>
.main {
    width:100%;
    height:100%;
    /* border: 1px solid black; */
}
.logo {
    width:100%;
    height:100px;
    text-align: center;
}
.logoImg {
    width:20%;
    margin-top:20px;
    /* border: 1px solid black; */
    display: inline-block;
}
/* 로그인, 장바구니, 마이페이지, 고객센터 연결 */
.menu {
    width:100%;
    height:40px;
    background-color: white;
    text-align : right;
}
a {
    text-decoration-line: none;
}
a:link {
    color : gray;
}
/* 색상상자 */
.name{
    width:100%;
    height:20px;
    background-color: #97d4f7;
    color:white;
    text-align : center;
    padding : 20px 0;
}
/* 카테고리 */    
#nav {
	list-style:none;
	height: 40px;
	padding: 5px 1px;
	margin: 0;
	
}
#nav li {
	float:left;
	position:relative;
	margin-top:0.5%;
	padding:0;
}
#nav li a {
	display:block;
	padding:7px 8px;
	margin:0;
	text-decoration: none;
}
#nav ul {
	list-style: none;
	margin:0;
	padding:0;
	position: absolute;
	left:0;
	top:40px;
	text-align: center;
	opacity: 0;
}
#nav ul li {
	float: none;
	margin:0;
	padding:0;
	width: 150px;
	height:40px;
	background-color: white;
}
#nav li:hover ul {
	opacity: 1;
	z-index: 1;
}
#nav li:hover ul li {
	overflow: visible;
	z-index: 1;
}
#nav li ul li:hover > a {
	background-color: #97d4f7;
	color:black;
	margin:0;
	padding:5px;
	z-index: 1;
}
.category {
    width:100%;
    height:60px;
    background-color: white;
}
.category_ul {
    float:right;
}
.category_li {
    float: left;
    margin-right: 10px;
}
a:hover {
        color: #97d4f7;
}
/* 검색창 */
.search {
    position: relative;
    width: 100%;
}
.searchBox {
    width: 250px;
    border: 1px solid #bbb;
    border-radius: 15px;
    padding: 5px 5px;
    font-size: 14px;
    margin-top:2%;
}
.search_img {
    position : absolute;
    width: 17px;
    top: 10px;
    right: 10px;
}
/* ----------------------------------------------*/

.content {
	text-align: center;
}
.content_A { 
	 border: 1px solid #bbb;
}
.book_content {
	width:40%;
	text-align:center;
}


  /* 뉴 버튼 스타일 */
    .button {
        text-align: right;
    }
    

    .button input[type="button"] {
        padding: 7px 11px;
        border: none;
        border-radius: 10px;
        color: #fff;
        cursor: pointer;
    }
    

    .button input[type="button"] {
        background-color: #7ca8c2;
    }
    .button input[type="button"]:hover {
	background-color: #0056b3;


</style>
<body>
    <div class="main">
        <div class="logo">
    	<img src="/img/logo.png" class="logoImg">
    </div>
    <div class="menu">
        <a href="/login">로그인</a>&nbsp;|&nbsp;<a href="/cart">장바구니</a>&nbsp;|&nbsp;<a href="/mypage">마이페이지</a>&nbsp;|&nbsp;<a href="/board">고객센터</a>
    </div>
    
    <div class="name">지금 어떤 책을 읽어야 할지 고민하는 사용자의 상태에 맞는 책을 추천해주는 서비스</div>
    <div class="category">
    	<ul class="category_ul"  id="nav">
			<li class="category_li"><a href="/category1">코미디</a></li>
			<li class="category_li"><a href="/category2">로맨스</a></li>
			<li class="category_li"><a href="/category3">판타지</a></li>
			<li class="category_li"><a href="/category4">공포/스릴러/추리</a></li>
			<li class="category_li"><a href="/category5">드라마/가족</a></li>
            <li class="category_li"><a href="/donation">기부앤테이크<i class='dropDown'></i></a>
            	<ul>
              		<li class="category_li_sub"><a href="/donation">기부앤테이크 안내</a></li>
              		<li class="category_li_sub"><a href="/donation-submit" id=donation-submit>기부앤테이크 신청</a></li>
              		<li class="category_li_sub"><a href="/donation-state">기부앤테이크 현황</a></li>
              	</ul>
            </li>
             
            <li class="category_li">
            	<div class="search">
                	<input type="text" class="searchBox" placeholder="  검색어를 입력하세요">
                	<img src="/img/search.png" class="search_img">
                </div>
            </li>
		</ul>
	</div>



        
        <div class="content">
       		<h1>상품추가</h1>
            <div class="content_A">
             
                <br>
              
               
               
                  <label for="book_name">제목:</label>
                  <input type="text" class="form-control form-control-lg" id="book_name" name="book_name"><br>
                   <br>
                   
                  <label for="book_price">가격:</label>
                  <input type="text" class="form-control form-control-lg" id="book_price" name="book_price"><br>
                  <br>
                  
                  <label for="book_genre">장르:</label> 
                  <select id="book_genre" name="book_genre">
					<option value="코미디">코미디</option>
					<option value="로맨스">로맨스</option>
					<option value="판타지">판타지</option>
					<option value="공포/스릴러/추리">공포/스릴러/추리</option>
					<option value="드라마/가족">드라마/가족</option>
					</select> <br>
					
					<br><div class="mb-3">
                  <label for="book_cover">커버 사진:</label>
                  <input type="file" class="form-control" id="book_cover" name="book_cover"><br>
                  </div>
                    <br>
                    
                   <label for="book_content">책 소개:</label>
                  <textarea class="book_content" id="book_content"></textarea><br>
                   <br>
              
                  <div class="mb-3">
                  <label for="book_detail">상품 상세:</label>
                  <input type="file" class="form-control" id="book_detail" name="book_detail"><br>
                  </div>
                  <br>
                   
                  <label for="author">작가:</label>
                  <input type="text" id="author" name="author" ><br>
                  <br>
                  
                  <label for="publication">출판일:</label>
                  <input type="text" id="publication" name="publication" ><br>
                  <br>
                  
                  <label for="rating">별점:</label>
                  <input type="number" class="form-control form-control-lg" id="rating" name="rating" max="10" min="0"><br>
                 <br>
          			
          		<label for="emotion">감정:</label> 
                  <select id="emotion" name="emotion">
					<option value="슬픔">슬픔</option>
					<option value="사랑">사랑</option>
					<option value="불안">불안</option>
					<option value="분노">분노</option>
					<option value="행복">행복</option>
					</select> <br>
					<br>
					
					<label for="book_summary">책 요약:</label>
                  <input type="text" id="book_summary" name="book_summary" ><br>
                  <br>
                  
					
                  <!-- <img src="#" alt="상품 이미지 미리보기"><br> -->
                  <input type=button value='등록' id=btnInsert>
                  <input type=button value='취소' id=btnCancle>
                  <br><br> 
      
            </div>
            
        </div>
		
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)

.on('click','#btnInsert',function(){
     var formData = new FormData();   // 자바스크립트에서 폼 데이터를 다루는 객체
    var files = $('#book_cover')[0].files[0];
    formData.append('file', files);
    
    var formData2 = new FormData();
    var book_detail = $('#book_detail')[0].files[0];
    formData2.append('book_detail_file', book_detail);

    	$.ajax({url:'/newProduct',type:'post',
    		data:{book_name:$('#book_name').val(),book_price:$('#book_price').val(),
    			book_genre:$('#book_genre option:selected').val(),book_content:$('#book_content').val()
    			,author:$('#author').val(),publication:$('#publication').val()
    			,rating:$('#rating').val(),emotion:$('#emotion option:selected').val()
    			,book_summary:$('#book_summary').val()},
    		dataType:'text',
    		beforeSend:function(){
    			let book_name=$.trim($('#book_name').val());
    			if(book_name==''||book_name==null){
    				alert('상품명을 입력하시오');
    				return false;
    			}
    			if($('#book_price').val()==''){
    				alert('가격을 입력하시오');
    				return false;
    			}
    		},
    		success:function(data){
    			if(data=="ok"){
    				alert("fileinsert 성공")
//     				$('#btnCancle').trigger('click');
    			} else {
    				alert("fileinsert 실패")
    			}
    			$.ajax({url:'/newfile', type:'post', dataType:'text', data:formData,        
    			      enctype:'multipart/form-data',
    			      contentType:false,
    			        processData:false,
    			      success:function(data) {
    			    	  
    			    	  $.ajax({url:'/newfile2', type:'post', dataType:'text', data:formData2,        
    	    			      enctype:'multipart/form-data',
    	    			      contentType:false,
    	    			        processData:false,
    	    			      success:function(data) {
    	    			      
    	    			      }
    	    			   })
    			      }
    			   })
    		}
    	})
})
 .on('click','#btnCancle',function(){
	document.location='/prolist';
})
</script>

</html>
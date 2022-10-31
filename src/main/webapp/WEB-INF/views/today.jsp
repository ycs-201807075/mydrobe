<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

            <style>
                .label{
                        margin-top:5.0rem;
                        position:relative;
                        width:100%;
                }
                .label1{
                        position:absolute;
                        top:0;
                        left:0;
                }

                .label2{
                        position:absolute;
                        top:0;
                        left:30rem;
                }

                .label3{
                        position:absolute;
                        top:0;
                        left:30rem;
                 }
                 .label4{
                        position:absolute;
                        top:0;
                        left:30rem;
                  }

    			.label_content input {display:none;}
    			.label_content input + label {}
    			.label_content input + label + div {

    			display:none;
    			width:700px;
    			height:700px;
    			background:#f5f5f5;
    			border:2px solid #eee;
    			position:absolute;
    			top:50%;
    			left:50%;
    			transform:translate(-50%,-50%);
    			Z-index : 2; /* 우선순위 최상위.*/
    			}

    			.label_content input:checked + label + div {display:block;}
    			.label_content input + label + div label {
    			position:absolute;
    			bottom:0;
    			left:50%;
    			transform:translate(-50%,50%);
    			background:#000000;
    			color:#fff;
    			padding:20px;
    			}
    		</style>
</head>
<body>
         <div class="label"> <!--제일 큰 범위 클래스의 시작-->
          <div class="label1">
           <div class="label_content">
      		<input type="checkbox" id="info">
      		<label for ="info"><img src="images/today1.png"></label>
      		<div class="content">
      			<div align ="center"><img src="images/today1.png" width="400" height="500"></div>
      			<div align="center">게시글이 들어갈 자리</div>
      			<label for ="info">close</label>
      			</div>
           </div>

            <div class="label2">
      		<div class="label_content">
                 <input type="checkbox" id="info">
                 <label for ="info"><img src="images/today2.png"></label>
                 <div class="content">
                 <div align ="center"><img src="images/today2.png" width="400" height="500"></div>
                 <div align="center">게시글이 들어갈 자리</div>
                 <label for ="info">close</label>
                 </div>
           </div>

             <div class="label3">
                <div class="label_content">
                  <input type="checkbox" id="info">
                  <label for ="info"><img src="images/today3.png"></label>
                  <div class="content">
                  <div align ="center"><img src="images/today3.png" width="400" height="500"></div>
                  <div align="center">게시글이 들어갈 자리</div>
                  <label for ="info">close</label>
                  </div>
                </div>

             <div class="label4">
                 <div class="label_content">
                   <input type="checkbox" id="info">
                   <label for ="info"><img src="images/winter.jpg"></label>
                   <div class="content">
                   <div align ="center"><img src="images/winter.jpg" width="400" height="500"></div>
                   <div align="center">게시글이 들어갈 자리</div>
                   <label for ="info">close</label>
                   </div>
                 </div>

      </div> <!--제일 큰 범위 클래스의 끝-->
</body>
</html>
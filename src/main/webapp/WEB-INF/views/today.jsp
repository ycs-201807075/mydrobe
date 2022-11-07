<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

            <style>
            .img_2{
            width:15rem;
            height:25rem;
            border-radius: 2rem;
            }
            .c1{
            text-align:center;
            height:30rem;
            width:100rem;
            margin-top:10rem;
            margin-bottom:5rem;
            }
            .label_content{
			}
			.label_content input {display:none;}
			.label_content input + label {}
			.label_content input + label + div {
			display:none;
			width:500px;
			height:600px;
			background:#f5f5f5;
			border:5px solid #eee;
			position:absolute;
			top:60%;
			left:50%;
			transform:translate(-50%,-50%);
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

			.label_content1{
            }
            .label_content1 input {display:none;}
            .label_content1 input + label {}
            .label_content1 input + label + div {
            display:none;
            width:500px;
            height:600px;
            background:#f5f5f5;
            border:5px solid #eee;
            position:absolute;
            top:60%;
            left:50%;
            transform:translate(-50%,-50%);
            }
            .label_content1 input:checked + label + div {display:block;}
            .label_content1 input + label + div label {
            position:absolute;
            bottom:0;
            left:50%;
            transform:translate(-50%,50%);
            background:#000000;
            color:#fff;
            padding:20px;
            }


            .label_content2{
            }
            .label_content2 input {display:none;}
            .label_content2 input + label {}
            .label_content2 input + label + div {
            display:none;
            width:500px;
            height:600px;
            background:#f5f5f5;
            border:5px solid #eee;
            position:absolute;
            top:60%;
            left:50%;
            transform:translate(-50%,-50%);
            }
            .label_content2 input:checked + label + div {display:block;}
            .label_content2 input + label + div label {
            position:absolute;
            bottom:0;
            left:50%;
            transform:translate(-50%,50%);
            background:#000000;
            color:#fff;
            padding:20px;
            }

            .label_content3{
            }
            .label_content3 input {display:none;}
            .label_content3 input + label {}
            .label_content3 input + label + div {
            display:none;
            width:500px;
            height:600px;
            background:#f5f5f5;
            border:5px solid #eee;
            position:absolute;
            top:60%;
            left:50%;
            transform:translate(-50%,-50%);
            }
            .label_content3 input:checked + label + div {display:block;}
            .label_content3 input + label + div label {
            position:absolute;
            bottom:0;
            left:50%;
            transform:translate(-50%,50%);
            background:#000000;
            color:#fff;
            padding:20px;
            }


            .label_content4{
            }
            .label_content4 input {display:none;}
            .label_content4 input + label {}
            .label_content4 input + label + div {
            display:none;
            width:500px;
            height:600px;
            background:#f5f5f5;
            border:5px solid #eee;
            position:absolute;
            top:60%;
            left:50%;
            transform:translate(-50%,-50%);
            }
            .label_content4 input:checked + label + div {display:block;}
            .label_content4 input + label + div label {
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
            <table class="c1" align="center">
            <tr>
            <td>
            <div class="label_content">
            		<input type="checkbox" id="info">
            		<label for ="info"><img src="images/today1.png" class="img_2"></label>
            		<div class="content">
            			<div align ="center"><img src="images/today1.png" wdith="300" height="500"></div>
            			<div align="center">아야야야야야야야양</div>
            			<label for ="info">close</label>
            </div>
            </td>
            <td>
            <div class="label_content1">
                    <input type="checkbox" id="info1">
                    <label for ="info1"><img src="images/today2.png" class="img_2"></label>
                    <div class="content1">
                        <div align ="center"><img src="images/today2.png" wdith="300" height="500"></div>
                        <div align="center">아야야야야야야야양</div>
                        <label for ="info1">close</label>
            </div>
            </td>
            <td>
            <div class="label_content2">
                    <input type="checkbox" id="info2">
                    <label for ="info2"><img src="images/today3.png" class="img_2"></label>
                    <div class="content2">
                        <div align ="center"><img src="images/today3.png" wdith="300" height="500"></div>
                        <div align="center">아야야야야야야야양</div>
                        <label for ="info2">close</label>
            </div>
            </td>
            <td>
            <div class="label_content3">
                                <input type="checkbox" id="info3">
                                <label for ="info3"><img src="images/today3.png" class="img_2"></label>
                                <div class="content3">
                                    <div align ="center"><img src="images/today3.png" wdith="300" height="500"></div>
                                    <div align="center">아야야야야야야야양</div>
                                    <label for ="info3">close</label>
                        </div>
            </td>
            <td>
            <div class="label_content4">
                    <input type="checkbox" id="info4">
                    <label for ="info4"><img src="images/today3.png" class="img_2"></label>
                    <div class="content4">
                        <div align ="center"><img src="images/today3.png" wdith="300" height="500"></div>
                        <div align="center">아야야야야야야야양</div>
                        <label for ="info4">close</label>
            </div>
            </td>
            </tr>
            </table>
</body>
</html>
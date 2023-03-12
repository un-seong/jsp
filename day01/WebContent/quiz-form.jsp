<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네이버 : 회원가입 test</title>

<style>

	body {
		corsor: pointer;
	}

	.root {
		background-color : #f5f6f7;
	}

    .top > a > img {
        width: 250px;
        background-color : #f5f6f7;
    }

    .top {
        display: flex;
        justify-content: center;
        corsor: pointer;
    }

    .mid {
        display: flex;
        justify-content: center;
        corsor: pointer;
    }

    .mid > form > div {
        font-weight: bold;
        
    }
    
    .gender {
    	width: 510px;
    	height: 50px;
    	margin-bottom: 15px;
    }
    
    .phonename {
    	width: 510px;
    	height: 50px;
    	margin-bottom: 15px;
    }
    
    .phone > input {
    	width: 400px;
    	height: 50px;
    	margin-bottom: 15px;
    }
        
    .num > input {
    	width: 500px;
    	height: 50px;
    	margin-bottom: 15px;
    }
           
    .mid > form > div > button {
    	background-color: #03c75a;
    	color: white;
    	border: 0px solid white;
    	margin-left: 5px;
    	height: 55px;
 
    }
    
    .birth > input {
    	width: 160px;
    	height: 40px;
    }
    
    .month {
    	width: 150px;
    	height: 50px;
    	margin-left: 5px;
    	margin-right: 5px;
    }

    p > input {
        width: 500px;
        height: 40px;
        
    }

    .btn > input {
        width: 100%;
        height: 60px;
        background-color: #03c75a;
        color: white;
        font-size: 20px;
        border: 0px solid white;
        margin-bottom: 40px;

    }

    .explain {
            display: flex;
            justify-content: center;
            font-size: 12px;
            margin-bottom: 3px;
            
        }
        
        .explain > .use {
            padding-right: 8px;
        }

        .explain > .privacy {
            font-weight: bold;
            border-right: 1px solid #dadada;
            border-left: 1px solid #dadada;
            padding-inline-start: 8px;
            padding-inline-end: 8px;
        }

        .explain > .responsive {
            padding-left: 8px;
            padding-right: 8px;
        }

        .explain > .cc {
            border-left: 1px solid #dadada;
            padding-inline-start: 8px;
        }

        .last {
            display: flex;
            justify-content: center;
            font-size: 11px;
        }

        .last > .corp > a > img[src="네이버1.png"] {
            width: 90px;
        }

        .lasttext {
            padding-top: 10px;
        }

</style>
</head>
<body>

    <div class="root">
        <div class="top">
            <a href="https://www.naver.com"><img src="네이버1.png"></a>
        </div>

        <div class="mid">
            <form action=quiz-result.jsp>
                <div>아이디<p><input type="text" name="id"></p></div>
                <div>비밀번호<p><input type="password" name="pw"></p></div>
                <div>비밀번호 재확인<p><input type="password" name="repw"></p></div>
                <div>이름<p><input type="text" name="name"></p></div>
                
                
                <div><p>생년월일</p></div>
                
                <div class="birth">
                	<input type="text" name=year  placeholder="년 (4자)">
                	<select class="month" name="month">
	                	<option>월</option>
	                	<option value="01">1</option>
	                	<option value="02">2</option>
	                	<option value="03">3</option>
	                	<option value="04">4</option>
	                	<option value="05">5</option>
	                	<option value="06">6</option>
	                	<option value="07">7</option>
	                	<option value="08">8</option>
	                	<option value="09">9</option>
	                	<option value="10">10</option>
	                	<option value="11">11</option>
	                	<option value="12">12</option>
                   	</select>
                	<input type="text" name=day placeholder="일">
                </div>
                         
                <div><p>성별</p></div>
                <div>
                	<select class="gender" name="gender">
	                	<option>성별</option>
	                	<option value="남자">남자</option>
	                	<option value="여자">여자</option>
	                	<option value="선택안함">선택안함</option>
                	</select>
                </div>
                                
                <div>본인확인 이메일<p><input type="text" name="checkemail" placeholder="선택입력"></p></div>
                <div><p>휴대전화</p></div>
                <div>
                	<select class="phonename">
                		<option>대한민국 +82</option>
                		<option>노르웨이 +47</option>
                		<option>그리스 +30</option>
                	</select>
                </div>
                <div class="phone"><input type="text" name=phone placeholder="전화번호 입력"><button class="numbtn" type="button">인증번호 받기</button></div>
                <div class="num"><input type="text" name="num" placeholder="인증번호 입력하세요"></div>
                <div class="btn"><input type=submit value="가입하기"></div>
            </form>
        </div>

        <div class="bottom">
            <div class="explain">
                <div class="use"><a href="https://policy.naver.com/rules/service.html">이용약관</a></div>
                <div class="privacy"><a href="https://policy.naver.com/rules/privacy.html">개인정보처리방침</a></div>
                <div class="responsive"><a href="https://policy.naver.com/rules/disclaimer.html">책임의 한계와 법적 고지</a></div>
                <div class=cc><a href="https://help.naver.com/service/5640/category/bookmark?lang=ko">회원정보 고객센터</a></div>
            </div>

            <div class="last">
                <div class="corp"><a href="https://www.navercorp.com/"><img src="네이버1.png"></a></div>
                <div class="lasttext">Copytight ⓒ NAVER Corp. All rights Reserved</div>
            </div>

        </div>

    </div>


    
</body>
</html>
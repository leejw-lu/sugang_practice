<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>수강신청 연습하기</title>

    <link rel="stylesheet" href="resources/css/login.css">
    <script src="/resources/js/login.js"></script>

</head>
<body>
    <div class="login-box">
        <div class="login-row">
                <h1 class="login-title">LOGIN</h1>
                <div id="_UlgnS_basic" class="_loginBefore">

                    <strong>성신인(재학생, 교직원)은 성신 포탈 시스템 ID/PW로 로그인해 주세요. <br>예비학부생 ID는 수험번호이며 비밀번호는 주민등록번호 뒤 7자리입니다.</strong>

                    <form id="loginForm" name="loginForm" method="post">
                        <input type="hidden" id="RelayState" name="RelayState" value="">
                        <div class="_loginInputWrap">
                            <div class="_loginInput">
                                <div class="_inputArea">
                                    <input type="text" id="id" name="id" class="_input" maxlength="11" placeholder="아이디를 입력하세요.">
                                </div>
                                <div class="_inputArea">
                                    <input type="password" id="password" name="password" class="_input" maxlength="50" placeholder="비밀번호를 입력하세요.">
                                </div>
                            </div>
                            <a href="#" id="submit" class="_loginSubmit" onclick="login()">로그인</a>
                        </div>
                    </form>
                </div>
        </div>

    </div>
    </div>
    </body>
</html>
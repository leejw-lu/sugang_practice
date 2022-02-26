<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!--전체 화면-->
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <title>수강신청 시스템</title>
        <link type="text/css" rel="stylesheet" href="resources/css/sugang.css">

    </head>
    <body>
        <div id="wrap">
            <div id="relation">
                <div class="relation_search">
                    <div class="rs_Bar">
                        <ul>
                            <li class="rsText">
                                <img src="https://sugang.sungshin.ac.kr/images/top_logo.png" alt="logo" onclock="(수강신청일정)">
                            </li>
                            <li class="rsText">
                                <a href="" id="logoutLink" title="로그아웃">%아이디 - 로그아웃</a>
                            </li>
                        </ul>

                        <li class="rsRightText">
                            <form id="locale" method="get">
                                <select id="lang" name="lang" required selected="selected">
                                    <option value="ko">한국어</option>
                                    <option value="en">ENGLISH</option>
                                </select>
                            </form>
                        </li>
                        <!-- 영어 -->
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="cMain">
                    <div class="cMenu" id="Smenu">
                        <ul>
                            <li class="on">
                                <a href="whackAMole" title="수강신청일정">
                                    <p class="Mtitle">두더지잡기게임</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="수강신청안내">
                                    <p class="Mtitle">수강신청안내</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="교양수강안내">
                                    <p class="Mtitle">교양수강안내</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="사이버대학수강안내">
                                    <p class="Mtitle">사이버대학수강안내</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="개설강좌조회">
                                    <p class="Mtitle">개설강좌조회</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="관심강좌신청">
                                    <p class="Mtitle">관심강좌신청</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="수강신청">
                                    <p class="Mtitle">수강신청</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="강의시간편성표">
                                    <p class="Mtitle">강의시간편성표</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="대량접속제어">
                                    <p class="Mtitle">대량접속제어</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="비정상사용제한안내">
                                    <p class="Mtitle">비정상사용제한안내</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                            <li class="on">
                                <a href="" title="브라우저설정방법안내">
                                    <p class="Mtitle">브라우저설정방법안내</p>
                                    <div class="Marrow">
                                        <img src="https://sugang.sungshin.ac.kr/images/carrow_on.png" alt="arrow" width="7">
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!--수강신청-->
                    <div class="cLeft" id="Scon">
                        <div class="section_top_tit" id="Scon" style>
                            <h3 class="tit_now">
                                수강신청
                            </h3>
                                                    <p>시작버튼->조회버튼(누르면 멈춤)->reset버튼!! 누르고 다시 시작버튼</p>
                        </div>

                        <iframe style="width: 100%; height: 75vh; border: 0; overflow: hidden;" id="contentsFrm" src="./tbl">
                        </iframe>
                    </div>
                </div>
            </div>
            <div id="wrap-footer">
                <div class="container">
                    <div class="address">
                        돈암수정캠퍼스 (02844) 서울특별시 성북구 보문로 34다길 2 Tel. 02) 920-7114 <span class="bar">|</span> 미아운정그린캠퍼스 (01133) 서울특별시 강북구 도봉로 76가길 55 Tel. 02) 920-7870<br class="no-br">
                        <div class="copyright">
                            COPYRIGHT©2019 SUNGSHIN WOMEN'S UNIVERSITY. ALL RIGHTS RESERVED.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
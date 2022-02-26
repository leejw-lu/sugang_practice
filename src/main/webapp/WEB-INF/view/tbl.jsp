<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!--전체 코드 안에 들어가는 iframe부분-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="htext/html charset=utf-8">
    <title>수강신청</title>
    <link type="text/css" rel="stylesheet" href="resources/css/tbl.css">
    <h1>09:59:57:000</h1>
    <div id="start_btn" >
         <button id="start">관심강좌 조회까지 시간측정</button>
         <button id="start2">수강신청 완료까지 시간측정</button>
    </div>

</head>
<body>
<div style="width: 99%">

    <table style="width: 100%;">


        <tbody>
        <tr>
            <td width="2%"><!--왼쪽여백--></td>
            <td width="97%">
                <!--<table id="tableInfo" width="100%" rules="none" cellspacing="3" cellpadding="3" class="frfMainExt">
                    <colgroup>
                        <col width="100%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <td>
                                <label class="lblInfo" id="lblScheInfo">[수강신청 기간이 아닙니다.]</label>
                            </td>
                        </tr>
                    </tbody>
                </table>-->
                <table width="100%">
                    <tbody>
                    <tr height="2px"></tr>
                    </tbody>
                </table>
                <!--조회 조건-->
                <table id="tableSch" width="100%" rules="none" cellspacing="3" cellpadding="3" class="frfMainExt">
                    <colgroup>
                        <col width="1%">
                        <col width="6%">
                        <col width="1%">
                        <col width="9%">
                        <col width="2%">
                        <col width="8%">
                        <col width="1%">
                        <col width="18%">
                        <col width="2%">
                        <col width="6%">
                        <col width="1%">
                        <col width="9%">
                        <col class="tdSeasonWidth" width="20%">
                        <col width="30%">
                        <col width="4%">
                        <col width="1%">
                    </colgroup>
                    <tbody>

                    <tr>
                        <td></td>
                        <td>
                            <label class="lblSch" id="lblSbjType">과목</label>
                        </td>
                        <td></td>
                        <td>
                            <select id="cmbSbjtype" style="width:100%;">
                                <option value="">선택</option>
                                <option value="scrapedclass">관심강좌</option>
                            </select>
                        </td>
                        <td></td>
                        <td>
                            <label class="lblSch" id="lblDptMjrCd">개설학과전공</label>
                        </td>
                        <td></td>
                        <td>
                            <select id="cmbDptMjrCd" style="width:100%;"></select>
                        </td>
                        <td></td>
                        <td>
                            <label class="lblSch" id="lblDptMjrCd">검색</label>
                        </td>
                        <td></td>
                        <td>
                            <select id="cmbSearchDiv" style="width:100%;">
                                <option value>- 전체 -</option>
                                <option value="01">학수번호</option>
                                <option value="02">교과목명</option>
                                <option value="03">이수구분</option>
                                <option value="04">영역구분</option>
                            </select>
                        </td>
                        <td>
                            <!--hidden정보들-->
                        </td>
                        <td></td>

                        <td>
                            <button id="btnSch" style="height: 22px; text-align: center; vertical-align:middle;" class="btnSearch" onClick="showScrapedClass()">조회</button> <!--시작1버튼의 조회-->
                            <button id="btnSch2" style="height: 22px; text-align: center; vertical-align:middle;" class="btnSearch">조회</button> <!--시작2버튼의 조회-->
                        </td>
                        <td>
                            <button id="rst">reset</button>     <!--시작1버튼의 reset-->
                            <button id="rst2">reset</button>    <!--시작2버튼의 reset-->
                        </td>
                        <script>
                         var h1 = document.getElementsByTagName('h1')[0],
                                start = document.getElementById('start'),
                                stop = document.getElementById('btnSch'),
                                clear = document.getElementById('rst'),
                                milli = 0, seconds = 57, minutes = 59, hours = 9,
                                t;

                                //버튼시작2
                                var h1 = document.getElementsByTagName('h1')[0],
                                start2 = document.getElementById('start2'),
                                stop2 = document.getElementById('btnSch2'),
                                clear2 = document.getElementById('rst2'),
                                milli2 = 0, seconds2 = 0, minutes2 = 0, hours2 = 0,
                                t2;

                                stop2.style.display = 'none';
                                clear2.style.display = 'none';

                                function add() {
                                    milli += 10;
                                    if (milli >= 1000) {
                                        milli = 0;
                                        seconds++;
                                        if (seconds >= 60) {
                                            seconds = 0;
                                            minutes++;
                                            if (minutes >= 60) {
                                                minutes = 0;
                                                hours++;
                                            }
                                        }
                                    }

                                    h1.textContent = (hours ? (hours > 9 ? hours : "0" + hours) : "00")
                                    + ":" + (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00")
                                    + ":" + (seconds > 9 ? seconds : "0" + seconds)
                                    + "." + (milli > 90 ? milli : "0" + milli);

                                    timer();
                                }
                                function timer() {
                                    t = setTimeout(add, 10);
                                }

                                //start button
                                start.onclick = function() {
                                    if(!t) timer();
                                stop2.style.display = 'none';
                                clear2.style.display = 'none';
                                if(stop.style.display=='none'|| clear.style.display=='none'){
                                    stop.style.display = 'inline';
                                    clear.style.display = 'inline';
                                }
                                }

                                //Stop button
                                stop.onclick = function() {
                                    if (document.getElementById('cmbSbjtype').value == 'scrapedclass') {
                                        document.getElementById('scrapedClassTable').style.visibility = "visible";
                                    } else{
                                        document.getElementById('scrapedClassTable').style.visibility = "hidden";
                                    }
                                    clearTimeout(t);
                                    t = null;
                                }

                                //Clear button
                                clear.onclick = function() {
                                    h1.textContent = "09:59:57:000";
                                    milli = 0; seconds = 57; minutes = 59; hours = 9;
                                }

                                function add2() {
                                    milli2 += 10;
                                    if (milli2 >= 1000) {
                                        milli2 = 0;
                                        seconds2++;
                                        if (seconds2 >= 60) {
                                            seconds2 = 0;
                                            minutes2++;
                                            if (minutes2 >= 60) {
                                                minutes2 = 0;
                                                hours2++;
                                            }
                                        }
                                    }

                                    h1.textContent = (hours2 ? (hours2 > 9 ? hours2 : "0" + hours2) : "00")
                                            + ":" + (minutes2 ? (minutes2 > 9 ? minutes2 : "0" + minutes2) : "00")
                                            + ":" + (seconds2 > 9 ? seconds2 : "0" + seconds2)
                                            + "." + (milli2 > 90 ? milli2 : "0" + milli2);

                                    timer2();
                                }
                                function timer2() {
                                    t2 = setTimeout(add2, 10);
                                }
                                //timer();


                                // Start button
                                start2.onclick = function() {
                                    if(!t2) timer2();
                                stop.style.display = 'none';
                                clear.style.display = 'none';
                                if(stop2.style.display=='none'|| clear2.style.display=='none'){
                                    stop2.style.display = 'inline';
                                    clear2.style.display = 'inline';
                                }
                                }

                                //Stop button
                                stop2.onclick = function() {
                                    clearTimeout(t2);
                                    t2 = null;
                                }

                                //Clear button
                                clear2.onclick = function() {
                                    h1.textContent = "00:00:00.000";
                                    milli2 = 0; seconds2 = 0; minutes2 = 0; hours2 = 0;
                                }


                        </script>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
                <table width="100%">
                    <tbody>
                    <tr height="5px"></tr>
                    </tbody>
                </table>
                <table width="100%" cellspacing="5" cellpadding="0">
                    <colgroup>
                        <col width="15%">
                        <col width="10%">
                        <col width="3%">
                        <col width="3%">
                        <col width="1%">
                        <col width="10%">
                        <col width="3%">
                        <col width="1%">
                        <col width="10%">
                        <col width="3%">
                        <col width="1%">
                        <col width="12%">
                        <col width="3%">
                        <col width="3%">
                        <col width="15%">
                        <col width="20%">
                    </colgroup>
                    <tbody>
                    <tr height="30">
                        <td>
                            <label id="lblGrxMstTitle" style="font-weight: bold;">개설강좌</label>
                        </td>
                        <td>
                            <label class="lblSch" id="lblAbelAplyPnt">기준학점(최소/최대)</label>
                        </td>
                        <td>
                            <input id="ipbMinCdt" readonly="readonly" style="text-align:center;">
                        </td>
                        <td>
                            <input id="ipbMaxCdt" readonly="readonly" style="text-align: center;">
                        </td>
                        <td></td>
                        <td>
                            <label class="lblSch" id="lblTlsnCnt">현재신청학점</label>
                        </td>
                        <td>
                            <input id="ipbAplyCdt" readonly="readonly" style="text-align:center; color:red; font-weight: bold;">
                        </td>
                        <td></td>
                        <td>
                            <label class="lblSch" id="lblAplyPnt">학점교류</label>
                        </td>
                        <td>
                            <input id="ipbOutCdt" readonly="readonly" style="text-align: center; color:red; font-weight: bold;">
                        </td>
                        <td></td>
                        <td>
                            <label class="lblSch" id="lblIntchPnt">재수강과목(최대/신청)</label>
                        </td>
                        <td>
                            <input id="ipbRecrsMincnt" readonly="readonly" style="text-align:center;">
                        </td>
                        <td>
                            <input id="ipbRecrsMaxCnt" readonly="readonly" style="text-align:center;">
                        </td>
                        <td></td>
                        <td>
                            <label id="lblGrxMstCnt" style="text-align:right">[0]</label>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <!--개설 과목-->
                <table id="grxMstHeader" width="100%" cellspacing="0" cellpadding="0">
                    <colgroup>
                        <col width="2%">
                        <col width="4%">
                        <col width="8%">
                        <col width="5%">
                        <col width="9%">
                        <col width="3%">
                        <col width="5%">
                        <col width="3%">
                        <col width="5%">
                        <col width="7%">
                        <col width="4%">
                        <col width="4%">
                        <col width="5%">
                        <col width="4%">
                        <col width="5%">
                        <col width="4%">
                        <col width="5%">
                        <col width="11%">
                        <col width="10%">
                    </colgroup>
                    <tbody>
                    <tr height="20">
                        <td height="auto" class="lblSearchCenter grxHeaderExt">No</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수강신청</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">개설학과전공</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">학수번호</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">교과목명</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">분반</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">이수구분</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">영역</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">교과세부</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">학점/이론/실습</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수강정원</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수강인원</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">요일/교시</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">강의실</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">담당교수</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">캠퍼스</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수업유형</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수강안내 및 지정내용</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수강신청</td>
                    </tr>
                    </tbody>
                </table>
                <table id="scrapedClassTable" width="100%" cellspacing="0" cellpadding="0" style="visibility: hidden">
                    <colgroup>
                        <col width="2%">
                        <col width="4%">
                        <col width="8%">
                        <col width="5%">
                        <col width="9%">
                        <col width="3%">
                        <col width="5%">
                        <col width="3%">
                        <col width="5%">
                        <col width="7%">
                        <col width="4%">
                        <col width="4%">
                        <col width="5%">
                        <col width="4%">
                        <col width="5%">
                        <col width="4%">
                        <col width="5%">
                        <col width="11%">
                        <col width="10%">
                    </colgroup>
                    <tbody>
                    <tr height="25">
                        <td height="auto" class="scrapedClass">1</td>
                        <td height="auto" class="scrapedClass">수강신청</td>
                        <td height="auto" class="scrapedClass">컴퓨터공학과</td>
                        <td height="auto" class="scrapedClass">LC001500</td>
                        <td height="auto" class="scrapedClass">운영체제</td>
                        <td height="auto" class="scrapedClass">001</td>
                        <td height="auto" class="scrapedClass">핵심전공</td>
                        <td height="auto" class="scrapedClass">2영역</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                        <td height="auto" class="scrapedClass">150</td>
                        <td height="auto" class="scrapedClass">0/150</td>
                        <td height="auto" class="scrapedClass">화/7-9</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">심광섭</td>
                        <td height="auto" class="scrapedClass">성신</td>
                        <td height="auto" class="scrapedClass">원격(녹화콘텐츠)</td>
                        <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        <td height="auto" class="scrapedClass"><button class="scrapedClassBtn" onClick="enrollClass(1)">수강신청</button></td>
                    </tr>
                    <tr height="25">
                        <td height="auto" class="scrapedClass">2</td>
                        <td height="auto" class="scrapedClass">수강신청</td>
                        <td height="auto" class="scrapedClass">컴퓨터공학과</td>
                        <td height="auto" class="scrapedClass">LC001800</td>
                        <td height="auto" class="scrapedClass">자바프로그래밍</td>
                        <td height="auto" class="scrapedClass">001</td>
                        <td height="auto" class="scrapedClass">핵심전공</td>
                        <td height="auto" class="scrapedClass">2영역</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">3.0/0.0/3.0</td>
                        <td height="auto" class="scrapedClass">50</td>
                        <td height="auto" class="scrapedClass">0/50</td>
                        <td height="auto" class="scrapedClass">화/1-3</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">노현아</td>
                        <td height="auto" class="scrapedClass">성신</td>
                        <td height="auto" class="scrapedClass">원격(녹화콘텐츠)</td>
                        <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        <td height="auto" class="scrapedClass"><button class="scrapedClassBtn" onClick="enrollClass(2)">수강신청</button></td>
                    </tr>
                    <tr height="25">
                        <td height="auto" class="scrapedClass">3</td>
                        <td height="auto" class="scrapedClass">수강신청</td>
                        <td height="auto" class="scrapedClass">컴퓨터공학과</td>
                        <td height="auto" class="scrapedClass">LC003900</td>
                        <td height="auto" class="scrapedClass">고급자료구조</td>
                        <td height="auto" class="scrapedClass">001</td>
                        <td height="auto" class="scrapedClass">핵심전공</td>
                        <td height="auto" class="scrapedClass">2영역</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                        <td height="auto" class="scrapedClass">90</td>
                        <td height="auto" class="scrapedClass">0/90</td>
                        <td height="auto" class="scrapedClass">월/7-9</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">장재경</td>
                        <td height="auto" class="scrapedClass">성신</td>
                        <td height="auto" class="scrapedClass">원격(녹화콘텐츠)</td>
                        <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        <td height="auto" class="scrapedClass"><button class="scrapedClassBtn" onClick="enrollClass(3)">수강신청</button></td>
                    </tr>
                    <tr height="25">
                        <td height="auto" class="scrapedClass">4</td>
                        <td height="auto" class="scrapedClass">수강신청</td>
                        <td height="auto" class="scrapedClass">교양학부</td>
                        <td height="auto" class="scrapedClass">SA030200</td>
                        <td height="auto" class="scrapedClass">공통 드라마 영어</td>
                        <td height="auto" class="scrapedClass">002</td>
                        <td height="auto" class="scrapedClass">공통교양</td>
                        <td height="auto" class="scrapedClass">영어</td>
                        <td height="auto" class="scrapedClass">글로벌역량</td>
                        <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                        <td height="auto" class="scrapedClass">45</td>
                        <td height="auto" class="scrapedClass">0/45</td>
                        <td height="auto" class="scrapedClass">화/1-3</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">수잔 홀랜드</td>
                        <td height="auto" class="scrapedClass">공용</td>
                        <td height="auto" class="scrapedClass">원격(실시간)</td>
                        <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        <td height="auto" class="scrapedClass"><button class="scrapedClassBtn" onClick="enrollClass(4)">수강신청</button></td>
                    </tr>
                    <tr height="25">
                        <td height="auto" class="scrapedClass">5</td>
                        <td height="auto" class="scrapedClass">수강신청</td>
                        <td height="auto" class="scrapedClass">교양학부</td>
                        <td height="auto" class="scrapedClass">SS051300</td>
                        <td height="auto" class="scrapedClass">과학기술사</td>
                        <td height="auto" class="scrapedClass">001</td>
                        <td height="auto" class="scrapedClass">핵심교양</td>
                        <td height="auto" class="scrapedClass">역사의해석</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                        <td height="auto" class="scrapedClass">80</td>
                        <td height="auto" class="scrapedClass">0/80</td>
                        <td height="auto" class="scrapedClass">금/1-3</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">김준식</td>
                        <td height="auto" class="scrapedClass">공용</td>
                        <td height="auto" class="scrapedClass">원격(실시간)</td>
                        <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        <td height="auto" class="scrapedClass"><button class="scrapedClassBtn" onClick="enrollClass(5)">수강신청</button></td>
                    </tr>
                    <tr height="25">
                        <td height="auto" class="scrapedClass">6</td>
                        <td height="auto" class="scrapedClass">수강신청</td>
                        <td height="auto" class="scrapedClass">교양학부</td>
                        <td height="auto" class="scrapedClass">SS086900</td>
                        <td height="auto" class="scrapedClass">설득의 과학</td>
                        <td height="auto" class="scrapedClass">001</td>
                        <td height="auto" class="scrapedClass">핵심교양</td>
                        <td height="auto" class="scrapedClass">인식과가치</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                        <td height="auto" class="scrapedClass">190</td>
                        <td height="auto" class="scrapedClass">0/190</td>
                        <td height="auto" class="scrapedClass">수/7-9</td>
                        <td height="auto" class="scrapedClass"></td>
                        <td height="auto" class="scrapedClass">소현진</td>
                        <td height="auto" class="scrapedClass">공용</td>
                        <td height="auto" class="scrapedClass">원격(녹화콘텐츠)</td>
                        <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        <td height="auto" class="scrapedClass"><button class="scrapedClassBtn" onClick="enrollClass(6)">수강신청</button></td>
                    </tr>
                    </tbody>
                </table>

                <!--수강신청 과목-->
                <table width="100%" cellspacing="5" cellpadding="0">
                    <colgroup>
                        <col width="8%">
                        <col width="5%">
                        <col width="77%">
                        <col width="10%">
                    </colgroup>

                    <tbody>
                    <tr height="30">
                        <td><label id="lblGrxMstTlsnTitle" style="font-weight: bold;">수강강좌 내역</label></td>
                        <td><label id="lblLinkText1" style="font-weight: bold;"> </label></td>
                        <td><label id="lblLinkText2" style="font-weight: bold; color: red;"> </label></td>
                        <td><label id="lblGrxMstTlsnCnt" style="text-align:right">[  0  ]</label></td>
                    </tr>
                    </tbody>
                </table>
                <table id="grxMstTlsnHeader" width="100%" cellspacing="0" cellpadding="0">
                    <colgroup>
                        <col width="2%">
                        <col width="3%">
                        <col width="7%">
                        <col width="5%">
                        <col width="10%">
                        <col width="3%">
                        <col width="5%">
                        <col width="3%">
                        <col width="4%">
                        <col width="6%">
                        <col width="4%">
                        <col width="4%">
                        <col width="6%">
                        <col width="5%">
                        <col width="5%">
                        <col width="4%">
                        <col width="5%">
                        <col width="4%">
                        <col width="10%">
                    </colgroup>
                    <tbody>
                    <tr height="20">
                        <td height="auto" class="lblSearchCenter grxHeaderExt">No</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">취소</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">개설학과전공</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">학수번호</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">교과목명</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">분반</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">이수구분</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">영역</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">교과세부</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">학점/이론/실습</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수강정원</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수강인원</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">요일/교시</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">강의실</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">담당교수</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">캠퍼스</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수업유형</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">폐강여부</td>
                        <td height="auto" class="lblSearchCenter grxHeaderExt">수강안내 및 지정내용</td>
                    </tr>
                    </tbody>
                    <table>
                        <colgroup>
                            <col width="2%">
                            <col width="3%">
                            <col width="7%">
                            <col width="5%">
                            <col width="10%">
                            <col width="3%">
                            <col width="5%">
                            <col width="3%">
                            <col width="4%">
                            <col width="6%">
                            <col width="4%">
                            <col width="4%">
                            <col width="6%">
                            <col width="5%">
                            <col width="5%">
                            <col width="4%">
                            <col width="5%">
                            <col width="4%">
                            <col width="10%">
                        </colgroup>
                        <tbody id="enrolledClass">
                        <tr height="25" style="visibility: hidden">
                            <td height="auto" class="scrapedClass">1</td>
                            <td height="auto" class="scrapedClass">수강신청</td>
                            <td height="auto" class="scrapedClass">컴퓨터공학과</td>
                            <td height="auto" class="scrapedClass">LC001500</td>
                            <td height="auto" class="scrapedClass">운영체제</td>
                            <td height="auto" class="scrapedClass">001</td>
                            <td height="auto" class="scrapedClass">핵심전공</td>
                            <td height="auto" class="scrapedClass">2영역</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                            <td height="auto" class="scrapedClass">150</td>
                            <td height="auto" class="scrapedClass">0/150</td>
                            <td height="auto" class="scrapedClass">화/7-9</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">심광섭</td>
                            <td height="auto" class="scrapedClass">성신</td>
                            <td height="auto" class="scrapedClass">원격(녹화콘텐츠)</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        </tr>
                        <tr height="25" style="visibility: hidden">
                            <td height="auto" class="scrapedClass">2</td>
                            <td height="auto" class="scrapedClass">수강신청</td>
                            <td height="auto" class="scrapedClass">컴퓨터공학과</td>
                            <td height="auto" class="scrapedClass">LC001800</td>
                            <td height="auto" class="scrapedClass">자바프로그래밍</td>
                            <td height="auto" class="scrapedClass">001</td>
                            <td height="auto" class="scrapedClass">핵심전공</td>
                            <td height="auto" class="scrapedClass">2영역</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">3.0/0.0/3.0</td>
                            <td height="auto" class="scrapedClass">50</td>
                            <td height="auto" class="scrapedClass">0/50</td>
                            <td height="auto" class="scrapedClass">화/1-3</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">노현아</td>
                            <td height="auto" class="scrapedClass">성신</td>
                            <td height="auto" class="scrapedClass">원격(녹화콘텐츠)</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        </tr>
                        <tr height="25" style="visibility: hidden">
                            <td height="auto" class="scrapedClass">3</td>
                            <td height="auto" class="scrapedClass">수강신청</td>
                            <td height="auto" class="scrapedClass">컴퓨터공학과</td>
                            <td height="auto" class="scrapedClass">LC003900</td>
                            <td height="auto" class="scrapedClass">고급자료구조</td>
                            <td height="auto" class="scrapedClass">001</td>
                            <td height="auto" class="scrapedClass">핵심전공</td>
                            <td height="auto" class="scrapedClass">2영역</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                            <td height="auto" class="scrapedClass">90</td>
                            <td height="auto" class="scrapedClass">0/90</td>
                            <td height="auto" class="scrapedClass">월/7-9</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">장재경</td>
                            <td height="auto" class="scrapedClass">성신</td>
                            <td height="auto" class="scrapedClass">원격(녹화콘텐츠)</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        </tr>
                        <tr height="25" style="visibility: hidden">
                            <td height="auto" class="scrapedClass">4</td>
                            <td height="auto" class="scrapedClass">수강신청</td>
                            <td height="auto" class="scrapedClass">교양학부</td>
                            <td height="auto" class="scrapedClass">SA030200</td>
                            <td height="auto" class="scrapedClass">공통 드라마 영어</td>
                            <td height="auto" class="scrapedClass">002</td>
                            <td height="auto" class="scrapedClass">공통교양</td>
                            <td height="auto" class="scrapedClass">영어</td>
                            <td height="auto" class="scrapedClass">글로벌역량</td>
                            <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                            <td height="auto" class="scrapedClass">45</td>
                            <td height="auto" class="scrapedClass">0/45</td>
                            <td height="auto" class="scrapedClass">화/1-3</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">수잔 홀랜드</td>
                            <td height="auto" class="scrapedClass">공용</td>
                            <td height="auto" class="scrapedClass">원격(실시간)</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        </tr>
                        <tr height="25" style="visibility: hidden">
                            <td height="auto" class="scrapedClass">5</td>
                            <td height="auto" class="scrapedClass">수강신청</td>
                            <td height="auto" class="scrapedClass">교양학부</td>
                            <td height="auto" class="scrapedClass">SS051300</td>
                            <td height="auto" class="scrapedClass">과학기술사</td>
                            <td height="auto" class="scrapedClass">001</td>
                            <td height="auto" class="scrapedClass">핵심교양</td>
                            <td height="auto" class="scrapedClass">역사의해석</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                            <td height="auto" class="scrapedClass">80</td>
                            <td height="auto" class="scrapedClass">0/80</td>
                            <td height="auto" class="scrapedClass">금/1-3</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">김준식</td>
                            <td height="auto" class="scrapedClass">공용</td>
                            <td height="auto" class="scrapedClass">원격(실시간)</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        </tr>
                        <tr height="25" style="visibility: hidden">
                            <td height="auto" class="scrapedClass">6</td>
                            <td height="auto" class="scrapedClass">수강신청</td>
                            <td height="auto" class="scrapedClass">교양학부</td>
                            <td height="auto" class="scrapedClass">SS086900</td>
                            <td height="auto" class="scrapedClass">설득의 과학</td>
                            <td height="auto" class="scrapedClass">001</td>
                            <td height="auto" class="scrapedClass">핵심교양</td>
                            <td height="auto" class="scrapedClass">인식과가치</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">3.0/3.0/0.0</td>
                            <td height="auto" class="scrapedClass">190</td>
                            <td height="auto" class="scrapedClass">0/190</td>
                            <td height="auto" class="scrapedClass">수/7-9</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">소현진</td>
                            <td height="auto" class="scrapedClass">공용</td>
                            <td height="auto" class="scrapedClass">원격(녹화콘텐츠)</td>
                            <td height="auto" class="scrapedClass"></td>
                            <td height="auto" class="scrapedClass">홈페이지 참고</td>
                        </tr>

                        </tbody>
                    </table>

                </table>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
<script>
    function enrollClass(no){
        var table = document.getElementById('scrapedClassTable');
        table.deleteRow(0);
        alert('수강 신청에 성공했습니다.');

        document.getElementById('enrolledClass').getElementsByTagName('tr')[no-1].style.visibility = "visible";
    }
</script>
</html>
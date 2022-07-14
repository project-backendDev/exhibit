<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>가천 이길여 산부인과 기념관</title>
	<meta name="author" content="" />
	<meta name="description" content="가천 이길여 산부인과 기념관" />
	<meta name="keywords"  content="가천 이길여 산부인과 기념관" />
	<meta name="Resource-type" content="Document" />


	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/reset.css" /> 
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/sub.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/swiper/css/swiper.css">
	<!--[if IE]>
		<script type="text/javascript">
			 var console = { log: function() {} };
		</script>
	<![endif]-->

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
	

	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/swiper/js/swiper.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/scripts/script.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- <script type="text/javascript" src="examples.js"></script> -->

    <!-- datepicker -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/datepicker.css" >
    <!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body class="Pretendard">

	<!-- top 영역 시작 -->
	<header>
		<c:import url="${pageContext.request.contextPath }/assets/include/topbar.jsp" />
	</header>
	<!-- top 영역 끝 -->
	
	<!-- fixed_con 영역 시작 -->
	<c:import url="${pageContext.request.contextPath }/assets/include/fixed_con.jsp" />
	<!-- fixed_con 영역 끝 -->
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/reserv_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>단체관람 예약</h2>
                <p>Lee Gil-ya Women’s Clinic Exhibit Hall</p>
            </div>
        </div>
    </div>
	<div class="content" style="background: #F9F9F9;">
        <div class="wrap">
            <div class="cont">
                <div class="head_tit">
                    <h2></h2>
                    <ul class="page_info">
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_house.png" alt=""></li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>관람 안내</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>단체관람 예약</li>
                    </ul>
                </div>
                <div class="form_wrap">
                    <!-- <h2>관람 예약</h2> -->
                    <form action="">
                        <div class="form_box">
                            <div class="form_head">
                                <i><img src="${pageContext.request.contextPath }/assets/images/i_write.png" alt=""></i>
                                <p>* <span>&nbsp;20인 이상 단체관람은 </span> 관람일 일주일 이전에 미리 예약해주시기 바랍니다.</p>
                                

                            </div>
                            <div class="form_con one">
                                <div class="input_wrap ">
                                    <h5>성명<span>*</span></h5>
                                    <input type="text">
                                </div>
                            </div>       
                            <div class="form_con tel">
                                <div class="input_wrap">
                                    <h5>연락처<span>*</span></h5>
                                    <select name="" id="">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                    <span>―</span>
                                    <input type="text">
                                    <span>―</span>
                                    <input type="text">
                                </div>
                            </div>    
                            <div class="form_con date">
                                <div class="input_wrap">
                                    <h5>관람일<span>*</span></h5>
                                    <input type="text" id="date" autocomplete="off" placeholder="선택된 날짜가 없습니다.">
                                </div>
                            </div>     
                            <div class="form_con time">
                                <div class="input_wrap">
                                    <h5>관람시간 <span>*</span></h5>
                                    <div class="time_select">
                                        <select name="" id="">
                                            <option value="00">00</option>
                                            <option value="01">01</option>
                                            <option value="02">02</option>
                                            <option value="03">03</option>
                                            <option value="04">04</option>
                                            <option value="05">05</option>
                                            <option value="06">06</option>
                                            <option value="07">07</option>
                                            <option value="08">08</option>
                                            <option value="09">09</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>
                                            <option value="24">24</option>
                                        </select>
                                        <span class="mr">시</span>
                                        <select name="" id="">
                                            <option value="00">00</option>
                                            <option value="01">01</option>
                                            <option value="02">02</option>
                                            <option value="03">03</option>
                                            <option value="04">04</option>
                                            <option value="05">05</option>
                                            <option value="06">06</option>
                                            <option value="07">07</option>
                                            <option value="08">08</option>
                                            <option value="09">09</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>
                                            <option value="24">24</option>
                                            <option value="25">25</option>
                                            <option value="26">26</option>
                                            <option value="27">27</option>
                                            <option value="28">28</option>
                                            <option value="29">29</option>
                                            <option value="30">30</option>
                                            <option value="31">31</option>
                                            <option value="32">32</option>
                                            <option value="33">33</option>
                                            <option value="34">34</option>
                                            <option value="35">35</option>
                                            <option value="36">36</option>
                                            <option value="37">37</option>
                                            <option value="38">38</option>
                                            <option value="39">39</option>
                                            <option value="40">40</option>
                                            <option value="41">41</option>
                                            <option value="42">42</option>
                                            <option value="43">43</option>
                                            <option value="44">44</option>
                                            <option value="45">45</option>
                                            <option value="46">46</option>
                                            <option value="47">47</option>
                                            <option value="48">48</option>
                                            <option value="49">49</option>
                                            <option value="50">50</option>
                                            <option value="51">51</option>
                                            <option value="52">52</option>
                                            <option value="53">53</option>
                                            <option value="54">54</option>
                                            <option value="55">55</option>
                                            <option value="56">56</option>
                                            <option value="57">57</option>
                                            <option value="58">58</option>
                                            <option value="59">59</option>
                                        </select>
                                        <span>분</span>
                                       
                                    </div>
                                </div>
                            </div>                                       
                            <div class="form_con reserv">
                                <div class="input_wrap">
                                    <h5>예약인원<span>*</span></h5>
                                    <select name="" id="">
                                        <option value="0 명">0 명</option>
                                        <option value="1 명">1 명</option>
                                        <option value="2 명">2 명</option>
                                        <option value="3 명">3 명</option>
                                        <option value="4 명">4 명</option>
                                        <option value="5 명">5 명</option>
                                        <option value="6 명">6 명</option>
                                        <option value="7 명">7 명</option>
                                        <option value="8 명">8 명</option>
                                        <option value="9 명">9 명</option>
                                        <option value="10 명">10 명</option>
                                        <option value="11 명">11 명</option>
                                        <option value="12 명">12 명</option>
                                        <option value="13 명">13 명</option>
                                        <option value="14 명">14 명</option>
                                        <option value="15 명">15 명</option>
                                        <option value="16 명">16 명</option>
                                        <option value="17 명">17 명</option>
                                        <option value="18 명">18 명</option>
                                        <option value="19 명">19 명</option>
                                        <option value="20 명">20 명</option>
                                        <option value="21 명">21 명</option>
                                        <option value="22 명">22 명</option>
                                        <option value="23 명">23 명</option>
                                        <option value="24 명">24 명</option>
                                        <option value="25 명">25 명</option>
                                        <option value="26 명">26 명</option>
                                        <option value="27 명">27 명</option>
                                        <option value="28 명">28 명</option>
                                        <option value="29 명">29 명</option>
                                    </select>
                                </div>
                            </div>            
                            <div class="form_con double last">
                                <div class="input_wrap">
                                    <h5>교통수단<span>*</span></h5>
                                    <ul class="list_wrap">
                                        <li>
                                            <input type="radio" name="transfer" id="transfer1" checked="">
                                            <label for="transfer1"><i><img src="${pageContext.request.contextPath }/assets/images/i_check.png" alt=""></i>자동차</label>
                                        </li>
                                        <li>
                                            <input type="radio" name="transfer" id="transfer2">
                                            <label for="transfer2"><i><img src="${pageContext.request.contextPath }/assets/images/i_check.png" alt=""></i>대중교통</label>
                                        </li>
                                        <li>
                                            <input type="radio" name="transfer" id="transfer3">
                                            <label for="transfer3"><i><img src="${pageContext.request.contextPath }/assets/images/i_check.png" alt=""></i>25인 버스</label>
                                        </li>
                                        <li>
                                            <input type="radio" name="transfer" id="transfer4">
                                            <label for="transfer4"><i><img src="${pageContext.request.contextPath }/assets/images/i_check.png" alt=""></i>45인 버스</label>
                                        </li>
                                        <li>
                                            <input type="radio" name="transfer" id="transfer5">
                                            <label for="transfer5"><i><img src="${pageContext.request.contextPath }/assets/images/i_check.png" alt=""></i>도보</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="apply_btn bordernone ">
                                <a href="#">
                                    저장
                                </a>
                            </div>
                        </div>
         
                    </form>
                </div>
            </div>            
        </div>
	</div>
	
    <!-- footer 시작 -->
	<footer>
		<c:import url="${pageContext.request.contextPath }/assets/include/footer.jsp" />
	</footer>
	<!-- // footer 끝 -->





</body>
</html>

<script>
    
    // 달력
    $(function() {
        //input을 datepicker로 선언
        $("#date").datepicker({
            dateFormat: 'yy-mm-dd' //달력 날짜 형태
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
            ,changeYear: true //option값 년 선택 가능
            ,changeMonth: true //option값  월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
            ,buttonText: "선택" //버튼 호버 텍스트              
         //    ,yearSuffix: "년"
            ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
            ,dayNamesMin: ['S','M','T','W','T','F','S'] //달력의 요일 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
            ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
        });   
    });
</script>
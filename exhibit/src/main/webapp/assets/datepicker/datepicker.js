// 달력 두개 띄우기 이벤트 (시작일,종료일,리스트명)
function TwoDateSelectLayer(StartDate,EndDate){
   
    var ifrTwoDate = document.all.iframeTwoDate;
    var divTwoDate = document.all.hiddenDivTwoDate;
    var pop_cal_wrap = document.all.pop_cal_wrap;
   
    // 새로운 디폴트 날짜 적용을 위해 옵션 없애기
    $( ".date" ).datepicker( "destroy" );
    $( ".date2" ).datepicker( "destroy" );
   
        $('.date').each(function(i,e){
           var $d = $(this);
           $d.datepicker({
               altField: $d.data('altfield'), // div태그에 지정한 input에 값 설정
               dateFormat: 'yy-mm-dd', // 날짜 표시 형식
               changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시
               changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시
               monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
               defaultDate: StartDate, // 인자로 받아온 값으로 달력 로딩시 세팅
               showMonthAfterYear:true,
               showOtherMonths: true, // 다음달 날짜도 표시
               selectOtherMonths: true, // 다음달 날짜도 선택 가능
               beforeShowDay: nationalDays, // 토, 일 색 변경 이벤트
               beforeShow: nationalMonth
           });
        });
        $('.date2').each(function(i,e){
           var $d = $(this);
           $d.datepicker({
               altField: $d.data('altfield'), // div태그에 지정한 input에 값 설정
               dateFormat: 'yy-mm-dd', // 날짜 표시 형식
               changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시
               changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시
               monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
               defaultDate: EndDate,
               showMonthAfterYear:true,
               showOtherMonths: true, // 다음달 날짜도 표시
               selectOtherMonths: true, // 다음달 날짜도 선택 가능
               beforeShowDay: nationalDays, // 토, 일 색 변경 이벤트
               beforeShow: nationalMonth
           });
        });
       
    if(ifrTwoDate.style.visibility == "hidden"){
        ifrTwoDate.style.visibility = "visible";
        divTwoDate.style.visibility = "visible";
        pop_cal_wrap.style.visibility = "visible";
    }else{
        ifrTwoDate.style.visibility = "hidden";
        divTwoDate.style.visibility = "hidden";
        pop_cal_wrap.style.visibility = "hidden";
    }
   
    ifrTwoDate.style.width = $("#pop_cal_wrap").width()+3;
    divTwoDate.style.width = $("#pop_cal_wrap").width()+3;
}
 
// 토요일 , 일요일 색상 지정 이벤트
function nationalMonth() {
    clearTimeout(nationalMonth.timer);
    if ($('#ui-datepicker-div .ui-datepicker-calendar').is(':visible')) {
        $('.ui-datepicker-week-end:last-child').addClass('saturday');
    } else {
        nationalMonth.timer = setTimeout(nationalMonth, 100);
    }
}
function nationalDays(date) {
    if(date.getDay() == 6){
        return [true, 'saturday'];
    } else {
        return [true];
    }
 
}
// 날짜 선택 팝업 확인 버튼 클릭 이벤트
function TwoDateSelect(){
   
    var ifrTwoDate = document.all.iframeTwoDate;
    var divTwoDate = document.all.hiddenDivTwoDate;
    var pop_cal_wrap = document.all.pop_cal_wrap;
   
    ifrTwoDate.style.visibility = "hidden";
    divTwoDate.style.visibility = "hidden";
    pop_cal_wrap.style.visibility = "hidden";
 
}
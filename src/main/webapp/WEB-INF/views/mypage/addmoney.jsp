<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:::Everyday 캠프마켓:::</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link href="resources/assets/css/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="resources/assets/css/style.css">
<link rel="stylesheet" href="resources/assets/css/zerogrid.css" type="text/css" media="screen">
<link rel="stylesheet" href="resources/assets/css/responsive.css" type="text/css" media="screen"> 
<link rel="stylesheet" href="resources/assets/css/form.css">
<script src="https://kit.fontawesome.com/c89215f053.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src="resources/assets/js/jquery.js"></script>
<script src="resources/assets/js/jquery-migrate-1.1.1.js"></script>
<script src="resources/assets/js/superfish.js"></script>
<script src="resources/assets/js/jquery.easing.1.3.js"></script>
<script src="resources/assets/js/sForm.js"></script>
<script src="resources/assets/js/forms.js"></script>
<script src="resources/assets/js/css3-mediaqueries.js"></script>
<script src="resources/assets/js/httpRequest.js"></script>
<script src="resources/assets/js/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/c89215f053.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="main">
<!--==============================header=================================-->
 <header> 
  <div class="zerogrid">
    <div class="col-full">
	<div class="wrap-col">
    <h1><a href="index.html"><img src="resources/assets/img/images/logo.png" alt="EXTERIOR"></a> </h1>
    
         <div class="menu_block">
           <nav>
            <ul class="sf-menu">
                   <li><a href="home">Home</a></li>                   
                   <li><a href="marketMain_Temp">밀키트</a></li>
                   <li><a href="reviewMain_Temp">후기</a></li>
                   <li><a href="campingAreaMain_Temp">주변 캠핑장 </a></li>
                   <li class="with_ul current"><a href="memberInfo_Temp">마이페이지</a>
				   	<ul>
                         <li><a href="money.do"> 카드등록/충전</a></li>
                         <li><a href="#">Good rest</a></li>
                         <li><a href="#">Services</a></li>
                         <li><a href="makeSampleId">샘플 로그인!</a></li>
                     </ul>
				   </li>
				   		<li><a href="##############">로그아웃</a></li>					   	
				   				   
                 </ul>
           </nav>
           <div class="clear"></div>
           </div>
           <div class="clear"></div>
		</div>
      </div>
    </div>
</header>
<!--=======content================================-->



<div class="wrapper row3">
  <main class="hoc container clear" style="height: 350px"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <section id="introblocks">
      <ul class="nospace group btmspace-80 elements elements-four">
        <li class="one_quarter">
          <article><a href="#####"><i class="fas fa-turkey"></i></a>
            <h6 class="heading_card">카드정보</h6>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="#section2"><i class="fas fa-dover"></i></a>
            <h6 class="heading_card">카드등록</h6>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="#section3"><i class="fas fa-histrory"></i></a>
            <h6 class="heading_card">충전하기</h6>
          </article>
        </li>
        <li class="one_quarter">
          <article><a href="#####"><i class="fas fa-hearrtbeat"></i></a>
            <h6 class="heading_card">이용내역</h6>
          </article>
        </li>
      </ul>
    </section>
    <!-- ################################################################################################ -->
   
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- 카드등록섹션 -->
<div class="wrapper row2">
  <section id="ctdetails" class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle"  id="section2">
      <p class="nospace font-xs"></p>
      <h6 class="heading font-x2" style="font:40px 'Do Hyeon', sans-serif; 
	font-weight:600; letter-spacing:6px;">카드등록</h6>
    </div>
    <figure class="one_half first">
    <div style="width:87%; margin-left: 35px; margin-bottom:15px; color:#826660;">
    <p class="nospace font-xs" style="line-height: 25px;" align="justify">
    CVC 번호란 신용카드 번호와는 별도로 인쇄되어 있는 3자리 또는 4자리 숫자로, 
   	 카드 이용 명세서 등에는 인쇄되지 않습니다. 
    CVC 번호를 입력함으로써 카드를 소지하고 있다는 사실을 확인하고
         제3자에 의한 부정 사용을 방지할 수 있습니다.   
    </p>
    </div>
    <img src="resources/assets/img/images/cvcImg.png" style="margin-left:30px; margin-top: 5px">      
    </figure>
    <article class="one_half">     
    
      <form id="registCardForm">       
      
      
          <input type="hidden" id="cardId" name="id" value="${sessionScope.loginId}">           
          <input type="text" onKeyup="moveNumber(this)" id="cardNo" name="cardno"
           placeholder="카드번호 ('-'제외한 숫자 16자리)" maxlength="16">
          <input type="text" onKeyup="moveNumber(this)" id="validDate" name="validcarddate" 
          placeholder="유효기간   (예) 0524(월/연도))" maxlength="4">
          <input type="password" onKeyup="moveNumber(this)" id="cvcNo" name="cvcno"
           placeholder="CVC번호 (숫자 3자리)"  maxlength="3"> 
          <input type="password" id="simplePwd1" onKeyup="moveNumber(this)" name="simplepwd" 
          placeholder="결제시 사용할 비밀번호 (숫자 6자리)"  maxlength="6">
          <input type="password" id="simplePwd2" onKeyup="moveNumber(this)" 
          placeholder="결제 비밀번호 재입력"  maxlength="6">
          <input type="button" id="registCardBtn" value="등록하기" 
          style="background-color:#A197BD; cursor:pointer; border-radius: 8px">
     
      </form>
      
    </article>
    <!-- ################################################################################################ -->
  </section>
</div>



<!-- 카드충전섹션 -->
<div class="wrapper row2">
  <section id="ctdetails" class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle"  id="section3">
      <p class="nospace font-xs"></p>
      <h6 class="heading font-x2" style="font:40px 'Do Hyeon', sans-serif; 
	font-weight:600; letter-spacing:6px;">카드충전</h6>
    </div>
    <figure class="one_half first">
    <div style="width:87%; margin-left: 35px; margin-bottom:15px; color:#826660;">
    <p class="nospace font-xs" style="line-height: 25px;" align="justify">
    CVC 번호란 신용카드 번호와는 별도로 인쇄되어 있는 3자리 또는 4자리 숫자로, 
   	 카드 이용 명세서 등에는 인쇄되지 않습니다. 
    CVC 번호를 입력함으로써 카드를 소지하고 있다는 사실을 확인하고
         제3자에 의한 부정 사용을 방지할 수 있습니다.   
    </p>
    </div>
    <img src="resources/assets/img/images/cvcImg.png" style="margin-left:30px; margin-top: 5px">      
    </figure>
    <article class="one_half">     
    
      <form id="registCardForm">   
          <input type="text" placeholder="충전할 금액을 입력하세요" style="margin-bottom:0px;" 
          maxlength="7" onKeyup="numberFormat(this)" class="numFormat" 
          id="addingMoney" name="addedmoney">
          <a class="btnA" onclick="plus(10)">+10만원</a>
		  <a class="btnA" onclick="plus(5)">+5만원</a>
		  <a class="btnA" onclick="plus(1)">+1만원</a>
		  <i class="fa-solid fa-rotate-left" style="color:#BDA697; cursor:pointer;
		  margin:15px 0 0 10px; font-size: 43px" onclick="resetMoney()"></i>
		  <label style="margin-bottom:10px; margin-top:15px">현재 잔액</label>
          <input type="text" disabled value="${vo1.totalmoney}" name="totalmoney"
           class="numFormat" id="totalmoney">
		  <label style="margin-bottom:10px">충전 후 금액</label>
          <input type="text" disabled class="numFormat" 
          id="afterAddedMoney" style="color:red"> 
          <input type="password" placeholder="결제 비밀번호 6자리를 입력하세요" id="simplepwd" 
          name="simplepwd" class="numFormat" maxlength="6">
          <input type="button" id="addMoneyBtn" value="충전하기" style="background-color:#BDA697; 
          cursor:pointer; border-radius: 8px" class="numFormat" onclick="addMoney()">
      </form>
      
    </article>
    <!-- ################################################################################################ -->
  </section>
</div>
















<%-- <c:choose>
          	<c:when test="${vo.addedmoney eq null}">
	          <input type="hidden" name="totalmoney" value="0">
          	</c:when>
			<c:otherwise>
	          <input type="hidden" name="totalmoney" value="${vo.addedmoney}+${vo.totalmoney}">
			</c:otherwise>
          </c:choose>
 --%>




<!--           <button type="submit" id="registCardBtn" value="submit">Submit</button> -->
<div class="content">
  <div class="zerogrid">
  	<div class="row">
  	
  	<!-- 2사분면 -->
  	<div class="col-2-5">
	<div class="wrap-col">
    
      <h2>카드 등록</h2>
      <form id="form_money">
      <fieldset>
      <label class="name">
      <input type="text" value="카드번호:" >
      <!-- <br class="clear"> -->
      <span class="error error-empty">*This is not a valid name.</span><span class="empty error-empty">*This field is required.</span> </label>
      	<!-- <input type="text" class="moveNumber" id="cardno1" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
		<input type="text" class="moveNumber" id="cardno2" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
		<input type="text" class="moveNumber" id="cardno3" onKeyup="moveNumber(this);" maxlength="4"/>&nbsp;&nbsp;-&nbsp;
		<input type="password" class="moveNumber" id="cardno4" maxlength="4"/>
		<input type="hidden" name="cardno" id="cardno"> -->
      <label class="email">
      <input type="text" value="E-mail:" style="width: 400px;">
      <br class="clear">
      <input type="text" value="E-mail:">
      <br class="clear">
      <input type="text" value="E-mail:">
      <br class="clear">
      <input type="text" value="E-mail:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid email address.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="phone">
      <input type="tel" value="Phone:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid phone number.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="message">
      <textarea>Message:</textarea>
      <br class="clear">
      <span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span> </label>
      <div class="clear"></div>
      <div class="btns"><a data-type="reset" class="btn">clear</a><a data-type="submit" class="btn">send</a>
      <div class="clear"></div>
      <div class="success_wrapper">
       <div class="success">Contact form submitted!<br>
      <strong>We will be in touch soon.</strong></div></div>
      </div></fieldset></form>
      
      
      
      
      
      
      
      
     
	 </div>
    </div>
  	
    <div class="col-2-5">
		<div class="wrap-col">
           <%--  <h1 style="font-size: 20px">${sessionScope.loginId}님 마이페이지1</h1> --%>
      
            <div class="map">
            
            
		
		<p> 이제 vo 확인 ${vo.name}</p>

	
            
            <!-- <figure class="img_inner">
                          <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
               </figure>
              <address>
                            <dl>
                                <dt><p>The Company Name Inc.<br>
                                    8901 Marmora Road,<br>
                                    Glasgow, D04 89GR.</p>
                                </dt>
                                <dd><span>Freephone:</span>+1 800 559 6580</dd>
                                <dd><span>Telephone:</span>+1 800 603 6035</dd>
                                <dd><span>FAX:</span>+1 800 889 9898</dd>
                            </dl>
                         </address> -->
 
          </div>
	</div>
    </div>
<!-- 	<div class="col-1-5"><div class="wrap-col">empty</div></div> -->
    <div class="col-2-5">
	<div class="wrap-col">
      <h2>Contact Us</h2>
      <form id="form">
      <div class="success_wrapper">
      <div class="success">Contact form submitted!<br>
      <strong>We will be in touch soon.</strong> </div></div>
      <fieldset>
      <label class="name">
      <input type="text" value="Name:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid name.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="email">
      <input type="text" value="E-mail:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid email address.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="phone">
      <input type="tel" value="Phone:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid phone number.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="message">
      <textarea>Message:</textarea>
      <br class="clear">
      <span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span> </label>
      <div class="clear"></div>
      <div class="btns"><a data-type="reset" class="btn">clear</a><a data-type="submit" class="btn">send</a>
      <div class="clear"></div>
      </div></fieldset></form>
	 </div>
    </div>
    </div>
	
    <div class="row">
    <div class="bottom_block">
      <div class="col-1-2">
        <h3>Follow Us</h3>
        <div class="socials">
          <a href="#"></a>
          <a href="#"></a>
          <a href="#"></a>
        </div>
        <nav><ul>
                   <li><a href="index.html">Home</a></li>
                   <li><a href="index-1.html">About Us</a></li>
                   <li><a href="index-2.html">Menu</a></li>
                   <li><a href="index-3.html">Portfolio</a></li>
                   <li><a href="index-4.html">News </a></li>
                   <li class="current"><a href="index-5.html">Contacts</a></li>
                 </ul></nav>
      </div>
      <div class="col-1-2">
        <h3>Email Updates</h3>
        <p class="col1">Join our digital mailing list and get news<br> deals and be first to know about events</p>
        <form id="newsletter">
                  <div class="success">Your subscribe request has been sent!</div>
                  <label class="email">
                       <input type="email" value="Enter e-mail address" >
                       <a href="#" class="btn" data-type="submit">subscribe</a> 
                        <span class="error">*This is not a valid email address.</span>
                  </label> 
              </form> 
          </div>
      </div>
	  </div>
    </div>
  </div>
</div>
<!--==============================footer=================================-->

<footer>    
  <div class="zerogrid">
    <div class="col-full">
		<div class="wrap-col">
     Gourmet © 2013  &nbsp;&nbsp; |&nbsp;&nbsp;   <a href="#">Privacy Policy</a>    &nbsp;&nbsp;|&nbsp;&nbsp;  Designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster</a> - <a href="https://www.zerotheme.com/" title="free website templates">ZEROTHEME</a>
	 	</div>
    </div>
  </div>
</footer>
</body>


<script>
	
	$(function(){
		 $('#regist').css('display','block'); 
	}); 
	
		
//카드번호 자동 커서이동
	function moveNumber(num){
		//isFinite():유한한 수 -> true 반환 / 무한한 수 or 문자 -> false 반환
		if(isFinite(num.value)==false){
			alert("숫자만 입력해 주세요");
			num.value="";
			return false;
		}		
		
		max = num.getAttribute("maxlength");

		if(num.value.length >= max) {
			num.nextElementSibling.focus();
		}		
	}
	
	//카드등록하기
	$('#registCardBtn').on('click', function(){
		if($('#simplePwd2').val() != $('#simplePwd1').val()){
			alert("비밀번호가 일치하지 않습니다. 다시 입력해 주세요");
			$('#simplePwd2').focus();
			$('#simplePwd2').val('');
			return;
		}
		if($('#cardNo').val()==''){
			alert("카드번호를 입력해 주세요");	
			$('#cardNo').focus();		
			return;
		}
		if($('#validDate').val()==''){
			alert("유효기간을 입력해 주세요");	
			$('#validDate').focus();		
			return;
		}		
		if($('#cvcNo').val()==''){
			alert("CVC번호를 입력해 주세요");	
			$('#cvcNo').focus();
			return;
		}
		if($('#simplePwd1').val()==''){
			alert("비밀번호를 입력해 주세요");	
			$('#simplePwd1').focus();
			return;
		}
	
		$.ajax({
			url: "registCard.do",
			data: 	{id: '${sessionScope.loginId}',
					cardno: $('#cardNo').val(), 
					validcarddate: $('#validDate').val(),
					cvcno: $('#cvcNo').val(),
					simplepwd: $('#simplePwd1').val()},
			datatype: "json",
			async: false,
			type: "post"
		}).done(function(data){
			var json = (new Function('return'+data))();
			if(json[0].param=='y'){
				console.log(json[0].param);
				alert("카드 등록이 완료되었습니다");
				$('#simplePwd2').val('');
				$('#simplePwd1').val('');
				$('#cvcNo').val('');
				$('#validDate').val('');
				$('#cardNo').val('');
			}else if(json[0].param=='yesData'){
				alert("이미 등록된 카드입니다. 다른 카드로 시도해 주세요");
				$('#simplePwd2').val('');
				$('#simplePwd1').val('');
				$('#cvcNo').val('');
				$('#validDate').val('');
				$('#cardNo').val('');
				return;
			}else{
				alert("카드 등록이 실패했습니다. 관리자에게 문의 바랍니다");
				return;
			}
		}).fail(function(){
			alert("fail");
		})
	}); 
	
	
	//키보드 입력시 금액 추가하기
	 function numberFormat(num){
		var numberPattern = /[0-9]/g;
		if(!numberPattern.test(num.value)){
			alert("숫자만 입력해 주세요");
			num.value='';
		}
 		var numVal = Number($('#addingMoney').val());		
		$('#addingMoney').val(numVal);
		//충전 후 금액 표기
		var totalVal = Number($('#totalmoney').val());
		console.log("input totalmoney type: "+typeof totalVal);
		var totalMoney = numVal + totalVal;
		console.log("totalMoney type: "+typeof totalMoney);	
		console.log("total : " +totalMoney); 
		$('#afterAddedMoney').val(totalMoney);
	}
	
	//버튼클릭으로 충전금액 넣기
	function plus(money){
		var moneyBtn, addMoneyInput ,sum, addMoneyVal, totalMoneyVal; 
		addMoneyVal = Number($('#addingMoney').val());		
		moneyBtn = money*10000;
		addMoneyInput = addMoneyVal + moneyBtn;
		$('#addingMoney').val(addMoneyInput);
		totalMoneyVal = Number($('#totalmoney').val());
		$('#afterAddedMoney').val(addMoneyInput + totalMoneyVal);
	}
	
	//충전금액창 리셋하기
	function resetMoney(){
		$('#addingMoney').val('');
		var totalVal = parseInt($('#totalmoney').val().replace(',',''));
		$('#afterAddedMoney').val(totalVal);
	}	
	
	//충전하기
	/* $('#addMoneyBtn').on('click', function(){
		
			$.ajax({
				url: "addmoney.do",
				data: {id: '${sessionScope.loginId}', 
						simplepwd: $('#simplepwd').val(), 
						totalmoney: Number($('#totalmoney').val()),
						addedmoney: Number($('#addingMoney').val())},
				dataType: "JSON",
				async: false,
				type: "POST"
			}).done(function(data){
				alert("성공"+data);
			}).fail(function(){
				alert("실패");
			})			
				
	}); */
	
	
	//충전하기
	function addMoney(){
		if(confirm("충전하시겠습니까?")){
		var id = '${sessionScope.loginId}';
		var simplepwd = $('#simplepwd').val();
		var totalmoney = Number($('#totalmoney').val());
		var addedmoney = Number($('#addingMoney').val());
		
		var url = "addmoney.do";
		var param = "id="+id+"&simplepwd="+simplepwd+"&totalmoney="+totalmoney+"&addedmoney="+addedmoney;
		sendRequest(url, param, cb, "POST");
		}
	}
	
	function cb() {
		if(xhr.readyState==4 && xhr.status==200){
			var data = xhr.responseText;
			var json = (new Function('return'+data))();
			if(json[0].param=='noData'){
				alert("비밀번호가 일치하지 않습니다. 다시 시도해 주세요");
				$('#simplepwd').val('');
				$('#addingMoney').val('');
				$('#afterAddedMoney').val('');
				return;
			}else if(json[0].param=='y'){
				alert("충전이 정상적으로 완료되었습니다");
				$('#simplepwd').val('');
				$('#addingMoney').val('');
				$('#afterAddedMoney').val('');
				console.log("json[1].totalMoney: "+json[1].totalMoney);
				$('#totalmoney').attr('value', (json[1].totalMoney));
			}else{
				alert("충전 실행 도중 문제가 생겼습니다. 카드사에 문의바랍니다.");
				return;
			}
		}
	}
</script>
</html>
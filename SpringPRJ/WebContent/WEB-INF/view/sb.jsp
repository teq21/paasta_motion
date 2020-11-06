<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Dashboards Four | Notika - Notika Admin Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon
      ============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">
<!-- Google Fonts
      ============================================ -->
<link
   href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
   rel="stylesheet">
<!-- Bootstrap CSS
      ============================================ -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<!-- font awesome CSS
      ============================================ -->
<link rel="stylesheet" href="/css/font-awesome.min.css">
<!-- owl.carousel CSS
      ============================================ -->
<link rel="stylesheet" href="/css/owl.carousel.css">
<link rel="stylesheet" href="/css/owl.theme.css">
<link rel="stylesheet" href="/css/owl.transitions.css">
<!-- meanmenu CSS
      ============================================ -->
<link rel="stylesheet" href="/css/meanmenu/meanmenu.min.css">
<!-- animate CSS
      ============================================ -->
<link rel="stylesheet" href="/css/animate.css">
<!-- normalize CSS
      ============================================ -->
<link rel="stylesheet" href="/css/normalize.css">
<!-- mCustomScrollbar CSS
      ============================================ -->
<link rel="stylesheet"
   href="/css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- jvectormap CSS
      ============================================ -->
<link rel="stylesheet"
   href="/css/jvectormap/jquery-jvectormap-2.0.3.css">
<!-- Notika icon CSS
      ============================================ -->
<link rel="stylesheet" href="../css/notika-custom-icon.css">
<!-- wave CSS
      ============================================ -->
<link rel="stylesheet" href="/css/wave/waves.min.css">
<!-- main CSS
      ============================================ -->
<link rel="stylesheet" href="/css/main.css">
<!-- style CSS
      ============================================ -->
<link rel="stylesheet" href="/css/style.css">
<!-- responsive CSS
      ============================================ -->
<link rel="stylesheet" href="/css/responsive.css">
<!-- modernizr JS
      ============================================ -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>

<style>

.breadcomb-list{ background: #fff;
    box-shadow: 0 6px 10px rgba(0,0,0,.08), 0 0 6px rgba(0,0,0,.05);
      transition: .3s transform cubic-bezier(.155,1.105,.295,1.12),.3s box-shadow,.3s -webkit-transform cubic-bezier(.155,1.105,.295,1.12);
  padding: 14px 80px 18px 36px;
  cursor: pointer; }
}
.invoice-wrap {
   padding: 400px;
}

.area_gnb {
   float: right;
}

.white {
   color: white;
   margin-left: 24px;
}

.right {
   position: absolute;
   bottom: 10px;
   right: 35px;
}

.right1 {
   margin-left: 15px;
}

.tooltips-inner {
   height: 856px;
}

.bot{
     margin-top:20px;
     height:450px;
}

@import url("https://fonts.googleapis.com/css?family=Montserrat:200,400");


.pre-text {
    display: inline;
    font-weight: 600;
 }

.overflow {
  height: 30px;
  overflow: hidden;
  position: relative;
  width: 200px;
  display: -webkit-inline-box;
}

#text-animate > h2 {
  font-weight: 600;
  display: inline;
  position: absolute;
  margin-top: 0;
  margin-left: 20px;
  opacity: 0;
  animation: textAnimation 8s ease-in-out infinite;
  color: #00c292;
}

#text-animate > h2:nth-child(2) {
  animation-delay: 2s;
}
#text-animate > h2:nth-child(3) {
  animation-delay: 30s;
}
#text-animate > h2:nth-child(4) {
  animation-delay: 40s;
}
#text-animate > h2:nth-child(5) {
  animation-delay: 50s;
}

@keyframes textAnimation {
  0% {
    opacity: 1;
    top: 35px;
  }

  8% {
    opacity: 1;
    top: 0;
  }
  17% {
    opacity: 1;
    top: 0;
  }
  25% {
    opacity: 1;
    top: -35px;
  }
  100% {
    opacity: 1;
    top: -35px;
  }
}


</style>
</head>

<body>
   <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
   <!-- Start Header Top Area -->
   <div class="header-top-area">
      <div class="container">
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"
            style="width: 100%;">
            <div class="logo-area">
               <a href="#"><img src="img/logo/logo.png" alt="" /></a>
               <div class="area_gnb" style="margin-top: 10px;">
                  <a href="/user/login_register.do" class="white"> 로그인 </a> <b
                     class="white"> | </b> <a href="/user/login_register.do"
                     class="white"> 마이페이지 </a>
               </div>
            </div>
         </div>

      </div>
   </div>
   <!-- End Header Top Area -->
   <!-- Mobile Menu start -->
   <div class="mobile-menu-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <div class="mobile-menu">
                  <nav id="dropdown">
                  <ul class="mobile-menu-nav">
                     <li><a data-toggle="collapse" data-target="#Charts" href="#">Home</a>
                        <ul class="collapse dropdown-header-top">
                           <li><a href="index.html">Dashboard One</a></li>
                           <li><a href="index-2.html">Dashboard Two</a></li>
                           <li><a href="index-3.html">Dashboard Three</a></li>
                           <li><a href="index-4.html">Dashboard Four</a></li>
                           <li><a href="analytics.html">Analytics</a></li>
                           <li><a href="widgets.html">Widgets</a></li>
                        </ul></li>
                     <li><a data-toggle="collapse" data-target="#demoevent"
                        href="#">Email</a>
                        <ul id="demoevent" class="collapse dropdown-header-top">
                           <li><a href="inbox.html">Inbox</a></li>
                           <li><a href="view-email.html">View Email</a></li>
                           <li><a href="compose-email.html">Compose Email</a></li>
                        </ul></li>
                     <li><a data-toggle="collapse" data-target="#democrou"
                        href="#">Interface</a>
                        <ul id="democrou" class="collapse dropdown-header-top">
                           <li><a href="animations.html">Animations</a></li>
                           <li><a href="google-map.html">Google Map</a></li>
                           <li><a href="data-map.html">Data Maps</a></li>
                           <li><a href="code-editor.html">Code Editor</a></li>
                           <li><a href="image-cropper.html">Images Cropper</a></li>
                           <li><a href="wizard.html">Wizard</a></li>
                        </ul></li>
                     <li><a data-toggle="collapse" data-target="#demolibra"
                        href="#">Charts</a>
                        <ul id="demolibra" class="collapse dropdown-header-top">
                           <li><a href="flot-charts.html">Flot Charts</a></li>
                           <li><a href="bar-charts.html">Bar Charts</a></li>
                           <li><a href="line-charts.html">Line Charts</a></li>
                           <li><a href="area-charts.html">Area Charts</a></li>
                        </ul></li>
                     <li><a data-toggle="collapse" data-target="#demodepart"
                        href="#">Tables</a>
                        <ul id="demodepart" class="collapse dropdown-header-top">
                           <li><a href="normal-table.html">Normal Table</a></li>
                           <li><a href="data-table.html">Data Table</a></li>
                        </ul></li>
                     <li><a data-toggle="collapse" data-target="#demo" href="#">Forms</a>
                        <ul id="demo" class="collapse dropdown-header-top">
                           <li><a href="form-elements.html">Form Elements</a></li>
                           <li><a href="form-components.html">Form Components</a></li>
                           <li><a href="form-examples.html">Form Examples</a></li>
                        </ul></li>
                     <li><a data-toggle="collapse"
                        data-target="#Miscellaneousmob" href="#">App views</a>
                        <ul id="Miscellaneousmob" class="collapse dropdown-header-top">
                           <li><a href="notification.html">Notifications</a></li>
                           <li><a href="alert.html">Alerts</a></li>
                           <li><a href="modals.html">Modals</a></li>
                           <li><a href="buttons.html">Buttons</a></li>
                           <li><a href="tabs.html">Tabs</a></li>
                           <li><a href="accordion.html">Accordion</a></li>
                           <li><a href="dialog.html">Dialogs</a></li>
                           <li><a href="popovers.html">Popovers</a></li>
                           <li><a href="tooltips.html">Tooltips</a></li>
                           <li><a href="dropdown.html">Dropdowns</a></li>
                        </ul></li>
                     <li><a data-toggle="collapse" data-target="#Pagemob"
                        href="#">Pages</a>
                        <ul id="Pagemob" class="collapse dropdown-header-top">
                           <li><a href="contact.html">Contact</a></li>
                           <li><a href="invoice.html">Invoice</a></li>
                           <li><a href="typography.html">Typography</a></li>
                           <li><a href="color.html">Color</a></li>
                           <li><a href="login-register.html">Login Register</a></li>
                           <li><a href="404.html">404 Page</a></li>
                        </ul></li>
                  </ul>
                  </nav>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Mobile Menu end -->
   
   <!-- Main Menu area start-->
   <div class="main-menu-area mg-tb-40">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
                  <li class="active"><a data-toggle="tab" href="#Home"><i
                        class="notika-icon notika-house"></i> Home</a></li>
                  <li><a data-toggle="tab" href="#mailbox"><i
                        class="notika-icon notika-mail"></i> 공지사항</a></li>
                  <li><a data-toggle="tab" href="#Interface"><i
                        class="notika-icon notika-edit"></i> 학습게시판</a></li>
                  <li><a data-toggle="tab" href="#Charts"><i
                        class="notika-icon notika-bar-chart"></i> 문제풀이</a></li>
                  <li><a data-toggle="tab" href="#Tables"><i
                        class="notika-icon notika-windows"></i> 수화센터</a></li>
                  <li><a data-toggle="tab" href="#Forms"><i
                        class="notika-icon notika-form"></i> 학습하기</a></li>
               </ul>
               <div class="tab-content custom-menu-content">
                  <div id="Home"
                     class="tab-pane in active notika-tab-menu-bg animated flipInX">
                     <ul class="notika-main-menu-dropdown">
                        <li><a href="index.html">1</a></li>
                        <li><a href="index-2.html">2</a></li>
                        <li><a href="index-3.html">3</a></li>
                     </ul>
                  </div>
                  <div id="mailbox"
                     class="tab-pane notika-tab-menu-bg animated flipInX">
                     <ul class="notika-main-menu-dropdown">
                        <li><a href="inbox.html">4</a></li>
                        <li><a href="view-email.html">5</a></li>
                        <li><a href="compose-email.html">6</a></li>
                     </ul>
                  </div>
                  <div id="Interface"
                     class="tab-pane notika-tab-menu-bg animated flipInX">
                     <ul class="notika-main-menu-dropdown">
                        <li><a href="animations.html">7</a></li>
                        <li><a href="google-map.html">8</a></li>
                        <li><a href="data-map.html">9</a></li>
                     </ul>
                  </div>
                  <div id="Charts"
                     class="tab-pane notika-tab-menu-bg animated flipInX">
                     <ul class="notika-main-menu-dropdown">
                        <li><a href="flot-charts.html">10</a></li>
                        <li><a href="bar-charts.html">11</a></li>
                        <li><a href="line-charts.html">12</a></li>
                     </ul>
                  </div>
                  <div id="Tables"
                     class="tab-pane notika-tab-menu-bg animated flipInX">
                     <ul class="notika-main-menu-dropdown">
                        <li><a href="normal-table.html">13</a></li>
                        <li><a href="data-table.html">14</a></li>
                     </ul>
                  </div>
                  <div id="Forms"
                     class="tab-pane notika-tab-menu-bg animated flipInX">
                     <ul class="notika-main-menu-dropdown">
                        <li><a href="form-elements.html">15</a></li>
                        <li><a href="form-components.html">16</a></li>
                        <li><a href="form-examples.html">17</a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Main Menu area End-->

   <!-- Breadcomb area Start-->
   <div class="breadcomb-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <div class="breadcomb-list" ">
                  
                  <div style="text-align: center;">
  <div class="overflow">
    <h1 class="pre-text" style="color:#00c292;" >DO it sign! </h1>
    <div id="text-animate">
      <h2>수화사전</h2>
      <h2>알고싶은 수화를 직접 확인해보세요</h2>
      <h2>카드를 뒤집으면 설명이 나옵니다</h2>

    </div>
  </div>
</div>
                  
                  
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Breadcomb area End-->

   <!-- Map area Start-->
   <div class="tooltips-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <div class="tooltips-inner">
                  <div id="map" style="width: 100%; height: 350px;">

                  <script type="text/javascript"
                     src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0df63257760a216e4b86450802a70178 ">
                  </script>
                  <script>
                     var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
                     mapOption = {
                        center : new kakao.maps.LatLng(37.560770,
                              126.961665), // 지도의 중심좌표
                        level : 3
                     // 지도의 확대 레벨
                     };

                     var map = new kakao.maps.Map(mapContainer,
                           mapOption); // 지도를 생성합니다

                     //일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
                     var mapTypeControl = new kakao.maps.MapTypeControl();

                     // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
                     // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
                     map.addControl(mapTypeControl,
                           kakao.maps.ControlPosition.TOPRIGHT);

                     // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
                     var zoomControl = new kakao.maps.ZoomControl();
                     map.addControl(zoomControl,
                           kakao.maps.ControlPosition.RIGHT);

                     var imageSrc = 'https://www.flaticon.com/kr/premium-icon/icons/svg/1790/1790829.svg', // 마커이미지의 주소입니다    
                     imageSize = new kakao.maps.Size(50, 50), // 마커이미지의 크기입니다
                     imageOption = {
                        offset : new kakao.maps.Point(27, 69)
                     }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

                     //마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
                     var markerImage = new kakao.maps.MarkerImage(
                           imageSrc, imageSize, imageOption);

                     // 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
                     var positions = [
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">강남구수화통역센터 <br> 서울 강남구 학동로 343 강남포바빌딩 지하2층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.517400, 127.040621)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">강북구수화통역센터 <br> 서울 강북구 도봉로 388 테마빌딩 5층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.641333, 127.029658)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">강동구수화통역센터<br> 서울 강동구 성내로 52 성원빌딩 6층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.528289, 127.125671)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">강서구수화통역센터 <br> 서울 강서구 발산로 40 농수산식품공사 강서지사 419호</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.554228, 126.822057)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">관악구수화통역센터 <br> 서울 관악구 쑥고개로 128 1층 </div>',
                              latlng : new kakao.maps.LatLng(
                                    37.478654, 126.950667)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">광진구수화통역센터 <br> 서울 광진구 아차산로 417 3층  </div>',
                              latlng : new kakao.maps.LatLng(
                                    37.538067, 127.088994)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">구로구수화통역센터 <br> 서울 구로구 가마산로 272 4층(강서수도사업소 구로청사)</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.519562, 126.869786)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">금천구수화통역센터 <br> 서울 금천구 시흥대로147길 30-15 2층 </div>',
                              latlng : new kakao.maps.LatLng(
                                    37.474735, 126.896170)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">노원구수화통역센터 <br> 서울 노원구 상계로23길 17 2층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.658776, 127.068506)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">도봉구수화통역센터 <br> 서울 도봉구 마들로13길 153 옥산빌딩 4층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.657014, 127.046206)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">동대문구수화통역센터 <br> 서울 동대문구 청계천로 521 다사랑행복센터 5층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.571771, 127.034053)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">동작구수화통역센터 <br> 서울 동작구 만양로3길 14 3층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.508016, 126.946957)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">마포구수화통역센터 <br> 서울 마포구 월드컵로 213 마포구장애인복지회관 3층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.563725, 126.908856)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">서울시수화통역센터 지원본부 <br> 서울 서대문구 경기대로 15 엘림넷빌딩 3층 </div>',
                              latlng : new kakao.maps.LatLng(
                                    37.560770, 126.961665)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">서대문구수화통역센터 <br> 서울 서대문구 통일로 344 무악청구아파트상가 201동 B105호</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.581994, 126.951889)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">서초구수화통역센터 <br> 서울 서초구 서운로23길 17 서초명달공원 경로당 내  </div>',
                              latlng : new kakao.maps.LatLng(
                                    37.499011, 127.021114)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">성동수화센터 <br> 서울 성동구 청계천로 516 성동장애인생활회관 3층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.570445, 127.033811)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">성북수화통역센터 <br>성북구 아리랑로4길 22 201호</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.594784, 127.017277)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">송파구수화통역센터<br>송파구 문정로 13 선바위빌딩 5층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.486382, 127.124250)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">양천구수화통역센터 <br>양천구 목동중앙북로 68 217호(목동, 목동에버하임)</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.547187, 126.870948)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">영등포수화통역센터 <br>영등포구 경인로 112길 13 금반석시티빌 9차 2층 </div>',
                              latlng : new kakao.maps.LatLng(
                                    37.518120, 126.914234)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">용산구수화통역센터 <br>용산구 서빙고로 245 장애인커뮤니티센터 4층 </div>',
                              latlng : new kakao.maps.LatLng(
                                    37.520589, 126.991106)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">은평구수화통역센터 <br>은평구 증산서길 82 2층 </div>',
                              latlng : new kakao.maps.LatLng(
                                    37.583548, 126.906816)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">종로구수화통역센터 <br>종로구 종로17길 83층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.570675, 126.988959)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">중구수화통역센터 <br>중구 퇴계로20길 41-11 남산쉼터 2층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.558734, 126.986775)
                           },
                           {
                              content : '<div style="background-color:#50627F; color: #fff;text-align: center; ">중랑구수화통역센터 <br>서울 중랑구 면목로 299 6~7층</div>',
                              latlng : new kakao.maps.LatLng(
                                    37.579211, 127.086722)
                           } ];

                     for (var i = 0; i < positions.length; i++) {
                        // 마커를 생성합니다
                        var marker = new kakao.maps.Marker({
                           map : map, // 마커를 표시할 지도
                           position : positions[i].latlng, // 마커의 위치
                           image : markerImage
                        });

                        // 마커에 표시할 인포윈도우를 생성합니다 
                        var infowindow = new kakao.maps.InfoWindow({
                           content : positions[i].content
                        // 인포윈도우에 표시할 내용
                        });

                        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
                        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                        kakao.maps.event.addListener(marker,
                              'mouseover', makeOverListener(map,
                                    marker, infowindow));
                        kakao.maps.event
                              .addListener(marker, 'mouseout',
                                    makeOutListener(infowindow));
                     }

                     // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
                     function makeOverListener(map, marker, infowindow) {
                        return function() {
                           infowindow.open(map, marker);
                        };
                     }

                     // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
                     function makeOutListener(infowindow) {
                        return function() {
                           infowindow.close();
                        };
                     }
                     
                  </script>
                  </div>     
                  <!-- Map 종료 -->
               
               <!--  P시작 -->
               <div class="bot">
               
               
               </div>
                  <!--  P 끝 -->
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Map area End-->

   <!-- Start Footer area-->
   <div class="footer-copyright-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <div class="footer-copy-right">
                  <p>
                     Copyright Â© 2018 . All rights reserved. Template by <a
                        href="https://colorlib.com">Colorlib</a>.
                  </p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- End Footer area-->
   <!-- jquery
      ============================================ -->
   <script src="/js/vendor/jquery-1.12.4.min.js"></script>
   <!-- bootstrap JS
      ============================================ -->
   <script src="/js/bootstrap.min.js"></script>
   <!-- wow JS
      ============================================ -->
   <script src="/js/wow.min.js"></script>
   <!-- price-slider JS
      ============================================ -->
   <script src="/js/jquery-price-slider.js"></script>
   <!-- owl.carousel JS
      ============================================ -->
   <script src="/js/owl.carousel.min.js"></script>
   <!-- scrollUp JS
      ============================================ -->
   <script src="/js/jquery.scrollUp.min.js"></script>
   <!-- meanmenu JS
      ============================================ -->
   <script src="/js/meanmenu/jquery.meanmenu.js"></script>
   <!-- counterup JS
      ============================================ -->
   <script src="/js/counterup/jquery.counterup.min.js"></script>
   <script src="/js/counterup/waypoints.min.js"></script>
   <script src="/js/counterup/counterup-active.js"></script>
   <!-- mCustomScrollbar JS
      ============================================ -->
   <script src="/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
   <!-- sparkline JS
      ============================================ -->
   <script src="/js/sparkline/jquery.sparkline.min.js"></script>
   <script src="/js/sparkline/sparkline-active.js"></script>
   <!-- flot JS
      ============================================ -->
   <script src="/js/flot/jquery.flot.js"></script>
   <script src="/js/flot/jquery.flot.resize.js"></script>
   <script src="/js/flot/flot-active.js"></script>
   <!-- knob JS
      ============================================ -->
   <script src="/js/knob/jquery.knob.js"></script>
   <script src="/js/knob/jquery.appear.js"></script>
   <script src="/js/knob/knob-active.js"></script>
   <!-- summernote JS
      ============================================ -->
   <script src="/js/summernote/summernote-updated.min.js"></script>
   <script src="/js/summernote/summernote-active.js"></script>
   <!-- dropzone JS
      ============================================ -->
   <script src="/js/dropzone/dropzone.js"></script>
   <!--  wave JS
      ============================================ -->
   <script src="/js/wave/waves.min.js"></script>
   <script src="/js/wave/wave-active.js"></script>
   <!-- icheck JS
      ============================================ -->
   <script src="/js/icheck/icheck.min.js"></script>
   <script src="/js/icheck/icheck-active.js"></script>
   <!--  Chat JS
      ============================================ -->
   <script src="/js/chat/jquery.chat.js"></script>
   <!--  todo JS
      ============================================ -->
   <script src="/js/todo/jquery.todo.js"></script>
   <!-- plugins JS
      ============================================ -->
   <script src="/js/plugins.js"></script>
   <!-- main JS
      ============================================ -->
   <script src="/js/main.js"></script>
   <!-- tawk chat JS
      ============================================ -->
   <script src="/js/tawk-chat.js"></script>
</body>

</html>
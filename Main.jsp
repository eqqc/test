<%
    /**
     //==============================================================//
     // 1. 파일명 : Main.jsp
     // 2. 설  명 : 홈페이지 메인
     // 3. 작성자 : SDS 2023.04.17.
     // 4. 수정자 : SDS 2023.04.17. - 최초작성
     //==============================================================//
     */
%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- 공통헤더 영역 --%>

<%@ include file="../include/header_common.jsp" %>
<%-- 작업영 JS --%>
<script src="/js/kisa/biz/common/Main.js"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main/mainPopup.css' />" media="all" />
<%-- 공통 메뉴 JS --%>
<script type="text/javascript">
    $(document).ready(function () {
      
   	//팝업 추가 2025-04-08
	// 쿠키 없으면 팝업 보여주기
	if (getCookie("hideTodayPop") !== "Y") {
	  //$(".lay_pop").show();
	}
	
	$(".vpop-out").click(function () {
	  const isTodayBtn = $(this).text().includes("오늘 하루");
	
	  if (isTodayBtn) {
	    const expireDate = new Date();
	    expireDate.setHours(23, 59, 59, 999);
	    document.cookie = "hideTodayPop=Y; path=/; expires=" + expireDate.toUTCString();
	  }
	
	  $(".lay_pop").hide();
	});
	
	$(".n01, .n02, .n03, .n04, .n05, .n06, .n07, .n08, .n09, .n10").click(function(){
	   	var tmpClassNm = $(this).attr("center");
	   	$("#"+tmpClassNm).css("visibility","visible");
   	
   	});
	
	function localPopHide(){
    	$(".local_center_popUp").css("visibility","hidden");
    }
	
	function getCookie(name) {
	  const value = "; " + document.cookie;
	  const parts = value.split("; " + name + "=");
	  if (parts.length === 2) return parts.pop().split(";").shift();
	}	
    	
    });
    
    GLOBAL.menuId = 'HOME';
    GLOBAL.subMenuId = '/';
</script>

<div class="lay_pop">
	<div class="area_pop">
		<div class="spop_box">
			<div class="pop_frame">
				<p class="tit">
					2025년도<strong>정보보호 지원사업</strong><strong>공급기업 모집 설명회</strong>
				</p>
				<ul class="boxs">
					<li>
						<p class="txt1"><span>일시 및 장소</span></p>
						<p class="txt_d">2025. 4. 16.(수), 14:30 ~ 16:00</p>
						<p class="txt3">한국과학기술회관 B1 중회의실2</p>
						<p class="txt3">서울시 강남구 태헤란로7길 22(역삼동)</p>
						<p class="txt3">강남역 12번 출구 국기원 방향</p>
					</li>
					<li>
						<p class="txt1"><span>참여대상</span></p>
						<p class="txt3">정보보호 지원사업에 관심 있는 공급기업</p>
						<ul>
							<li>정보보호 전문서비스 기업</li>
							<li>보안제품 공급기업</li>
							<li>클라우드보안서비스(SECaaS) 공급기업 등</li>
						</ul>
					</li>
					<li>
						<p class="txt1"><span>신청방법</span></p>
						<p class="txt3">아래 링크 통한 참석 신청</p>
						<p class="txt3">(현장 등록도 가능하나 사전등록 권장)</p>
						<p class="link">
						  <span>링크 : </span>
						  <a href="https://naver.me/5wWLBYAp" target="_blank">https://naver.me/5wWLBYAp</a>
						</p>
						<p class="link">
						  <span>문의 : </span> KISA 고현봉 수석<br />
						  (02-405-5031 또는 <a href="mailto:risc@kisa.or.kr">risc@kisa.or.kr</a>)
						</p>
					</li>
				</ul>
				<div class="qr_box"><img src="/images/main/qr.png" alt="" /></div>
				<span class="bic"><img src="/images/main/bic.png" alt="" /></span>
			</div>
			<div class="bpop-bot">
				<a class="vpop-out" href="#n">오늘 하루 이 창을 열지 않음</a>
				<a class="vpop-out" href="#n">[닫기]</a>
			</div>
		</div>
	</div>
</div>
<!-- // 팝업 2025-04-08 -->
    <!-- container -->
	<div id="container" class="New-main">
		<div id="main-floor1" class="wid-1500">
			<div class="main-slogan1">
				<img class="pc-img" src="/images/main/floor1_img1.jpg" alt="지역정보보호센터 는 지역 중소기업 보안역량 강화 등 정보보호 사각지대 해소에 앞장서겠습니다. , KISA">
				<dl>
					<dt><p><strong>지역정보보호센터</strong> 는</p> 지역 중소기업 보안역량 강화 등 정보보호 <br>사각지대 해소에 앞장서겠습니다.</dt>
					<dd><img src="/images/main/floor1_img2.png" alt="KISA"></dd>
				</dl>
			</div>
		</div>
		<div id="main-floor2">
			<div class="wid-1500">
				<h5 class="main-title1 white">알림마당</h5>
				<div class="floor2-box1">
					<ul class="main-tab1">
						<li class="on"><a href="#none" title="선택됨">전체</a></li>
						<li><a href="#none">공지사항</a></li>
						<li><a href="#none">보안공지</a></li>
						<li><a href="#none">자료실</a></li>
					</ul>
					<div class="floor2-show1">
						<div class="F2S1-child on">
							<div class="main-slider1 style1">
								<div class="slider">
								    <c:forEach var="result" items="${resultNoticeList.subList(0, 9)}">
								        <div>
								            <div class="main-slider1-box1">
								                    <c:if test="${result.bbsGubun eq 'NOTICE' }"><h6 class="icon1 bg1">공지사항</h6></c:if>
								                    <c:if test="${result.bbsGubun eq 'SCRTY' }"><h6 class="icon1 bg2">보안공지</h6></c:if>
								                    <c:if test="${result.bbsGubun eq 'DATA' }">
								                    	<h6 class="icon1 bg3">자료실 </h6>
								                    </c:if>
								                <ul>
								                    <c:if test="${result.bbsGubun eq 'NOTICE' }"><li class="title1"><a href="javascript:fn_viewNoticeDetail('${result.bbsId}');">${result.subj }</a></li></c:if>
								                    <c:if test="${result.bbsGubun eq 'SCRTY' }"><li class="title1"><a href="javascript:fn_viewSecInfoDetail('${result.bbsId}')">${result.subj }</a></li></c:if>
								                    <c:if test="${result.bbsGubun eq 'DATA' }"><li class="title1"><a href="javascript:fn_viewDataBbsDetail('${result.bbsId}')">${result.subj }</a></li></c:if>
							                    	<c:forEach var="data" items="${fileList }">
						                    		<c:if test="${data.atchFileId eq result.atchFileId }">
						                    			<li><a class="dw-pdf1" href="javascript:fn_egov_downFile('${data.atchFileId}','${data.fileSn}')">PDF</a></li>
						                    		</c:if>
							                    	</c:forEach>
								                </ul>
												<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
												<p class="date1"> <fmt:formatDate value="${result.frstRegDt}" pattern="yyyy-MM-dd"/></p>
								            </div>
								        </div>
								    </c:forEach>
								</div>
								<div class="slick-attr">
									<button type="button" class="slick-prev">이전 슬라이드로</button>
									<button type="button" class="slick-next">다음 슬라이드로</button>
									<button type="button" class="slick-stop">자동재생 일시정지</button>
									<div class="slick-paging"></div>
								</div>
							</div>
							<a href="javascript:fn_call_menu('inform', 'noticeList');" class="a-more1"><img src="/images/main/more1.png" alt="더보기"></a>
						</div>
						<div class="F2S1-child">
							<div class="main-slider1 style2">
								<div class="slider">
									<c:forEach var="result" items="${resultNoticeList}">
								        <c:if test="${result.bbsGubun eq 'NOTICE' }">
									        <div>
									            <div class="main-slider1-box1">
									                    <h6 class="icon1 bg1">공지사항</h6>
									                <ul>
									                	<li class="title1"><a href="javascript:fn_viewNoticeDetail('${result.bbsId}');">${result.subj }</a></li>
									                </ul>
									                <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
													<p class="date1"> <fmt:formatDate value="${result.frstRegDt}" pattern="yyyy-MM-dd"/></p>
									            </div>
									        </div>
								        </c:if>
								    </c:forEach>
								</div>
								<div class="slick-attr">
									<button type="button" class="slick-prev">이전 슬라이드로</button>
									<button type="button" class="slick-next">다음 슬라이드로</button>
									<button type="button" class="slick-stop">자동재생 일시정지</button>
									<div class="slick-paging"></div>
								</div>
							</div>
							<a href="javascript:fn_call_menu('inform', 'noticeList');" class="a-more1"><img src="/images/main/more1.png" alt="더보기"></a>
						</div>
						<div class="F2S1-child">
							<div class="main-slider1 style3">
								<div class="slider">
									<c:forEach var="result" items="${resultNoticeList}">
								        <c:if test="${result.bbsGubun eq 'SCRTY' }">
									        <div>
									            <div class="main-slider1-box1">
									                    <h6 class="icon1 bg2">보안공지</h6>
									                <ul>
									                	<li class="title1"><a href="javascript:fn_viewSecInfoDetail('${result.bbsId}')">${result.subj }</a></li>
									                </ul>
									                <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
													<p class="date1"> <fmt:formatDate value="${result.frstRegDt}" pattern="yyyy-MM-dd"/></p>
									            </div>
									        </div>
								        </c:if>
								    </c:forEach>
								</div>
								<div class="slick-attr">
									<button type="button" class="slick-prev">이전 슬라이드로</button>
									<button type="button" class="slick-next">다음 슬라이드로</button>
									<button type="button" class="slick-stop">자동재생 일시정지</button>
									<div class="slick-paging"></div>
								</div>
							</div>
							<a href="javascript:fn_call_menu('inform', 'secInfoList');" class="a-more1"><img src="/images/main/more1.png" alt="더보기"></a>
						</div>
						<div class="F2S1-child">
							<div class="main-slider1 style4">
								<div class="slider">
									<c:forEach var="result" items="${resultNoticeList}">
								        <c:if test="${result.bbsGubun eq 'DATA' }">
									        <div>
									            <div class="main-slider1-box1">
									                    <h6 class="icon1 bg3">자료실</h6>
									                <ul>
									                    <li class="title1"><a href="javascript:fn_viewDataBbsDetail('${result.bbsId}')">${result.subj }</a></li>
								                    	<c:forEach var="data" items="${fileList }">
								                    		<c:if test="${data.atchFileId eq result.atchFileId }">
								                    			<li><a class="dw-pdf1" href="javascript:fn_egov_downFile('${data.atchFileId}','${data.fileSn}')">PDF</a></li>
								                    		</c:if>
								                    	</c:forEach>
									                </ul>
									                <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
													<p class="date1"> <fmt:formatDate value="${result.frstRegDt}" pattern="yyyy-MM-dd"/></p>
									            </div>
									        </div>
								        </c:if>
								    </c:forEach>
								</div>
								<div class="slick-attr">
									<button type="button" class="slick-prev">이전 슬라이드로</button>
									<button type="button" class="slick-next">다음 슬라이드로</button>
									<button type="button" class="slick-stop">자동재생 일시정지</button>
									<div class="slick-paging"></div>
								</div>
							</div>
							<a href="javascript:fn_call_menu('inform', 'dataBbsList');" class="a-more1"><img src="/images/main/more1.png" alt="더보기"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="main-floor3" class="wid-1500">
			<h5 class="main-title1"><span>정보보호 컨설팅</span> 지원</h5>
			<p class="p1-text1">일정규모 이상의 ICT 인프라를 보유한 중소기업을 대상으로 <br>정보보호 컨설팅 기반 보안솔루션 지원</p>
			<div class="main-apply1">
				<dl class="bg1">
					<dt>01</dt>
					<dd>
						<ul>
							<li class="title">신청 및 선정</li>
							<li>신청 접수 및 대상 선정</li>
						</ul>
					</dd>
				</dl>
				<dl class="bg2">
					<dt>02</dt>
					<dd>
						<ul>
							<li class="title">컨설팅 지원</li>
							<li>랜섬웨어 대응·예방 정보보호 컨설팅</li>
						</ul>
					</dd>
				</dl>
				<dl class="bg3">
					<dt>03</dt>
					<dd>
						<ul>
							<li class="title">보안솔루션 지원</li>
							<li>컨설팅 기반 보안솔루션 지원</li>
						</ul>
					</dd>
				</dl>
				<dl class="bg4">
					<dt>04</dt>
					<dd>
						<ul>
							<li class="title">사후관리</li>
							<li>이행점검 및 만족도 조사</li>
						</ul>
					</dd>
				</dl>
			</div>
			<a class="main-btn1" href="javascript:fn_call_menu('consulting', 'consultingRequestList');" >신청하기</a>
		</div>
		<div id="main-floor4">
			<div class="wid-1500">
				<h5 class="main-title1 white"><span class="green">SECaaS 서비스</span> 지원</h5>
				<p class="p1-text1">자체적인 보안솔루션 운영이 어려운 영세·중소기업을대상으로 원격에서 보안기능을 제공하는 <br>클라우드 기반 보안서비스(SECaaS) 지원</p>
				<div class="main-apply2">
					<dl>
						<dt>
							<ul>
								<li class="num">01</li>
								<li class="title">신청 및 선정</li>
							</ul>
						</dt>
						<dd>신청 접수 및 <br>대상 선정</dd>
					</dl>
					<dl>
						<dt>
							<ul>
								<li class="num">02</li>
								<li class="title">보안서비스 <br>지원</li>
							</ul>
						</dt>
						<dd>보안서비스 <br>도입 지원</dd>
					</dl>
					<dl>
						<dt>
							<ul>
								<li class="num">03</li>
								<li class="title">사후관리</li>
							</ul>
						</dt>
						<dd>이행점검 및 <br>만족도 조사</dd>
					</dl>
				</div>
				<a class="main-btn1 white" href="javascript:fn_call_menu('cloudSolution', 'solutionRequestList');">신청하기</a>
			</div>
		</div>
		<div id="main-floor5">
			<div class="wid-1500">
				<div class="main-safety1">
					<ul>
						<li class="title">보안솔루션 지원 목록</li>
						<li>보안솔루션은 도입기관에 설치되는 보안제품과전문기관이 원격에서 제공하는 클라우드 기반 보안서비스(SECaaS)로 구분됩니다.</li>
					</ul>
					<p><a class="a-btn1" href="javascript:fn_call_menu('secSolution', 'secSolutionList');">자세히보기</a></p>
				</div>
				<div class="floor5-box1">
					<div class="main-guide1">
						<dl>
							<dt><h5 class="main-title1"><span>지역정보보호센터</span> &nbsp;안내</h5></dt>
							<dd>지역 중소기업 보안역량 강화 등 정보보호 사각지대 해소를 위해 지역정보보호지원센터(10개소) 운영</dd>
						</dl>
						<div class="ul-li01">
							<ul>
								<li>정보보호 전문교육 및 세미나 지원</li>
								<li>정보보호 컨설팅 및 SECaaS 도입 지원</li>
								<li>침해사고 발생 시 현장 초동조치 지원</li>
							</ul>
						</div>
						<p class="p-img1"><img src="/images/main/floor5_img1.png" alt=""></p>
					</div>
					<div class="main-map1">
						<ul>
							<li class="li-01"><a href="javascript:void(0);" class="n02" center="area_Incheon">인천센터</a></li>
							<li class="li-02"><a href="javascript:void(0);" class="n01" center="area_Gangwon">강원센터</a></li>
							<li class="li-03"><a href="javascript:void(0);" class="n03" center="area_Gyeonggi">경기센터</a></li>
							<li class="li-04"><a href="javascript:void(0);" class="n04" center="area_Chungnam">충남센터</a></li>
							<li class="li-05"><a href="javascript:void(0);" class="n05" center="area_Jungbu">중부센터</a></li>
							<li class="li-06"><a href="javascript:void(0);" class="n07" center="area_Gyeongbuk">경북센터</a></li>
							<li class="li-07"><a href="javascript:void(0);" class="n06" center="area_Daegu">대구센터</a></li>
							<li class="li-08"><a href="javascript:void(0);" class="n08" center="area_Ulsan">울산센터</a></li>
							<li class="li-09"><a href="javascript:void(0);" class="n09" center="area_Dongnam">동남센터</a></li>
							<li class="li-10"><a href="javascript:void(0);" class="n10" center="area_Honam">호남센터</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //container -->

<%@ include file="../include/footer_page.jsp" %>    

</div>

<!-- 지역정보보호센터 팝업 - 클래스 show 추가 시 표시 -->
<section class="local_center_popUp" id="area_Incheon">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 인천센터</h2>
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>인천정보보호지원센터</h3>
            <div class="map_box">
            <!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1646631173948"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!--
                    2. 설치 스크립트
                    * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
                -->
                <script charset="UTF-8" class="daum_roughmap_loader_script"
                        src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1646631173948",
                        "key": "29dqa",
                        "mapWidth": "440",
                        "mapHeight": "350"
                    }).render();
            	</script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[0].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[0].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[0].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[0].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="http://iissc.itp.or.kr/" target="_blank">http://iissc.itp.or.kr/</a></dd> -->
            </dl>
        </div>
    </div>
</section>
<section class="local_center_popUp" id="area_Daegu">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 대구정보보호지원센터</h2>	
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>대구정보보호지원센터</h3>
            <div class="map_box">
            	<!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1686546962068" class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!-- <div id="daumRoughmapContainer1646639024795"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>  -->
                <!--
                    2. 설치 스크립트
                    * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
                -->
                <script charset="UTF-8" class="daum_roughmap_loader_script"
                        src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                    	"timestamp" : "1686546962068",
                		"key" : "2f4n3",
                        "mapWidth": "440",
                        "mapHeight": "350"
                    }).render();
                </script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[1].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[1].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[1].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[1].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="https://naver.com" target="_blank">https://naver.com</a></dd> -->
            </dl>
        </div>
    </div>
</section>
<section class="local_center_popUp" id="area_Honam">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 호남정보보호지원센터</h2>
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>호남정보보호지원센터</h3>
            <div class="map_box">
            	<!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1719209958643"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
	                new daum.roughmap.Lander({
	            		"timestamp" : "1719209958643",
	            		"key" : "2js98",
	            		"mapWidth" : "426",
	            		"mapHeight" : "355"
	            	}).render();
                </script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[2].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[2].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[2].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[2].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="https://naver.com" target="_blank">https://naver.com</a></dd> -->
            </dl>
        </div>
    </div>
</section>
<section class="local_center_popUp" id="area_Jungbu">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 중부정보보호지원센터</h2>
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>중부정보보호지원센터</h3>
            <div class="map_box">
            	<!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1646641396779"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1646641396779",
                        "key": "29dwx",
                        "mapWidth": "426",
                        "mapHeight": "355"
                    }).render();
                </script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[3].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[3].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[3].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[3].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="https://naver.com" target="_blank">https://naver.com</a></dd> -->
            </dl>
        </div>
    </div>
</section>
<section class="local_center_popUp" id="area_Dongnam">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 동남정보보호지원센터</h2>
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>동남정보보호지원센터</h3>
            <div class="map_box">
            	<!-- * 카카오맵 - 지도퍼가기 -->
                <div id="daumRoughmapContainer1646641449651"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1646641449651",
                        "key": "29dwy",
                        "mapWidth": "426",
                        "mapHeight": "355"
                    }).render();
                </script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[4].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[4].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[4].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[4].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="https://naver.com" target="_blank">https://naver.com</a></dd> -->
            </dl>
        </div>
    </div>
</section>
<section class="local_center_popUp" id="area_Gyeonggi">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 경기정보보호지원센터</h2>
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>경기정보보호지원센터</h3>
            <div class="map_box">
            	<!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1646641491731"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1646641491731",
                        "key": "29dx3",
                        "mapWidth": "426",
                        "mapHeight": "355"
                    }).render();
                </script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[5].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[5].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[5].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[5].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="https://naver.com" target="_blank">https://naver.com</a></dd> -->
            </dl>
        </div>
    </div>
</section>
<section class="local_center_popUp" id="area_Ulsan">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 울산정보보호지원센터</h2>
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>울산정보보호지원센터</h3>
            <div class="map_box">
            	<!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1646641535755"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1646641535755",
                        "key": "29dx5",
                        "mapWidth": "426",
                        "mapHeight": "355"
                    }).render();
                </script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[6].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[6].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[6].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[6].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="https://naver.com" target="_blank">https://naver.com</a></dd> -->
            </dl>
        </div>
    </div>
</section>
<section class="local_center_popUp" id="area_Gangwon">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 강원정보보호지원센터</h2>
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>강원정보보호지원센터</h3>
            <div class="map_box">
            	<!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1646641576724"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1646641576724",
                        "key": "29dx6",
                        "mapWidth": "426",
                        "mapHeight": "355"
                    }).render();
                </script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[7].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[7].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[7].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[7].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="https://naver.com" target="_blank">https://naver.com</a></dd> -->
            </dl>
        </div>
    </div>
</section>
<section class="local_center_popUp" id="area_Gyeongbuk">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 경북정보보호지원센터</h2>
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>경북정보보호지원센터</h3>
            <div class="map_box">
            	<!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1646641608779"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1646641608779",
                        "key": "29dx8",
                        "mapWidth": "426",
                        "mapHeight": "355"
                    }).render();
                </script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[8].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[8].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[8].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[8].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="https://naver.com" target="_blank">https://naver.com</a></dd> -->
            </dl>
        </div>
    </div>
</section>


<section class="local_center_popUp" id="area_Chungnam">
    <div class="pop_base">
        <div class="title_box">
            <h2>지역정보보호센터 - 충남정보보호지원센터</h2>
            <button type="button" class="btn_close" onclick="localPopHide()">닫기</button>
        </div>
        <div class="contents">
            <h3>충남정보보호지원센터</h3>
            <div class="map_box">
            	<!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1646641651083"
                     class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1646641651083",
                        "key": "29dxa",
                        "mapWidth": "426",
                        "mapHeight": "355"
                    }).render();
                </script>
            </div>
            <br/>
            <dl class="infos">
                <dt>센터장</dt>
                <dd>${resultList[9].areaCnterRprsvNm}</dd>
                <dt>연락처</dt>
                <dd>${resultList[9].areaCnterTelno}</dd>
                <dt>위치</dt>
                <dd>${resultList[9].areaCnterAddr}</dd>
                <dt>관할지역</dt>
                <dd>${resultList[9].mngAreaNm}</dd>
<!--                 <dt>홈페이지</dt> -->
<!--                 <dd><a href="https://naver.com" target="_blank">https://naver.com</a></dd> -->
            </dl>
        </div>
    </div>
</section>
<c:if test="${!empty resultCmpList }">
	<section class="local_center_popUp" id="area_popup">
		<div class="wrap-popup" id="div_ConfirmPopup" style="z-index: 9999; display: flex;">
			<div class="popup layer-footer alert height-auto">
			    <%-- <div class="pop-header">
			        <p class="tit" role="heading" id="div_ConfirmTitle">정보보호 컨설팅 업체 진행 현황 공지</p>
			    </div>
			    <div class="pop-body" id="div_ConfirmMessage">
			    	<div class="deadline_table_wrap"><h3>정보보호 컨설팅 업체 진행 현황 공지</h3><div>
			    	<table class="deadline_table">
			    		<caption>정보보호 컨설팅 업체 진행 현황 공지 </caption>
			    		<colgroup>	
			    		<c:forEach var="t" items="${resultCmpList }" varStatus="status">
			    			<col>			
			    		</c:forEach>		
			    		</colgroup>
			    		<tbody>		
			    			<tr>			
			    				<th>구분</th>
			    				<c:forEach var="resultCmpList" items="${resultCmpList}" varStatus="status">
				    				<c:if test="${resultCmpList.coNm ne '합계'}">
					    				<td>${resultCmpList.coNm}</td>
					    			</c:if>
			    				</c:forEach>
			    			</tr>
			    			<tr>	
			    				<th>진행현황</th>
			    				<c:forEach var="resultCmpList" items="${resultCmpList}" varStatus="status">
				    				<c:if test="${resultCmpList.coNm ne '합계'}">
										<c:choose>
										    <c:when test="${resultCmpList.sumT <= 5}">
										        <td>여유</td>
										    </c:when>
										    <c:when test="${resultCmpList.sumT >= 6 && resultCmpList.sumT <= 19}">
										        <td>보통</td>
										    </c:when>
										    <c:when test="${resultCmpList.sumT >= 20}">
										        <td>바쁨</td>
										    </c:when>
										</c:choose>
				    				</c:if>
			    				</c:forEach>
			    			</tr>	
			    		</tbody>
			    	</table>
			    	</div>
			    	<span style="color:red;">※ 신청이 일시적으로 몰릴 경우 일정이 지연될 수 있으므로, 컨설팅 기업 선택 시 각 지역센터, 컨설팅 기업에 확인 필요 </span>
			    	</div>
			    </div> --%>
			</div>
		</div>
	</section>
</c:if>

<script type="text/javascript">
    	
    function localPopHide(){
    	//$(".local_center_popUp").hide(0);
    	$(".local_center_popUp").css("visibility","hidden");
    }
    

    
// 모달
</script>
</body>
</html>
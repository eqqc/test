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
        if (getCookie("hideTodayPop") !== "Y") {
            //$('.lay_pop').show();
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
    });

    function getCookie(name) {
        const value = "; " + document.cookie;
        const parts = value.split("; " + name + "=");
        if (parts.length === 2) return parts.pop().split(";").shift();
    }

    function localPopHide(){
        $(".local_center_popUp").css("visibility","hidden");
    }

    GLOBAL.menuId = 'HOME';
    GLOBAL.subMenuId = '/';
</script>

<%-- 이하 본문은 Main.jsp 동일 구조 유지 --%>
<%@ include file="../include/footer_page.jsp" %>
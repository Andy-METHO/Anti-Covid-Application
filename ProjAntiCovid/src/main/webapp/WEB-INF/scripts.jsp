<%--
  Created by IntelliJ IDEA.
  User: joran
  Date: 02/01/2021
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- app -->
<script src="${pageContext.request.contextPath}/resources/js/utils/app.js"></script>
<!-- page loader -->
<script src="${pageContext.request.contextPath}/resources/js/utils/page-loader.js"></script>
<!-- simplebar -->
<script src="${pageContext.request.contextPath}/resources/js/vendor/simplebar.min.js"></script>
<!-- liquidify -->
<script src="${pageContext.request.contextPath}/resources/js/utils/liquidify.js"></script>
<!-- XM_Plugins -->
<script src="${pageContext.request.contextPath}/resources/js/vendor/xm_plugins.min.js"></script>
<!-- global.hexagons -->
<script src="${pageContext.request.contextPath}/resources/js/global/global.hexagons.js"></script>
<!-- global.tooltips -->
<script src="${pageContext.request.contextPath}/resources/js/global/global.tooltips.js"></script>
<!-- global.accordions -->
<script src="${pageContext.request.contextPath}/resources/js/global/global.accordions.js"></script>
<!-- global.popups -->
<script src="${pageContext.request.contextPath}/resources/js/global/global.popups.js"></script>
<!-- header -->
<script src="${pageContext.request.contextPath}/resources/js/header/header.js"></script>
<!-- sidebar -->
<script src="${pageContext.request.contextPath}/resources/js/sidebar/sidebar.js"></script>
<!-- content -->
<script src="${pageContext.request.contextPath}/resources/js/content/content.js"></script>
<!-- form.utils -->
<script src="${pageContext.request.contextPath}/resources/js/form/form.utils.js"></script>
<!-- SVG icons -->
<script src="${pageContext.request.contextPath}/resources/js/utils/svg-loader.js"></script>
<!-- global.maps -->
<script src="${pageContext.request.contextPath}/resources/js/global/global.maps.js"></script>
<!-- google maps api -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap" async defer></script>

<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(function notifRefresh(){
        $.ajax({
            type: "GET",                    //Sending mode
            url: "notifications",                //Request address
            data: "",                           //Data is empty.
            timeout: 5000,
            success: function (data) {             //Callback function after success
                $("#refresh").html(data);            //Page display content
                console.log("REFRESH");
            }
        });
    });
</script> -->
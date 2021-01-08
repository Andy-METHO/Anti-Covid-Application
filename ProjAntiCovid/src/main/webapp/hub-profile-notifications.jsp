<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@include file="WEB-INF/stylesheets.jsp" %>
    <title>Vikinger | Account Hub</title>
</head>
<body>

<!-- PAGE LOADER -->
<%@include file="WEB-INF/page-loader.jsp" %>
<!-- /PAGE LOADER -->

<!-- NAVIGATION WIDGET -->
<%@include file="WEB-INF/nav-widget.jsp" %>
<!-- /NAVIGATION WIDGET -->

<!-- HEADER -->
<%@include file="WEB-INF/header.jsp" %>
<!-- /HEADER -->

<!-- FLOATY BAR -->
<%@include file="WEB-INF/floaty-bar.jsp" %>
<!-- /FLOATY BAR -->

<!-- CONTENT GRID -->
<div class="content-grid">
    <!-- SECTION BANNER -->
    <div class="section-banner">
        <!-- SECTION BANNER ICON -->
        <img class="section-banner-icon"
             src="${pageContext.request.contextPath}/resources/img/banner/accounthub-icon.png" alt="accounthub-icon">
        <!-- /SECTION BANNER ICON -->

        <!-- SECTION BANNER TITLE -->
        <p class="section-banner-title">Account Hub</p>
        <!-- /SECTION BANNER TITLE -->

        <!-- SECTION BANNER TEXT -->
        <p class="section-banner-text">Profile info, messages, settings and much more!</p>
        <!-- /SECTION BANNER TEXT -->
    </div>
    <!-- /SECTION BANNER -->

    <!-- GRID -->
    <div class="grid grid-3-9 medium-space">
        <!-- GRID COLUMN -->
        <div class="account-hub-sidebar">
            <!-- SIDEBAR BOX -->
            <div class="sidebar-box no-padding">
                <!-- SIDEBAR MENU -->
                <%@include file="WEB-INF/profile_sidebar_menu.jsp" %>
                <!-- /SIDEBAR MENU -->
            </div>
            <!-- /SIDEBAR BOX -->
        </div>
        <!-- /GRID COLUMN -->

        <!-- GRID COLUMN -->
        <div class="account-hub-content">
            <!-- SECTION HEADER -->
            <div class="section-header">
                <!-- SECTION HEADER INFO -->
                <div class="section-header-info">
                    <!-- SECTION PRETITLE -->
                    <p class="section-pretitle">My Profile</p>
                    <!-- /SECTION PRETITLE -->

                    <!-- SECTION TITLE -->
                    <h2 class="section-title">Notifications</h2>
                    <!-- /SECTION TITLE -->
                </div>
                <!-- /SECTION HEADER INFO -->
            </div>
            <!-- /SECTION HEADER -->

            <!-- NOTIFICATION BOX LIST -->
            <div class="notification-box-list">
                <!-- NOTIFICATION BOX -->
                <c:if test="${not empty notifs}">
                    <c:forEach var="notif" items="${notifs}">
                        <div class="notification-box">
                            <!-- USER STATUS -->
                            <div class="user-status notification">
                                <!-- USER STATUS AVATAR -->
                                <a class="user-status-avatar" href="profile-timeline.html">
                                    <!-- USER AVATAR -->
                                    <div class="user-avatar small no-outline">
                                        <!-- USER AVATAR CONTENT -->
                                        <div class="user-avatar-content">
                                            <!-- HEXAGON -->
                                            <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/${notif.sender_id}.jpg"></div>
                                            <!-- /HEXAGON -->
                                        </div>
                                        <!-- /USER AVATAR CONTENT -->

                                        <!-- USER AVATAR PROGRESS -->
                                        <div class="user-avatar-progress">
                                            <!-- HEXAGON -->
                                            <div class="hexagon-progress-40-44"></div>
                                            <!-- /HEXAGON -->
                                        </div>
                                        <!-- /USER AVATAR PROGRESS -->

                                        <!-- USER AVATAR PROGRESS BORDER -->
                                        <div class="user-avatar-progress-border">
                                            <!-- HEXAGON -->
                                            <div class="hexagon-border-40-44"></div>
                                            <!-- /HEXAGON -->
                                        </div>
                                        <!-- /USER AVATAR PROGRESS BORDER -->
                                    </div>
                                    <!-- /USER AVATAR -->
                                </a>
                                <!-- /USER STATUS AVATAR -->

                                <!-- USER STATUS TITLE -->
                                <p class="user-status-title">${notif.sender_id} ${notif.notif_type} </p>
                                <!-- /USER STATUS TITLE -->

                                <!-- USER STATUS TIMESTAMP -->
                                <p class="user-status-timestamp small-space">${notif.time_sent}</p>
                                <!-- /USER STATUS TIMESTAMP -->

                                <!-- USER STATUS ICON -->
                                <div class="user-status-icon">
                                    <!-- ICON COMMENT -->
                                    <svg class="icon-comment">
                                        <use xlink:href="#svg-comment"></use>
                                    </svg>
                                    <!-- /ICON COMMENT -->
                                </div>
                                <!-- /USER STATUS ICON -->
                            </div>
                            <!-- /USER STATUS -->
                        </div>
                    </c:forEach>
                </c:if>
                <!-- /NOTIFICATION BOX -->
            </div>
            <!-- /NOTIFICATION BOX LIST -->
        </div>
        <!-- /GRID COLUMN -->
    </div>
    <!-- /GRID -->
</div>
<!-- /CONTENT GRID -->

<%@include file="WEB-INF/scripts.jsp" %>
</body>
</html>
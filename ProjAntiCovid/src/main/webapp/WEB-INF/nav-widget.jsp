<%--
  Created by IntelliJ IDEA.
  User: joran
  Date: 02/01/2021
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- NAVIGATION WIDGET -->
<nav id="navigation-widget-small" class="navigation-widget navigation-widget-desktop closed sidebar left delayed">
    <!-- USER AVATAR -->
    <a class="user-avatar small no-outline online" href="profile-timeline.html">
        <!-- USER AVATAR CONTENT -->
        <div class="user-avatar-content">
            <!-- HEXAGON -->
            <c:if test="${not empty current_user}">
                <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/${current_user.image}"></div>
            </c:if>
            <c:if test="${empty current_user}">
                <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/default_avatar.jpg"></div>
            </c:if>
            <!-- /HEXAGON -->
        </div>
        <!-- /USER AVATAR CONTENT -->
    </a>
    <!-- /USER AVATAR -->

    <!-- MENU -->
    <ul class="menu small">
        <!-- MENU ITEM -->
        <li class="menu-item">
            <!-- MENU ITEM LINK -->
            <a class="menu-item-link text-tooltip-tfr" href="overview.html" data-title="Overview">
                <!-- MENU ITEM LINK ICON -->
                <svg class="menu-item-link-icon icon-overview">
                    <use xlink:href="#svg-overview"></use>
                </svg>
                <!-- /MENU ITEM LINK ICON -->
            </a>
            <!-- /MENU ITEM LINK -->
        </li>
        <!-- /MENU ITEM -->

        <!-- MENU ITEM -->
        <li class="menu-item">
            <!-- MENU ITEM LINK -->
            <a class="menu-item-link text-tooltip-tfr" href="friends" data-title="Members">
                <!-- MENU ITEM LINK ICON -->
                <svg class="menu-item-link-icon icon-members">
                    <use xlink:href="#svg-members"></use>
                </svg>
                <!-- /MENU ITEM LINK ICON -->
            </a>
            <!-- /MENU ITEM LINK -->
        </li>
        <!-- /MENU ITEM -->

        <!-- MENU ITEM -->
        <li class="menu-item">
            <!-- MENU ITEM LINK -->
            <a class="menu-item-link text-tooltip-tfr" href="event" data-title="Events">
                <!-- MENU ITEM LINK ICON -->
                <svg class="menu-item-link-icon icon-events">
                    <use xlink:href="#svg-events"></use>
                </svg>
                <!-- /MENU ITEM LINK ICON -->
            </a>
            <!-- /MENU ITEM LINK -->
        </li>
        <!-- /MENU ITEM -->
    </ul>
    <!-- /MENU -->
</nav>
<!-- /NAVIGATION WIDGET -->

<!-- NAVIGATION WIDGET -->
<nav id="navigation-widget" class="navigation-widget navigation-widget-desktop sidebar left hidden" data-simplebar>
    <!-- NAVIGATION WIDGET COVER -->
    <figure class="navigation-widget-cover liquid">
        <img src="${pageContext.request.contextPath}/resources/img/cover/01.jpg" alt="cover-01">
    </figure>
    <!-- /NAVIGATION WIDGET COVER -->

    <!-- USER SHORT DESCRIPTION -->
    <div class="user-short-description">
        <!-- USER SHORT DESCRIPTION AVATAR -->
        <a class="user-short-description-avatar user-avatar medium" href="profile-timeline.html">
            <!-- USER AVATAR BORDER -->
            <div class="user-avatar-border">
                <!-- HEXAGON -->
                <div class="hexagon-120-132"></div>
                <!-- /HEXAGON -->
            </div>
            <!-- /USER AVATAR BORDER -->

            <!-- USER AVATAR CONTENT -->
            <div class="user-avatar-content">
                <!-- HEXAGON -->
                <c:if test="${not empty current_user}">
                    <div class="hexagon-image-82-90" data-src="${pageContext.request.contextPath}/resources/img/avatar/${current_user.image}"></div>
                </c:if>
                <c:if test="${empty current_user}">
                    <div class="hexagon-image-82-90" data-src="${pageContext.request.contextPath}/resources/img/avatar/default_avatar.jpg"></div>
                </c:if>
                <!-- /HEXAGON -->
            </div>
            <!-- /USER AVATAR CONTENT -->
        </a>
        <!-- /USER SHORT DESCRIPTION AVATAR -->

        <!-- USER SHORT DESCRIPTION TITLE -->
        <c:if test="${not empty current_user}">
            <p class="user-short-description-title"><a href="profile-timeline.html">${current_user.pseudo}</a></p>
        </c:if>
        <c:if test="${empty current_user}">
            <p class="user-short-description-title"><a href="profile-timeline.html">User</a></p>
        </c:if>
        <!-- /USER SHORT DESCRIPTION TITLE -->

    </div>
    <!-- /USER SHORT DESCRIPTION -->

    <!-- MENU -->
    <ul class="menu">
        <!-- MENU ITEM -->
        <li class="menu-item">
            <!-- MENU ITEM LINK -->
            <a class="menu-item-link" href="overview.html">
                <!-- MENU ITEM LINK ICON -->
                <svg class="menu-item-link-icon icon-overview">
                    <use xlink:href="#svg-overview"></use>
                </svg>
                <!-- /MENU ITEM LINK ICON -->
                Overview
            </a>
            <!-- /MENU ITEM LINK -->
        </li>
        <!-- /MENU ITEM -->

        <!-- MENU ITEM -->
        <li class="menu-item">
            <!-- MENU ITEM LINK -->
            <a class="menu-item-link" href="friends">
                <!-- MENU ITEM LINK ICON -->
                <svg class="menu-item-link-icon icon-members">
                    <use xlink:href="#svg-members"></use>
                </svg>
                <!-- /MENU ITEM LINK ICON -->
                Members
            </a>
            <!-- /MENU ITEM LINK -->
        </li>
        <!-- /MENU ITEM -->

        <!-- MENU ITEM -->
        <li class="menu-item">
            <!-- MENU ITEM LINK -->
            <a class="menu-item-link" href="accueil">
                <!-- MENU ITEM LINK ICON -->
                <svg class="menu-item-link-icon icon-events">
                    <use xlink:href="#svg-events"></use>
                </svg>
                <!-- /MENU ITEM LINK ICON -->
                Events
            </a>
            <!-- /MENU ITEM LINK -->
        </li>
        <!-- /MENU ITEM -->
    </ul>
    <!-- /MENU -->
</nav>
<!-- /NAVIGATION WIDGET -->

<!-- NAVIGATION WIDGET -->
<nav id="navigation-widget-mobile" class="navigation-widget navigation-widget-mobile sidebar left hidden" data-simplebar>
    <!-- NAVIGATION WIDGET CLOSE BUTTON -->
    <div class="navigation-widget-close-button">
        <!-- NAVIGATION WIDGET CLOSE BUTTON ICON -->
        <svg class="navigation-widget-close-button-icon icon-back-arrow">
            <use xlink:href="#svg-back-arrow"></use>
        </svg>
        <!-- NAVIGATION WIDGET CLOSE BUTTON ICON -->
    </div>
    <!-- /NAVIGATION WIDGET CLOSE BUTTON -->

    <!-- NAVIGATION WIDGET INFO WRAP -->
    <div class="navigation-widget-info-wrap">
        <!-- NAVIGATION WIDGET INFO -->
        <div class="navigation-widget-info">
            <!-- USER AVATAR -->
            <a class="user-avatar small no-outline" href="profile-timeline.html">
                <!-- USER AVATAR CONTENT -->
                <div class="user-avatar-content">
                    <!-- HEXAGON -->
                    <c:if test="${not empty current_user}">
                        <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/${current_user.image}"></div>
                    </c:if>
                    <c:if test="${empty current_user}">
                        <div class="hexagon-image-82-90" data-src="${pageContext.request.contextPath}/resources/img/avatar/default_avatar.jpg"></div>
                    </c:if>

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

                <!-- USER AVATAR BADGE -->
                <div class="user-avatar-badge">
                    <!-- USER AVATAR BADGE BORDER -->
                    <div class="user-avatar-badge-border">
                        <!-- HEXAGON -->
                        <div class="hexagon-22-24"></div>
                        <!-- /HEXAGON -->
                    </div>
                    <!-- /USER AVATAR BADGE BORDER -->

                    <!-- USER AVATAR BADGE CONTENT -->
                    <div class="user-avatar-badge-content">
                        <!-- HEXAGON -->
                        <div class="hexagon-dark-16-18"></div>
                        <!-- /HEXAGON -->
                    </div>
                    <!-- /USER AVATAR BADGE CONTENT -->

                    <!-- USER AVATAR BADGE TEXT -->
                    <p class="user-avatar-badge-text">24</p>
                    <!-- /USER AVATAR BADGE TEXT -->
                </div>
                <!-- /USER AVATAR BADGE -->
            </a>
            <!-- /USER AVATAR -->

            <!-- NAVIGATION WIDGET INFO TITLE -->
            <c:if test="${not empty current_user}">
                <p class="navigation-widget-info-title"><a href="profile-timeline.html">${current_user.pseudo}</a></p>
            </c:if>
            <c:if test="${empty current_user}">
                <p class="navigation-widget-info-title"><a href="profile-timeline.html">User</a></p>
            </c:if>
            <!-- /NAVIGATION WIDGET INFO TITLE -->

            <!-- NAVIGATION WIDGET INFO TEXT -->
            <p class="navigation-widget-info-text">Welcome Back!</p>
            <!-- /NAVIGATION WIDGET INFO TEXT -->
        </div>
        <!-- /NAVIGATION WIDGET INFO -->

        <!-- NAVIGATION WIDGET BUTTON -->
        <a href="logout"><p class="navigation-widget-info-button button small secondary">Logout</p></a>
        <!-- /NAVIGATION WIDGET BUTTON -->
    </div>
    <!-- /NAVIGATION WIDGET INFO WRAP -->

    <!-- NAVIGATION WIDGET SECTION TITLE -->
    <p class="navigation-widget-section-title">Sections</p>
    <!-- /NAVIGATION WIDGET SECTION TITLE -->

    <!-- MENU -->
    <ul class="menu">
        <!-- MENU ITEM -->
        <li class="menu-item">
            <!-- MENU ITEM LINK -->
            <a class="menu-item-link" href="overview.html">
                <!-- MENU ITEM LINK ICON -->
                <svg class="menu-item-link-icon icon-overview">
                    <use xlink:href="#svg-overview"></use>
                </svg>
                <!-- /MENU ITEM LINK ICON -->
                Overview
            </a>
            <!-- /MENU ITEM LINK -->
        </li>
        <!-- /MENU ITEM -->

        <!-- MENU ITEM -->
        <li class="menu-item">
            <!-- MENU ITEM LINK -->
            <a class="menu-item-link" href="friends">
                <!-- MENU ITEM LINK ICON -->
                <svg class="menu-item-link-icon icon-members">
                    <use xlink:href="#svg-members"></use>
                </svg>
                <!-- /MENU ITEM LINK ICON -->
                Members
            </a>
            <!-- /MENU ITEM LINK -->
        </li>
        <!-- /MENU ITEM -->

        <!-- MENU ITEM -->
        <li class="menu-item">
            <!-- MENU ITEM LINK -->
            <a class="menu-item-link" href="accueil">
                <!-- MENU ITEM LINK ICON -->
                <svg class="menu-item-link-icon icon-events">
                    <use xlink:href="#svg-events"></use>
                </svg>
                <!-- /MENU ITEM LINK ICON -->
                Events
            </a>
            <!-- /MENU ITEM LINK -->
        </li>
        <!-- /MENU ITEM -->
    </ul>
    <!-- /MENU -->

    <!-- NAVIGATION WIDGET SECTION TITLE -->
    <p class="navigation-widget-section-title">My Profile</p>
    <!-- /NAVIGATION WIDGET SECTION TITLE -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="hub-profile-info.html">Profile Info</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="hub-profile-notifications.html">Notifications</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="hub-profile-messages.html">Messages</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="hub-profile-requests.html">Friend Requests</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION TITLE -->
    <p class="navigation-widget-section-title">Account</p>
    <!-- /NAVIGATION WIDGET SECTION TITLE -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="hub-account-info.html">Account Info</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="hub-account-password.html">Change Password</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION TITLE -->
    <p class="navigation-widget-section-title">Main Links</p>
    <!-- /NAVIGATION WIDGET SECTION TITLE -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="accueil">Home</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

</nav>
<!-- /NAVIGATION WIDGET -->

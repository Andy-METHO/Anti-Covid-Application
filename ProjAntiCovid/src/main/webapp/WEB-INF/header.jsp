<%--
  Created by IntelliJ IDEA.
  User: joran
  Date: 02/01/2021
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- HEADER -->
<header class="header">
    <!-- HEADER ACTIONS -->
    <div class="header-actions">
        <!-- HEADER BRAND -->
        <div class="header-brand">
            <!-- LOGO -->
            <div class="logo">
                <!-- ICON LOGO VIKINGER -->
                <svg class="icon-logo-vikinger small">
                    <use xlink:href="#svg-logo-vikinger"></use>
                </svg>
                <!-- /ICON LOGO VIKINGER -->
            </div>
            <!-- /LOGO -->

            <!-- HEADER BRAND TEXT -->
            <h1 class="header-brand-text">Vikinger</h1>
            <!-- /HEADER BRAND TEXT -->
        </div>
        <!-- /HEADER BRAND -->
    </div>
    <!-- /HEADER ACTIONS -->

    <!-- HEADER ACTIONS -->
    <div class="header-actions">
        <!-- SIDEMENU TRIGGER -->
        <div class="sidemenu-trigger navigation-widget-trigger">
            <!-- ICON GRID -->
            <svg class="icon-grid">
                <use xlink:href="#svg-grid"></use>
            </svg>
            <!-- /ICON GRID -->
        </div>
        <!-- /SIDEMENU TRIGGER -->

        <!-- MOBILEMENU TRIGGER -->
        <div class="mobilemenu-trigger navigation-widget-mobile-trigger">
            <!-- BURGER ICON -->
            <div class="burger-icon inverted">
                <!-- BURGER ICON BAR -->
                <div class="burger-icon-bar"></div>
                <!-- /BURGER ICON BAR -->

                <!-- BURGER ICON BAR -->
                <div class="burger-icon-bar"></div>
                <!-- /BURGER ICON BAR -->

                <!-- BURGER ICON BAR -->
                <div class="burger-icon-bar"></div>
                <!-- /BURGER ICON BAR -->
            </div>
            <!-- /BURGER ICON -->
        </div>
        <!-- /MOBILEMENU TRIGGER -->

        <!-- NAVIGATION -->
        <nav class="navigation">
            <!-- MENU MAIN -->
            <ul class="menu-main">
                <!-- MENU MAIN ITEM -->
                <li class="menu-main-item">
                    <!-- MENU MAIN ITEM LINK -->
                    <a class="menu-main-item-link" href="accueil">Home</a>
                    <!-- /MENU MAIN ITEM LINK -->
                </li>
                <!-- /MENU MAIN ITEM -->

                <!-- MENU MAIN ITEM -->
                <li class="menu-main-item">
                    <!-- MENU MAIN ITEM LINK -->
                    <a class="menu-main-item-link" href="friends">Friends</a>
                    <!-- /MENU MAIN ITEM LINK -->
                </li>
                <!-- /MENU MAIN ITEM -->

                <!-- MENU MAIN ITEM -->
                <li class="menu-main-item">
                    <!-- MENU MAIN ITEM LINK -->
                    <c:if test="${not empty current_user}">
                        <c:if test="${current_user.role == 'ADMIN'}">
                            <a class="menu-main-item-link" href="admin">Admin</a>
                        </c:if>
                    </c:if>

                    <!-- /MENU MAIN ITEM LINK -->
                </li>
                <!-- /MENU MAIN ITEM -->
            </ul>
            <!-- /MENU MAIN -->
        </nav>
        <!-- /NAVIGATION -->
    </div>
    <!-- /HEADER ACTIONS -->

    <!-- HEADER ACTIONS -->
    <div class="header-actions search-bar">
        <!-- INTERACTIVE INPUT -->
        <div class="interactive-input dark">
            <input type="text" id="search-main" name="search_main" placeholder="Search here for people or groups">
            <!-- INTERACTIVE INPUT ICON WRAP -->
            <div class="interactive-input-icon-wrap">
                <!-- INTERACTIVE INPUT ICON -->
                <svg class="interactive-input-icon icon-magnifying-glass">
                    <use xlink:href="#svg-magnifying-glass"></use>
                </svg>
                <!-- /INTERACTIVE INPUT ICON -->
            </div>
            <!-- /INTERACTIVE INPUT ICON WRAP -->

            <!-- INTERACTIVE INPUT ACTION -->
            <div class="interactive-input-action">
                <!-- INTERACTIVE INPUT ACTION ICON -->
                <svg class="interactive-input-action-icon icon-cross-thin">
                    <use xlink:href="#svg-cross-thin"></use>
                </svg>
                <!-- /INTERACTIVE INPUT ACTION ICON -->
            </div>
            <!-- /INTERACTIVE INPUT ACTION -->
        </div>
        <!-- /INTERACTIVE INPUT -->

        <!-- DROPDOWN BOX -->
        <div class="dropdown-box padding-bottom-small header-search-dropdown">
            <!-- DROPDOWN BOX CATEGORY -->
            <div class="dropdown-box-category">
                <!-- DROPDOWN BOX CATEGORY TITLE -->
                <p class="dropdown-box-category-title">Members</p>
                <!-- /DROPDOWN BOX CATEGORY TITLE -->
            </div>
            <!-- /DROPDOWN BOX CATEGORY -->

            <!-- DROPDOWN BOX LIST -->
            <div class="dropdown-box-list small no-scroll">
                <!-- DROPDOWN BOX LIST ITEM -->
                <a class="dropdown-box-list-item" href="profile-timeline.html">
                    <!-- USER STATUS -->
                    <div class="user-status notification">
                        <!-- USER STATUS AVATAR -->
                        <div class="user-status-avatar">
                            <!-- USER AVATAR -->
                            <div class="user-avatar small no-outline">
                                <!-- USER AVATAR CONTENT -->
                                <div class="user-avatar-content">
                                    <!-- HEXAGON -->
                                    <div class="hexagon-image-30-32" data-src="img/avatar/05.jpg"></div>
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
                                    <p class="user-avatar-badge-text">12</p>
                                    <!-- /USER AVATAR BADGE TEXT -->
                                </div>
                                <!-- /USER AVATAR BADGE -->
                            </div>
                            <!-- /USER AVATAR -->
                        </div>
                        <!-- /USER STATUS AVATAR -->

                        <!-- USER STATUS TITLE -->
                        <p class="user-status-title"><span class="bold">Neko Bebop</span></p>
                        <!-- /USER STATUS TITLE -->

                        <!-- USER STATUS TEXT -->
                        <p class="user-status-text">1 friends in common</p>
                        <!-- /USER STATUS TEXT -->

                        <!-- USER STATUS ICON -->
                        <div class="user-status-icon">
                            <!-- ICON FRIEND -->
                            <svg class="icon-friend">
                                <use xlink:href="#svg-friend"></use>
                            </svg>
                            <!-- /ICON FRIEND -->
                        </div>
                        <!-- /USER STATUS ICON -->
                    </div>
                    <!-- /USER STATUS -->
                </a>
                <!-- /DROPDOWN BOX LIST ITEM -->

                <!-- DROPDOWN BOX LIST ITEM -->
                <a class="dropdown-box-list-item" href="profile-timeline.html">
                    <!-- USER STATUS -->
                    <div class="user-status notification">
                        <!-- USER STATUS AVATAR -->
                        <div class="user-status-avatar">
                            <!-- USER AVATAR -->
                            <div class="user-avatar small no-outline">
                                <!-- USER AVATAR CONTENT -->
                                <div class="user-avatar-content">
                                    <!-- HEXAGON -->
                                    <div class="hexagon-image-30-32" data-src="img/avatar/15.jpg"></div>
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
                                    <p class="user-avatar-badge-text">7</p>
                                    <!-- /USER AVATAR BADGE TEXT -->
                                </div>
                                <!-- /USER AVATAR BADGE -->
                            </div>
                            <!-- /USER AVATAR -->
                        </div>
                        <!-- /USER STATUS AVATAR -->

                        <!-- USER STATUS TITLE -->
                        <p class="user-status-title"><span class="bold">Tim Rogers</span></p>
                        <!-- /USER STATUS TITLE -->

                        <!-- USER STATUS TEXT -->
                        <p class="user-status-text">4 friends in common</p>
                        <!-- /USER STATUS TEXT -->

                        <!-- USER STATUS ICON -->
                        <div class="user-status-icon">
                            <!-- ICON FRIEND -->
                            <svg class="icon-friend">
                                <use xlink:href="#svg-friend"></use>
                            </svg>
                            <!-- /ICON FRIEND -->
                        </div>
                        <!-- /USER STATUS ICON -->
                    </div>
                    <!-- /USER STATUS -->
                </a>
                <!-- /DROPDOWN BOX LIST ITEM -->
            </div>
            <!-- /DROPDOWN BOX LIST -->

            <!-- DROPDOWN BOX CATEGORY -->
            <div class="dropdown-box-category">
                <!-- DROPDOWN BOX CATEGORY TITLE -->
                <p class="dropdown-box-category-title">Groups</p>
                <!-- /DROPDOWN BOX CATEGORY TITLE -->
            </div>
            <!-- /DROPDOWN BOX CATEGORY -->

            <!-- DROPDOWN BOX LIST -->
            <div class="dropdown-box-list small no-scroll">
                <!-- DROPDOWN BOX LIST ITEM -->
                <a class="dropdown-box-list-item" href="group-timeline.html">
                    <!-- USER STATUS -->
                    <div class="user-status notification">
                        <!-- USER STATUS AVATAR -->
                        <div class="user-status-avatar">
                            <!-- USER AVATAR -->
                            <div class="user-avatar small no-border">
                                <!-- USER AVATAR CONTENT -->
                                <div class="user-avatar-content">
                                    <!-- HEXAGON -->
                                    <div class="hexagon-image-40-44" data-src="img/avatar/24.jpg"></div>
                                    <!-- /HEXAGON -->
                                </div>
                                <!-- /USER AVATAR CONTENT -->
                            </div>
                            <!-- /USER AVATAR -->
                        </div>
                        <!-- /USER STATUS AVATAR -->

                        <!-- USER STATUS TITLE -->
                        <p class="user-status-title"><span class="bold">Cosplayers of the World</span></p>
                        <!-- /USER STATUS TITLE -->

                        <!-- USER STATUS TEXT -->
                        <p class="user-status-text">139 members</p>
                        <!-- /USER STATUS TEXT -->

                        <!-- USER STATUS ICON -->
                        <div class="user-status-icon">
                            <!-- ICON GROUP -->
                            <svg class="icon-group">
                                <use xlink:href="#svg-group"></use>
                            </svg>
                            <!-- /ICON GROUP -->
                        </div>
                        <!-- /USER STATUS ICON -->
                    </div>
                    <!-- /USER STATUS -->
                </a>
                <!-- /DROPDOWN BOX LIST ITEM -->
            </div>
            <!-- /DROPDOWN BOX LIST -->

            <!-- DROPDOWN BOX CATEGORY -->
            <div class="dropdown-box-category">
                <!-- DROPDOWN BOX CATEGORY TITLE -->
                <p class="dropdown-box-category-title">Marketplace</p>
                <!-- /DROPDOWN BOX CATEGORY TITLE -->
            </div>
            <!-- /DROPDOWN BOX CATEGORY -->

            <!-- DROPDOWN BOX LIST -->
            <div class="dropdown-box-list small no-scroll">
                <!-- DROPDOWN BOX LIST ITEM -->
                <a class="dropdown-box-list-item" href="marketplace-product.html">
                    <!-- USER STATUS -->
                    <div class="user-status no-padding-top">
                        <!-- USER STATUS AVATAR -->
                        <div class="user-status-avatar">
                            <!-- PICTURE -->
                            <figure class="picture small round liquid">
                                <img src="img/marketplace/items/07.jpg" alt="item-07">
                            </figure>
                            <!-- /PICTURE -->
                        </div>
                        <!-- /USER STATUS AVATAR -->

                        <!-- USER STATUS TITLE -->
                        <p class="user-status-title"><span class="bold">Mercenaries White Frame</span></p>
                        <!-- /USER STATUS TITLE -->

                        <!-- USER STATUS TEXT -->
                        <p class="user-status-text">By Neko Bebop</p>
                        <!-- /USER STATUS TEXT -->

                        <!-- USER STATUS ICON -->
                        <div class="user-status-icon">
                            <!-- ICON MARKETPLACE -->
                            <svg class="icon-marketplace">
                                <use xlink:href="#svg-marketplace"></use>
                            </svg>
                            <!-- /ICON MARKETPLACE -->
                        </div>
                        <!-- /USER STATUS ICON -->
                    </div>
                    <!-- /USER STATUS -->
                </a>
                <!-- /DROPDOWN BOX LIST ITEM -->
            </div>
            <!-- /DROPDOWN BOX LIST -->
        </div>
        <!-- /DROPDOWN BOX -->
    </div>
    <!-- /HEADER ACTIONS -->

    <!-- HEADER ACTIONS -->
    <div class="header-actions">
        <!-- HEADER BRAND -->
        <div class="header-brand">
            <!-- LOGO -->
            <div class="logo">
                <!-- ICON LOGO VIKINGER -->
                <svg class="icon-logo-vikinger small">
                    <use xlink:href="#svg-logo-vikinger"></use>
                </svg>
                <!-- /ICON LOGO VIKINGER -->
            </div>
            <!-- /LOGO -->

            <!-- HEADER BRAND TEXT -->
            <h1 class="header-brand-text"><a href="positif">Je suis positif !</a></h1>
            <!-- /HEADER BRAND TEXT -->
        </div>
        <!-- /HEADER BRAND -->
    </div>
    <!-- /HEADER ACTIONS -->

    <!-- HEADER ACTIONS -->
    <div class="header-actions">
        <!-- ACTION LIST -->
        <div class="action-list dark">
            <!-- ACTION LIST ITEM WRAP -->
            <div class="action-list-item-wrap">
                <!-- ACTION LIST ITEM -->
                <c:choose>
                    <c:when test="${not empty unread && unread.size() !=0}">
                        <div class="action-list-item unread header-dropdown-trigger">
                            <!-- ACTION LIST ITEM ICON -->
                            <svg class="action-list-item-icon icon-notification">
                                <use xlink:href="#svg-notification"></use>
                            </svg>
                            <!-- /ACTION LIST ITEM ICON -->
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="action-list-item header-dropdown-trigger">
                            <!-- ACTION LIST ITEM ICON -->
                            <svg class="action-list-item-icon icon-notification">
                                <use xlink:href="#svg-notification"></use>
                            </svg>
                            <!-- /ACTION LIST ITEM ICON -->
                        </div>
                    </c:otherwise>
                </c:choose>
                <!-- /ACTION LIST ITEM -->

                <!-- DROPDOWN BOX -->
                <div class="dropdown-box header-dropdown">
                    <!-- DROPDOWN BOX HEADER -->
                    <div class="dropdown-box-header">
                        <!-- DROPDOWN BOX HEADER TITLE -->
                        <p class="dropdown-box-header-title">Notifications</p>
                        <!-- /DROPDOWN BOX HEADER TITLE -->
                    </div>
                    <!-- /DROPDOWN BOX HEADER -->

                        <!-- DROPDOWN BOX LIST -->
                    <c:forEach var="notif" items="${unread}">
                        <div class="dropdown-box-list" data-simplebar>
                            <!-- DROPDOWN BOX LIST ITEM -->
                            <div class="dropdown-box-list-item unread">
                                <!-- USER STATUS -->
                                <div class="user-status notification">
                                    <!-- USER STATUS AVATAR -->
                                    <a class="user-status-avatar" href="profile-timeline.html">
                                        <!-- USER AVATAR -->
                                        <div class="user-avatar small no-outline">
                                            <!-- USER AVATAR CONTENT -->
                                            <div class="user-avatar-content">
                                                <!-- HEXAGON -->
                                                <div class="hexagon-image-30-32" data-src="img/avatar/${notif.sender_id}.jpg"></div>
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

                                    <!-- USER STATUS TITLE  <a class="highlighted" href="profile-timeline.html">status update</a>-->
                                    <a class="bold" href="notifications"><p class="user-status-title">${notif.sender_id} ${notif.notif_type}</p></a>
                                    <!-- /USER STATUS TITLE -->

                                    <!-- USER STATUS TIMESTAMP -->
                                    <p class="user-status-timestamp">${notif.time_sent}</p>
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
                            <!-- /DROPDOWN BOX LIST ITEM -->
                        </div>
                    </c:forEach>
                        <!-- /DROPDOWN BOX LIST -->

                    <!-- DROPDOWN BOX BUTTON -->
                    <a class="dropdown-box-button secondary" href="notifications">View all Notifications</a>
                    <!-- /DROPDOWN BOX BUTTON -->
                </div>

                <!-- /DROPDOWN BOX -->
            </div>
            <!-- /ACTION LIST ITEM WRAP -->
        </div>
        <!-- /ACTION LIST -->

        <!-- ACTION ITEM WRAP -->
        <div class="action-item-wrap">
            <!-- ACTION ITEM -->
            <div class="action-item dark header-settings-dropdown-trigger">
                <!-- ACTION ITEM ICON -->
                <svg class="action-item-icon icon-settings">
                    <use xlink:href="#svg-settings"></use>
                </svg>
                <!-- /ACTION ITEM ICON -->
            </div>
            <!-- /ACTION ITEM -->

            <!-- DROPDOWN NAVIGATION -->
            <div class="dropdown-navigation header-settings-dropdown">
                <!-- DROPDOWN NAVIGATION HEADER -->
                <div class="dropdown-navigation-header">
                    <!-- USER STATUS -->
                    <div class="user-status">
                        <!-- USER STATUS AVATAR -->
                        <a class="user-status-avatar" href="profile-timeline.html">
                            <!-- USER AVATAR -->
                            <div class="user-avatar small no-outline">
                                <!-- USER AVATAR CONTENT -->
                                <div class="user-avatar-content">
                                    <!-- HEXAGON -->
                                    <c:if test="${not empty current_user}">
                                        <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/${current_user.image}"></div>
                                    </c:if>
                                    <c:if test="${empty current_user}">
                                        <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/default_avatar.jpg"></div>
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
                            </div>
                            <!-- /USER AVATAR -->
                        </a>
                        <!-- /USER STATUS AVATAR -->

                        <!-- USER STATUS TITLE -->
                        <c:if test="${not empty current_user}">
                            <p class="user-status-title"><span class="bold">Hi ${current_user.pseudo} !</span></p>
                        </c:if>
                        <c:if test="${empty current_user}">
                            <p class="user-status-title"><span class="bold">Hi User !</span></p>
                        </c:if>
                        <!-- /USER STATUS TITLE -->

                        <!-- USER STATUS TEXT -->
                        <c:if test="${not empty current_user}">
                            <p class="user-status-text small"><a href="profile-timeline.html">@${current_user.login}</a></p>
                        </c:if>
                        <!-- /USER STATUS TEXT -->
                    </div>
                    <!-- /USER STATUS -->
                </div>
                <!-- /DROPDOWN NAVIGATION HEADER -->

                <!-- DROPDOWN NAVIGATION CATEGORY -->
                <p class="dropdown-navigation-category">My Profile</p>
                <!-- /DROPDOWN NAVIGATION CATEGORY -->

                <!-- DROPDOWN NAVIGATION LINK -->
                <a class="dropdown-navigation-link" href="hub-profile-info.html">Profile Info</a>
                <!-- /DROPDOWN NAVIGATION LINK -->

                <!-- DROPDOWN NAVIGATION LINK -->
                <a class="dropdown-navigation-link" href="hub-profile-notifications.html">Notifications</a>
                <!-- /DROPDOWN NAVIGATION LINK -->

                <!-- DROPDOWN NAVIGATION LINK -->
                <a class="dropdown-navigation-link" href="hub-profile-messages.html">Messages</a>
                <!-- /DROPDOWN NAVIGATION LINK -->

                <!-- DROPDOWN NAVIGATION LINK -->
                <a class="dropdown-navigation-link" href="hub-profile-requests.html">Friend Requests</a>
                <!-- /DROPDOWN NAVIGATION LINK -->

                <!-- DROPDOWN NAVIGATION CATEGORY -->
                <p class="dropdown-navigation-category">Account</p>
                <!-- /DROPDOWN NAVIGATION CATEGORY -->

                <!-- DROPDOWN NAVIGATION LINK -->
                <a class="dropdown-navigation-link" href="account">Account Info</a>
                <!-- /DROPDOWN NAVIGATION LINK -->

                <!-- DROPDOWN NAVIGATION LINK -->
                <a class="dropdown-navigation-link" href="password_change">Change Password</a>
                <!-- /DROPDOWN NAVIGATION LINK -->

                <!-- DROPDOWN NAVIGATION BUTTON -->
                <a href="logout"><p class="dropdown-navigation-button button small secondary">Logout</p></a>
                <!-- /DROPDOWN NAVIGATION BUTTON -->
            </div>
            <!-- /DROPDOWN NAVIGATION -->
        </div>
        <!-- /ACTION ITEM WRAP -->
    </div>
    <!-- /HEADER ACTIONS -->
</header>
<!-- /HEADER -->

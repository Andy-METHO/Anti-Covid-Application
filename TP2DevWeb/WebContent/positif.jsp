<%@ page import="Beans.*" %>
<%@ page import="Servlets.FriendsServlet" %>
<jsp:useBean id="friendslist" class="Beans.Friends" scope="session" />
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- bootstrap 4.3.1 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/bootstrap.min.css">
  <!-- styles -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.min.css">
  <!-- simplebar styles -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/simplebar.css">
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/friends.css">
  
  <!-- favicon -->
  <link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
  <title>Anticovid | Je suis Positif</title>
</head>
<body>

  <!-- PAGE LOADER -->
  <div class="page-loader">
    <!-- PAGE LOADER DECORATION -->
    <div class="page-loader-decoration">
      <!-- ICON LOGO -->
      <svg class="icon-logo" viewBox="0 0 28 40" preserveAspectRatio="xMinYMin meet">
        <path d="M27.18,24.038c-0.141-0.095-0.244-0.146-0.244-0.146l-0.005-0.049C25.489,22.783,23.103,22,23.103,22c1.542,0,2.582-0.563,3.501-1.334c-0.049-0.055,0.7-0.666,0.7-0.666c0.146-8.251-4.477-12.745-7.001-14.667C18.15,9.564,16.802,14,16.802,14c-0.219-4.426,0.243-8.072,0.7-10.667c-0.85-0.452-1.956-0.698-2.296-1.537C14.865,0.957,14.015,0,14.015,0L14,0.014L13.985,0c0,0-0.85,0.957-1.19,1.796c-0.34,0.839-1.445,1.085-2.295,1.537C10.957,5.928,11.418,9.574,11.2,14c0,0-1.349-4.436-3.501-8.667C5.174,7.255,0.551,11.749,0.697,20c0,0,0.75,0.611,0.701,0.666C2.316,21.437,3.357,22,4.898,22c0,0-2.387,0.783-3.829,1.844l-0.005,0.049c0,0-0.104,0.051-0.244,0.146c-0.48,0.397-0.806,0.828-0.819,1.269c-0.023,0.521,0.263,1.181,1.233,1.973c0,0,0.136,9.259,9.69,11.29c0,0,0.212,0.815,0.975,1.431L14,38l2.102,2c0.763-0.615,0.975-1.431,0.975-1.431c9.555-2.031,9.689-11.29,9.689-11.29c0.971-0.792,1.256-1.451,1.233-1.973C27.986,24.866,27.659,24.436,27.18,24.038z M4.198,26c2.362,0.121,3.517,1.473,5.602,4c0.799,0.969,2.059,0.83,2.059,0.83L11.899,34C5.249,34,4.198,26,4.198,26z M14,28.162l-2.97-2.828l2.101-2.001l-2.101-2l2.101-2l-2.101-2L14,14.505l2.972,2.828l-2.102,2l2.102,2l-2.102,2l2.102,2.001L14,28.162z M16.102,34l0.041-3.17c0,0,1.26,0.139,2.059-0.83c2.085-2.527,3.239-3.879,5.602-4C23.803,26,22.752,34,16.102,34z M13.3,26h1.4v-1.333h-1.4V26z M13.3,22h1.4v-1.334h-1.4V22z M13.3,18h1.4v-1.333h-1.4V18z"/>
      </svg>
      <!-- /ICON LOGO -->
    </div>
    <!-- /PAGE LOADER DECORATION -->

    <!-- PAGE LOADER INFO -->
    <div class="page-loader-info">
      <!-- PAGE LOADER INFO TITLE -->
      <p class="page-loader-info-title">Vikinger</p>
      <!-- /PAGE LOADER INFO TITLE -->

      <!-- PAGE LOADER INFO TEXT -->
      <p class="page-loader-info-text">Loading...</p>
      <!-- /PAGE LOADER INFO TEXT -->
    </div>
    <!-- /PAGE LOADER INFO -->
    
    <!-- PAGE LOADER INDICATOR -->
    <div class="page-loader-indicator loader-bars">
      <div class="loader-bar"></div>
      <div class="loader-bar"></div>
      <div class="loader-bar"></div>
      <div class="loader-bar"></div>
      <div class="loader-bar"></div>
      <div class="loader-bar"></div>
      <div class="loader-bar"></div>
      <div class="loader-bar"></div>
    </div>
    <!-- /PAGE LOADER INDICATOR -->
  </div>
  <!-- /PAGE LOADER -->

  <!-- NAVIGATION WIDGET -->
  <nav id="navigation-widget-small" class="navigation-widget navigation-widget-desktop closed sidebar left delayed">
    <!-- USER AVATAR -->
    <a class="user-avatar small no-outline online" href="profile-timeline.html">
      <!-- USER AVATAR CONTENT -->
      <div class="user-avatar-content">
        <!-- HEXAGON -->
        <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/01.jpg"></div>
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
        <a class="menu-item-link text-tooltip-tfr" href="members.html" data-title="Members">
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
      <li class="menu-item active">
        <!-- MENU ITEM LINK -->
        <a class="menu-item-link text-tooltip-tfr" href="user_servlet" data-title="Events">
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
          <div class="hexagon-image-82-90" data-src="${pageContext.request.contextPath}/resources/img/avatar/01.jpg"></div>
          <!-- /HEXAGON -->
        </div>
        <!-- /USER AVATAR CONTENT -->
    
        <!-- USER AVATAR PROGRESS -->
        <div class="user-avatar-progress">
          <!-- HEXAGON -->
          <div class="hexagon-progress-100-110"></div>
          <!-- /HEXAGON -->
        </div>
        <!-- /USER AVATAR PROGRESS -->
    
        <!-- USER AVATAR PROGRESS BORDER -->
        <div class="user-avatar-progress-border">
          <!-- HEXAGON -->
          <div class="hexagon-border-100-110"></div>
          <!-- /HEXAGON -->
        </div>
        <!-- /USER AVATAR PROGRESS BORDER -->
    
        <!-- USER AVATAR BADGE -->
        <div class="user-avatar-badge">
          <!-- USER AVATAR BADGE BORDER -->
          <div class="user-avatar-badge-border">
            <!-- HEXAGON -->
            <div class="hexagon-32-36"></div>
            <!-- /HEXAGON -->
          </div>
          <!-- /USER AVATAR BADGE BORDER -->
    
          <!-- USER AVATAR BADGE CONTENT -->
          <div class="user-avatar-badge-content">
            <!-- HEXAGON -->
            <div class="hexagon-dark-26-28"></div>
            <!-- /HEXAGON -->
          </div>
          <!-- /USER AVATAR BADGE CONTENT -->
    
          <!-- USER AVATAR BADGE TEXT -->
          <p class="user-avatar-badge-text">24</p>
          <!-- /USER AVATAR BADGE TEXT -->
        </div>
        <!-- /USER AVATAR BADGE -->
      </a>
      <!-- /USER SHORT DESCRIPTION AVATAR -->

      <!-- USER SHORT DESCRIPTION TITLE -->
      <p class="user-short-description-title"><a href="profile-timeline.html">Marina Valentine</a></p>
      <!-- /USER SHORT DESCRIPTION TITLE -->

      <!-- USER SHORT DESCRIPTION TEXT -->
      <p class="user-short-description-text"><a href="#">www.gamehuntress.com</a></p>
      <!-- /USER SHORT DESCRIPTION TEXT -->
    </div>
    <!-- /USER SHORT DESCRIPTION -->

    <!-- BADGE LIST -->
    <div class="badge-list small">
      <!-- BADGE ITEM -->
      <div class="badge-item">
        <img src="${pageContext.request.contextPath}/resources/img/badge/gold-s.png" alt="badge-gold-s">
      </div>
      <!-- /BADGE ITEM -->

      <!-- BADGE ITEM -->
      <div class="badge-item">
        <img src="${pageContext.request.contextPath}/resources/img/badge/age-s.png" alt="badge-age-s">
      </div>
      <!-- /BADGE ITEM -->

      <!-- BADGE ITEM -->
      <div class="badge-item">
        <img src="${pageContext.request.contextPath}/resources/img/badge/caffeinated-s.png" alt="badge-caffeinated-s">
      </div>
      <!-- /BADGE ITEM -->

      <!-- BADGE ITEM -->
      <div class="badge-item">
        <img src="${pageContext.request.contextPath}/resources/img/badge/warrior-s.png" alt="badge-warrior-s">
      </div>
      <!-- /BADGE ITEM -->

      <!-- BADGE ITEM -->
      <a class="badge-item" href="profile-badges.html">
        <img src="${pageContext.request.contextPath}/resources/img/badge/blank-s.png" alt="badge-blank-s">
        <!-- BADGE ITEM TEXT -->
        <p class="badge-item-text">+9</p>
        <!-- /BADGE ITEM TEXT -->
      </a>
      <!-- /BADGE ITEM -->
    </div>
    <!-- /BADGE LIST -->

    <!-- USER STATS -->
    <div class="user-stats">
      <!-- USER STAT -->
      <div class="user-stat">
        <!-- USER STAT TITLE -->
        <p class="user-stat-title">930</p>
        <!-- /USER STAT TITLE -->

        <!-- USER STAT TEXT -->
        <p class="user-stat-text">posts</p>
        <!-- /USER STAT TEXT -->
      </div>
      <!-- /USER STAT -->

      <!-- USER STAT -->
      <div class="user-stat">
        <!-- USER STAT TITLE -->
        <p class="user-stat-title">82</p>
        <!-- /USER STAT TITLE -->

        <!-- USER STAT TEXT -->
        <p class="user-stat-text">friends</p>
        <!-- /USER STAT TEXT -->
      </div>
      <!-- /USER STAT -->

      <!-- USER STAT -->
      <div class="user-stat">
        <!-- USER STAT TITLE -->
        <p class="user-stat-title">5.7k</p>
        <!-- /USER STAT TITLE -->

        <!-- USER STAT TEXT -->
        <p class="user-stat-text">visits</p>
        <!-- /USER STAT TEXT -->
      </div>
      <!-- /USER STAT -->
    </div>
    <!-- /USER STATS -->

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
        <a class="menu-item-link" href="members.html">
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
      <li class="menu-item active">
        <!-- MENU ITEM LINK -->
        <a class="menu-item-link" href="events.jsp">
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
            <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/01.jpg"></div>
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
        <p class="navigation-widget-info-title"><a href="profile-timeline.html">Marina Valentine</a></p>
        <!-- /NAVIGATION WIDGET INFO TITLE -->

        <!-- NAVIGATION WIDGET INFO TEXT -->
        <p class="navigation-widget-info-text">Welcome Back!</p>
        <!-- /NAVIGATION WIDGET INFO TEXT -->
      </div>
      <!-- /NAVIGATION WIDGET INFO -->

      <!-- NAVIGATION WIDGET BUTTON -->
      <a class="navigation-widget-info-button button small secondary" href="logout">Logout</a>
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
        <a class="menu-item-link" href="members.html">
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
      <li class="menu-item active">
        <!-- MENU ITEM LINK -->
        <a class="menu-item-link" href="user_servlet">
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
    <a class="navigation-widget-section-link" href="#">Home</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="#">Careers</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="#">Faqs</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="#">About Us</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="#">Our Blog</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="#">Contact Us</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->

    <!-- NAVIGATION WIDGET SECTION LINK -->
    <a class="navigation-widget-section-link" href="#">Privacy Policy</a>
    <!-- /NAVIGATION WIDGET SECTION LINK -->
  </nav>
  <!-- /NAVIGATION WIDGET -->

  <!-- CHAT WIDGET -->
  <aside id="chat-widget-messages" class="chat-widget closed sidebar right">
    <!-- CHAT WIDGET MESSAGES -->
    <div class="chat-widget-messages" data-simplebar>
      <!-- CHAT WIDGET MESSAGE -->
      <div class="chat-widget-message">
        <!-- USER STATUS -->
        <div class="user-status">
          <!-- USER STATUS AVATAR -->
          <div class="user-status-avatar">
            <!-- USER AVATAR -->
            <div class="user-avatar small no-outline online">
              <!-- USER AVATAR CONTENT -->
              <div class="user-avatar-content">
                <!-- HEXAGON -->
                <div class="hexagon-image-30-32" data-src="img/avatar/03.jpg"></div>
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
                <p class="user-avatar-badge-text">16</p>
                <!-- /USER AVATAR BADGE TEXT -->
              </div>
              <!-- /USER AVATAR BADGE -->
            </div>
            <!-- /USER AVATAR -->
          </div>
          <!-- /USER STATUS AVATAR -->
      
          <!-- USER STATUS TITLE -->
          <p class="user-status-title"><span class="bold">Nick Grissom</span></p>
          <!-- /USER STATUS TITLE -->
      
          <!-- USER STATUS TEXT -->
          <p class="user-status-text small">Can you stream the new game?</p>
          <!-- /USER STATUS TEXT -->
      
          <!-- USER STATUS TIMESTAMP -->
          <p class="user-status-timestamp floaty">2hrs</p>
          <!-- /USER STATUS TIMESTAMP -->
        </div>
        <!-- /USER STATUS -->
      </div>
      <!-- /CHAT WIDGET MESSAGE -->

    </div>
    <!-- /CHAT WIDGET MESSAGES -->

    <!-- CHAT WIDGET FORM -->
    <form class="chat-widget-form">
      <!-- INTERACTIVE INPUT -->
      <div class="interactive-input small">
        <input type="text" id="chat-widget-search" name="chat_widget_search" placeholder="Search Messages...">
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
    </form>
    <!-- /CHAT WIDGET FORM -->

    <!-- CHAT WIDGET BUTTON -->
    <div class="chat-widget-button">
      <!-- CHAT WIDGET BUTTON ICON -->
      <div class="chat-widget-button-icon">
        <!-- BURGER ICON -->
        <div class="burger-icon">
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
      <!-- /CHAT WIDGET BUTTON ICON -->

      <!-- CHAT WIDGET BUTTON TEXT -->
      <p class="chat-widget-button-text">Messages / Chat</p>
      <!-- /CHAT WIDGET BUTTON TEXT -->
    </div>
    <!-- /CHAT WIDGET BUTTON -->
  </aside>
  <!-- /CHAT WIDGET -->

  <!-- CHAT WIDGET -->
  <aside id="chat-widget-message" class="chat-widget chat-widget-overlay hidden sidebar right">
    <!-- CHAT WIDGET HEADER -->
    <div class="chat-widget-header">
      <!-- CHAT WIDGET CLOSE BUTTON -->
      <div class="chat-widget-close-button">
        <!-- CHAT WIDGET CLOSE BUTTON ICON -->
        <svg class="chat-widget-close-button-icon icon-back-arrow">
          <use xlink:href="#svg-back-arrow"></use>
        </svg>
        <!-- CHAT WIDGET CLOSE BUTTON ICON -->
      </div>
      <!-- /CHAT WIDGET CLOSE BUTTON -->

      <!-- USER STATUS -->
      <div class="user-status">
        <!-- USER STATUS AVATAR -->
        <div class="user-status-avatar">
          <!-- USER AVATAR -->
          <div class="user-avatar small no-outline online">
            <!-- USER AVATAR CONTENT -->
            <div class="user-avatar-content">
              <!-- HEXAGON -->
              <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/03.jpg"></div>
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
              <p class="user-avatar-badge-text">16</p>
              <!-- /USER AVATAR BADGE TEXT -->
            </div>
            <!-- /USER AVATAR BADGE -->
          </div>
          <!-- /USER AVATAR -->
        </div>
        <!-- /USER STATUS AVATAR -->

        <!-- USER STATUS TITLE -->
        <p class="user-status-title"><span class="bold">Nick Grissom</span></p>
        <!-- /USER STATUS TITLE -->

        <!-- USER STATUS TAG -->
        <p class="user-status-tag online">Online</p>
        <!-- /USER STATUS TAG -->
      </div>
      <!-- /USER STATUS -->
    </div>
    <!-- /CHAT WIDGET HEADER -->

    <!-- CHAT WIDGET CONVERSATION -->
    <div class="chat-widget-conversation" data-simplebar>
      <!-- CHAT WIDGET SPEAKER -->
      <div class="chat-widget-speaker left">
        <!-- CHAT WIDGET SPEAKER AVATAR -->
        <div class="chat-widget-speaker-avatar">
          <!-- USER AVATAR -->
          <div class="user-avatar tiny no-border">
            <!-- USER AVATAR CONTENT -->
            <div class="user-avatar-content">
              <!-- HEXAGON -->
              <div class="hexagon-image-24-26" data-src="${pageContext.request.contextPath}/resources/img/avatar/03.jpg"></div>
              <!-- /HEXAGON -->
            </div>
            <!-- /USER AVATAR CONTENT -->
          </div>
          <!-- /USER AVATAR -->
        </div>
        <!-- /CHAT WIDGET SPEAKER AVATAR -->

        <!-- CHAT WIDGET SPEAKER MESSAGE -->
        <p class="chat-widget-speaker-message">Hi Marina! It's been a long time!</p>
        <!-- /CHAT WIDGET SPEAKER MESSAGE -->

        <!-- CHAT WIDGET SPEAKER TIMESTAMP -->
        <p class="chat-widget-speaker-timestamp">Yesterday at 8:36PM</p>
        <!-- /CHAT WIDGET SPEAKER TIMESTAMP -->
      </div>
      <!-- /CHAT WIDGET SPEAKER -->

      <!-- CHAT WIDGET SPEAKER -->
      <div class="chat-widget-speaker right">
        <!-- CHAT WIDGET SPEAKER MESSAGE -->
        <p class="chat-widget-speaker-message">Hey Nick!</p>
        <!-- /CHAT WIDGET SPEAKER MESSAGE -->

        <!-- CHAT WIDGET SPEAKER MESSAGE -->
        <p class="chat-widget-speaker-message">You're right, it's been a really long time! I think the last time we saw was at Neko's party</p>
        <!-- /CHAT WIDGET SPEAKER MESSAGE -->

        <!-- CHAT WIDGET SPEAKER TIMESTAMP -->
        <p class="chat-widget-speaker-timestamp">10:05AM</p>
        <!-- /CHAT WIDGET SPEAKER TIMESTAMP -->
      </div>
      <!-- /CHAT WIDGET SPEAKER -->

      <!-- CHAT WIDGET SPEAKER -->
      <div class="chat-widget-speaker left">
        <!-- CHAT WIDGET SPEAKER AVATAR -->
        <div class="chat-widget-speaker-avatar">
          <!-- USER AVATAR -->
          <div class="user-avatar tiny no-border">
            <!-- USER AVATAR CONTENT -->
            <div class="user-avatar-content">
              <!-- HEXAGON -->
              <div class="hexagon-image-24-26" data-src="${pageContext.request.contextPath}/resources/img/avatar/03.jpg"></div>
              <!-- /HEXAGON -->
            </div>
            <!-- /USER AVATAR CONTENT -->
          </div>
          <!-- /USER AVATAR -->
        </div>
        <!-- /CHAT WIDGET SPEAKER AVATAR -->

        <!-- CHAT WIDGET SPEAKER MESSAGE -->
        <p class="chat-widget-speaker-message">Yeah! I remember now! The stream launch party</p>
        <!-- /CHAT WIDGET SPEAKER MESSAGE -->

        <!-- CHAT WIDGET SPEAKER MESSAGE -->
        <p class="chat-widget-speaker-message">That reminds me that I wanted to ask you something</p>
        <!-- /CHAT WIDGET SPEAKER MESSAGE -->

        <!-- CHAT WIDGET SPEAKER MESSAGE -->
        <p class="chat-widget-speaker-message">Can you stream the new game?</p>
        <!-- /CHAT WIDGET SPEAKER MESSAGE -->
      </div>
      <!-- /CHAT WIDGET SPEAKER -->
    </div>
    <!-- /CHAT WIDGET CONVERSATION -->

    <!-- CHAT WIDGET FORM -->
    <form class="chat-widget-form">
      <!-- INTERACTIVE INPUT -->
      <div class="interactive-input small">
        <input type="text" id="chat-widget-message-text" name="chat_widget_message_text" placeholder="Write a message...">
        <!-- INTERACTIVE INPUT ICON WRAP -->
        <div class="interactive-input-icon-wrap">
          <!-- INTERACTIVE INPUT ICON -->
          <svg class="interactive-input-icon icon-send-message">
            <use xlink:href="#svg-send-message"></use>
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
    </form>
    <!-- /CHAT WIDGET FORM -->
  </aside>
  <!-- /CHAT WIDGET -->

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
            <a class="menu-main-item-link" href="#">Home</a>
            <!-- /MENU MAIN ITEM LINK -->
          </li>
          <!-- /MENU MAIN ITEM -->

          <!-- MENU MAIN ITEM -->
          <li class="menu-main-item">
            <!-- MENU MAIN ITEM LINK -->
            <a class="menu-main-item-link" href="#">Careers</a>
            <!-- /MENU MAIN ITEM LINK -->
          </li>
          <!-- /MENU MAIN ITEM -->

          <!-- MENU MAIN ITEM -->
          <li class="menu-main-item">
            <!-- MENU MAIN ITEM LINK -->
            <a class="menu-main-item-link" href="#">Faqs</a>
            <!-- /MENU MAIN ITEM LINK -->
          </li>
          <!-- /MENU MAIN ITEM -->

          <!-- MENU MAIN ITEM -->
          <li class="menu-main-item">
            <!-- MENU MAIN ITEM LINK -->
            <p class="menu-main-item-link">
              <!-- ICON DOTS -->
              <svg class="icon-dots">
                <use xlink:href="#svg-dots"></use>
              </svg>
              <!-- /ICON DOTS -->
            </p>
            <!-- /MENU MAIN ITEM LINK -->

            <!-- MENU MAIN -->
            <ul class="menu-main">
              <!-- MENU MAIN ITEM -->
              <li class="menu-main-item">
                <!-- MENU MAIN ITEM LINK -->
                <a class="menu-main-item-link" href="#">About Us</a>
                <!-- /MENU MAIN ITEM LINK -->
              </li>
              <!-- /MENU MAIN ITEM -->

              <!-- MENU MAIN ITEM -->
              <li class="menu-main-item">
                <!-- MENU MAIN ITEM LINK -->
                <a class="menu-main-item-link" href="#">Our Blog</a>
                <!-- /MENU MAIN ITEM LINK -->
              </li>
              <!-- /MENU MAIN ITEM -->

              <!-- MENU MAIN ITEM -->
              <li class="menu-main-item">
                <!-- MENU MAIN ITEM LINK -->
                <a class="menu-main-item-link" href="#">Contact Us</a>
                <!-- /MENU MAIN ITEM LINK -->
              </li>
              <!-- /MENU MAIN ITEM -->

              <!-- MENU MAIN ITEM -->
              <li class="menu-main-item">
                <!-- MENU MAIN ITEM LINK -->
                <a class="menu-main-item-link" href="#">Privacy Policy</a>
                <!-- /MENU MAIN ITEM LINK -->
              </li>
              <!-- /MENU MAIN ITEM -->
            </ul>
            <!-- /MENU MAIN -->
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
        <div class="action-list-item-wrap">
          <a class="action-list-item-icon icon-friend" href="friends">Friends</a>
          
          <!-- /DROPDOWN BOX -->
        </div>
        <!-- /ACTION LIST ITEM WRAP -->

        <!-- ACTION LIST ITEM WRAP -->
        <div class="action-list-item-wrap">
          <!-- ACTION LIST ITEM -->
          <div class="action-list-item header-dropdown-trigger">
            <!-- ACTION LIST ITEM ICON -->
            <svg class="action-list-item-icon icon-messages">
              <use xlink:href="#svg-messages"></use>
            </svg>
            <!-- /ACTION LIST ITEM ICON -->
          </div>
          <!-- /ACTION LIST ITEM -->

          <!-- DROPDOWN BOX -->
          <div class="dropdown-box header-dropdown">
            <!-- DROPDOWN BOX HEADER -->
            <div class="dropdown-box-header">
              <!-- DROPDOWN BOX HEADER TITLE -->
              <p class="dropdown-box-header-title">Messages</p>
              <!-- /DROPDOWN BOX HEADER TITLE -->

              <!-- DROPDOWN BOX HEADER ACTIONS -->
              <div class="dropdown-box-header-actions">
                <!-- DROPDOWN BOX HEADER ACTION -->
                <p class="dropdown-box-header-action">Mark all as Read</p>
                <!-- /DROPDOWN BOX HEADER ACTION -->

                <!-- DROPDOWN BOX HEADER ACTION -->
                <p class="dropdown-box-header-action">Settings</p>
                <!-- /DROPDOWN BOX HEADER ACTION -->
              </div>
              <!-- /DROPDOWN BOX HEADER ACTIONS -->
            </div>
            <!-- /DROPDOWN BOX HEADER -->

            <!-- DROPDOWN BOX LIST -->
            <div class="dropdown-box-list medium" data-simplebar>
              <!-- DROPDOWN BOX LIST ITEM -->
              <a class="dropdown-box-list-item" href="hub-profile-messages.html">
                <!-- USER STATUS -->
                <div class="user-status">
                  <!-- USER STATUS AVATAR -->
                  <div class="user-status-avatar">
                    <!-- USER AVATAR -->
                    <div class="user-avatar small no-outline">
                      <!-- USER AVATAR CONTENT -->
                      <div class="user-avatar-content">
                        <!-- HEXAGON -->
                        <div class="hexagon-image-30-32" data-src="img/avatar/04.jpg"></div>
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
                        <p class="user-avatar-badge-text">6</p>
                        <!-- /USER AVATAR BADGE TEXT -->
                      </div>
                      <!-- /USER AVATAR BADGE -->
                    </div>
                    <!-- /USER AVATAR -->
                  </div>
                  <!-- /USER STATUS AVATAR -->

                  <!-- USER STATUS TITLE -->
                  <p class="user-status-title"><span class="bold">Bearded Wonder</span></p>
                  <!-- /USER STATUS TITLE -->

                  <!-- USER STATUS TEXT -->
                  <p class="user-status-text">Great! Then will meet with them at the party...</p>
                  <!-- /USER STATUS TEXT -->

                  <!-- USER STATUS TIMESTAMP -->
                  <p class="user-status-timestamp floaty">29 mins ago</p>
                  <!-- /USER STATUS TIMESTAMP -->
                </div>
                <!-- /USER STATUS -->
              </a>
              <!-- /DROPDOWN BOX LIST ITEM -->
            </div>
            <!-- /DROPDOWN BOX LIST -->

            <!-- DROPDOWN BOX BUTTON -->
            <a class="dropdown-box-button primary" href="hub-profile-messages.html">View all Messages</a>
            <!-- /DROPDOWN BOX BUTTON -->
          </div>
          <!-- /DROPDOWN BOX -->
        </div>
        <!-- /ACTION LIST ITEM WRAP -->

        <!-- ACTION LIST ITEM WRAP -->
        <div class="action-list-item-wrap">
          <!-- ACTION LIST ITEM -->
          <div class="action-list-item unread header-dropdown-trigger">
            <!-- ACTION LIST ITEM ICON -->
            <svg class="action-list-item-icon icon-notification">
              <use xlink:href="#svg-notification"></use>
            </svg>
            <!-- /ACTION LIST ITEM ICON -->
          </div>
          <!-- /ACTION LIST ITEM -->

          <!-- DROPDOWN BOX -->
          <div class="dropdown-box header-dropdown">
            <!-- DROPDOWN BOX HEADER -->
            <div class="dropdown-box-header">
              <!-- DROPDOWN BOX HEADER TITLE -->
              <p class="dropdown-box-header-title">Notifications</p>
              <!-- /DROPDOWN BOX HEADER TITLE -->

              <!-- DROPDOWN BOX HEADER ACTIONS -->
              <div class="dropdown-box-header-actions">
                <!-- DROPDOWN BOX HEADER ACTION -->
                <p class="dropdown-box-header-action">Mark all as Read</p>
                <!-- /DROPDOWN BOX HEADER ACTION -->

                <!-- DROPDOWN BOX HEADER ACTION -->
                <p class="dropdown-box-header-action">Settings</p>
                <!-- /DROPDOWN BOX HEADER ACTION -->
              </div>
              <!-- /DROPDOWN BOX HEADER ACTIONS -->
            </div>
            <!-- /DROPDOWN BOX HEADER -->

            <!-- DROPDOWN BOX LIST -->
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
                        <div class="hexagon-image-30-32" data-src="img/avatar/03.jpg"></div>
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
                        <p class="user-avatar-badge-text">16</p>
                        <!-- /USER AVATAR BADGE TEXT -->
                      </div>
                      <!-- /USER AVATAR BADGE -->
                    </div>
                    <!-- /USER AVATAR -->
                  </a>
                  <!-- /USER STATUS AVATAR -->

                  <!-- USER STATUS TITLE -->
                  <p class="user-status-title"><a class="bold" href="profile-timeline.html">Nick Grissom</a> posted a comment on your <a class="highlighted" href="profile-timeline.html">status update</a></p>
                  <!-- /USER STATUS TITLE -->

                  <!-- USER STATUS TIMESTAMP -->
                  <p class="user-status-timestamp">2 minutes ago</p>
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

              <!-- DROPDOWN BOX LIST ITEM -->
              <div class="dropdown-box-list-item">
                <!-- USER STATUS -->
                <div class="user-status notification">
                  <!-- USER STATUS AVATAR -->
                  <a class="user-status-avatar" href="profile-timeline.html">
                    <!-- USER AVATAR -->
                    <div class="user-avatar small no-outline">
                      <!-- USER AVATAR CONTENT -->
                      <div class="user-avatar-content">
                        <!-- HEXAGON -->
                        <div class="hexagon-image-30-32" data-src="img/avatar/07.jpg"></div>
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
                        <p class="user-avatar-badge-text">26</p>
                        <!-- /USER AVATAR BADGE TEXT -->
                      </div>
                      <!-- /USER AVATAR BADGE -->
                    </div>
                    <!-- /USER AVATAR -->
                  </a>
                  <!-- /USER STATUS AVATAR -->

                  <!-- USER STATUS TITLE -->
                  <p class="user-status-title"><a class="bold" href="profile-timeline.html">Sarah Diamond</a> left a like <img class="reaction" src="img/reaction/like.png" alt="reaction-like"> reaction on your <a class="highlighted" href="profile-timeline.html">status update</a></p>
                  <!-- /USER STATUS TITLE -->

                  <!-- USER STATUS TIMESTAMP -->
                  <p class="user-status-timestamp">17 minutes ago</p>
                  <!-- /USER STATUS TIMESTAMP -->

                  <!-- USER STATUS ICON -->
                  <div class="user-status-icon">
                    <!-- ICON THUMBS UP -->
                    <svg class="icon-thumbs-up">
                      <use xlink:href="#svg-thumbs-up"></use>
                    </svg>
                    <!-- /ICON THUMBS UP -->
                  </div>
                  <!-- /USER STATUS ICON -->
                </div>
                <!-- /USER STATUS -->
              </div>
              <!-- /DROPDOWN BOX LIST ITEM -->
            </div>
            <!-- /DROPDOWN BOX LIST -->

            <!-- DROPDOWN BOX BUTTON -->
            <a class="dropdown-box-button secondary" href="hub-profile-notifications.html">View all Notifications</a>
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
                    <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/01.jpg"></div>
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
                </div>
                <!-- /USER AVATAR -->
              </a>
              <!-- /USER STATUS AVATAR -->
          
              <!-- USER STATUS TITLE -->
              <c:if test="${not empty current_user}">
                <p class="user-status-title"><span class="bold">Hi ${current_user.prenom} !</span></p>
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
          <a class="dropdown-navigation-link" href="hub-account-info.html">Account Info</a>
          <!-- /DROPDOWN NAVIGATION LINK -->
      
          <!-- DROPDOWN NAVIGATION LINK -->
          <a class="dropdown-navigation-link" href="hub-account-password.html">Change Password</a>
          <!-- /DROPDOWN NAVIGATION LINK -->
      
          <!-- DROPDOWN NAVIGATION BUTTON -->
          <a class="dropdown-navigation-button button small secondary" href="logout">Logout</a>
          <!-- /DROPDOWN NAVIGATION BUTTON -->
        </div>
        <!-- /DROPDOWN NAVIGATION -->
      </div>
      <!-- /ACTION ITEM WRAP -->
    </div>
    <!-- /HEADER ACTIONS -->
  </header>
  <!-- /HEADER -->

  <!-- FLOATY BAR -->
  <aside class="floaty-bar">
    <!-- BAR ACTIONS -->
    <div class="bar-actions">
      <!-- PROGRESS STAT -->
      <div class="progress-stat">
        <!-- BAR PROGRESS WRAP -->
        <div class="bar-progress-wrap">
          <!-- BAR PROGRESS INFO -->
          <p class="bar-progress-info">Next: <span class="bar-progress-text"></span></p>
          <!-- /BAR PROGRESS INFO -->
        </div>
        <!-- /BAR PROGRESS WRAP -->

        <!-- PROGRESS STAT BAR -->
        <div id="logged-user-level-cp" class="progress-stat-bar"></div>
        <!-- /PROGRESS STAT BAR -->
      </div>
      <!-- /PROGRESS STAT -->
    </div>
    <!-- /BAR ACTIONS -->

    <!-- BAR ACTIONS -->
    <div class="bar-actions">
      <!-- ACTION LIST -->
      <div class="action-list dark">

        <!-- ACTION LIST ITEM -->
        <a class="action-list-item" href="hub-profile-requests.html">
          <!-- ACTION LIST ITEM ICON -->
          <svg class="action-list-item-icon icon-friend">
            <use xlink:href="#svg-friend"></use>
          </svg>
          <!-- /ACTION LIST ITEM ICON -->
        </a>
        <!-- /ACTION LIST ITEM -->

        <!-- ACTION LIST ITEM -->
        <a class="action-list-item" href="hub-profile-messages.html">
          <!-- ACTION LIST ITEM ICON -->
          <svg class="action-list-item-icon icon-messages">
            <use xlink:href="#svg-messages"></use>
          </svg>
          <!-- /ACTION LIST ITEM ICON -->
        </a>
        <!-- /ACTION LIST ITEM -->

        <!-- ACTION LIST ITEM -->
        <a class="action-list-item unread" href="hub-profile-notifications.html">
          <!-- ACTION LIST ITEM ICON -->
          <svg class="action-list-item-icon icon-notification">
            <use xlink:href="#svg-notification"></use>
          </svg>
          <!-- /ACTION LIST ITEM ICON -->
        </a>
        <!-- /ACTION LIST ITEM -->
      </div>
      <!-- /ACTION LIST -->

      <!-- ACTION ITEM WRAP -->
      <a class="action-item-wrap" href="hub-profile-info.html">
        <!-- ACTION ITEM -->
        <div class="action-item dark">
          <!-- ACTION ITEM ICON -->
          <svg class="action-item-icon icon-settings">
            <use xlink:href="#svg-settings"></use>
          </svg>
          <!-- /ACTION ITEM ICON -->
        </div>
        <!-- /ACTION ITEM -->
      </a>
      <!-- /ACTION ITEM WRAP -->
    </div>
    <!-- /BAR ACTIONS -->
  </aside>
  <!-- /FLOATY BAR -->

  <!-- CONTENT GRID -->
  <div class="content-grid">
  
  <div class="section-header">
      <!-- SECTION HEADER INFO -->
      <div class="section-header-info">
        <!-- SECTION TITLE -->
        <h2 class="section-title">Je suis positif</h2>
        <!-- /SECTION TITLE -->
      </div>
      <!-- /SECTION HEADER INFO -->
      <!-- SECTION FILTERS BAR -->
    </div>
    <div class="calendar-widget">
            <!-- CALENDAR EVENTS PREVIEW -->
      <div class="calendar-events-preview-title">
      <div class="calendar-events-preview">
	      		<p class="calendar-events-preview-title">Etes vous sur d'�tre infect� par le covid-19 ?</p>
	      		<form action="user_servlet" method="POST">
		      		<table>
			      		<tr>
			      			<td><div class="menu-item-link text-tooltip-tfr"><button name="positivite" value="positif">OUI</button></div></td>
			      			<td><div class="menu-item-link text-tooltip-tfr"><button name="positivite" value="annuler">NON</button></div></td>	      		
			      		</tr>
		      		</table>
	      		</form>
	      		<p class="calendar-events-preview-title">Une notification sera envoy�e � tous vos amis lors de la validation</p>
	   </div>    
	      
      <!-- /CALENDAR EVENTS PREVIEW -->
    </div>
    <!-- /CALENDAR WIDGET -->
    
  </div>
  
  
  
  </div>

  <!-- POPUP BOX -->
  <div class="popup-box small popup-event-creation">
    <!-- POPUP CLOSE BUTTON -->
    <div class="popup-close-button popup-event-creation-trigger">
      <!-- POPUP CLOSE BUTTON ICON -->
      <svg class="popup-close-button-icon icon-cross">
        <use xlink:href="#svg-cross"></use>
      </svg>
      <!-- /POPUP CLOSE BUTTON ICON -->
    </div>
    <!-- /POPUP CLOSE BUTTON -->

    <!-- POPUP BOX TITLE -->
    <p class="popup-box-title">+ Ajouter un Ami</p>
    <!-- /POPUP BOX TITLE -->

    <!-- FORM -->
    <form class="form" action="friends" method ="GET">
      <!-- FORM ROW -->

      <!-- FORM ROW -->
      <div class="form-row">
        <!-- FORM ITEM -->
        <div class="form-item">
          <!-- FORM INPUT -->
          <div class="form-input small">
            <label for="event-name">Pseudo</label>
            <input type="text" id="pseudo" name="pseudo">
            <br/><br/>
        	<input class="popup-box-action full button secondary" type = "submit" value = "Envoyer une demande d'ami" />
        	<br/><br/>
          </div>
          <!-- /FORM INPUT -->
        </div>
        <!-- /FORM ITEM -->
      </div>
      <!-- /FORM ROW -->
      <!-- /POPUP BOX ACTIONS -->
    </form>
    <!-- /FORM -->
  </div>
  <!-- /POPUP BOX -->

  <!-- POPUP EVENT -->
  <div class="popup-event popup-event-information">
    <!-- POPUP CLOSE BUTTON -->
    <div class="popup-close-button popup-event-information-trigger">
      <!-- POPUP CLOSE BUTTON ICON -->
      <svg class="popup-close-button-icon icon-cross">
        <use xlink:href="#svg-cross"></use>
      </svg>
      <!-- /POPUP CLOSE BUTTON ICON -->
    </div>
    <!-- /POPUP CLOSE BUTTON -->

    <!-- POPUP EVENT COVER -->
    <figure class="popup-event-cover liquid">
      <img src="${pageContext.request.contextPath}/resources/img/cover/33.jpg" alt="cover-33">
    </figure>
    <!-- /POPUP EVENT COVER -->

    <!-- POPUP EVENT INFO -->
    <div class="popup-event-info">
      <!-- POPUP EVENT TITLE -->
      <p class="popup-event-title">CosWorld 2019 After Party</p>
      <!-- /POPUP EVENT TITLE -->

      <!-- DECORATED FEATURE LIST -->
      <div class="decorated-feature-list">
        <!-- DECORATED FEATURE -->
        <div class="decorated-feature">
          <!-- DECORATED FEATURE ICON -->
          <svg class="decorated-feature-icon icon-events">
            <use xlink:href="#svg-events"></use>
          </svg>
          <!-- /DECORATED FEATURE ICON -->

          <!-- DECORATED FEATURE INFO -->
          <div class="decorated-feature-info">
            <!-- DECORATED FEATURE TITLE -->
            <p class="decorated-feature-title">Sunday, August 26th - 2019</p>
            <!-- /DECORATED FEATURE TITLE -->

            <!-- DECORATED FEATURE TEXT -->
            <p class="decorated-feature-text">8:30 AM</p>
            <!-- /DECORATED FEATURE TEXT -->
          </div>
          <!-- /DECORATED FEATURE INFO -->
        </div>
        <!-- /DECORATED FEATURE -->

        <!-- DECORATED FEATURE -->
        <div class="decorated-feature">
          <!-- DECORATED FEATURE ICON -->
          <svg class="decorated-feature-icon icon-pin">
            <use xlink:href="#svg-pin"></use>
          </svg>
          <!-- /DECORATED FEATURE ICON -->

          <!-- DECORATED FEATURE INFO -->
          <div class="decorated-feature-info">
            <!-- DECORATED FEATURE TITLE -->
            <p class="decorated-feature-title">CosWorld Arena</p>
            <!-- /DECORATED FEATURE TITLE -->

            <!-- DECORATED FEATURE TEXT -->
            <p class="decorated-feature-text">Alchemists Avenue 310 - NY 10001 New York - USA</p>
            <!-- /DECORATED FEATURE TEXT -->
          </div>
          <!-- /DECORATED FEATURE INFO -->
        </div>
        <!-- /DECORATED FEATURE -->
      </div>
      <!-- /DECORATED FEATURE LIST -->

      <!-- POPUP EVENT SUBTITLE -->
      <p class="popup-event-subtitle">Description</p>
      <!-- /POPUP EVENT SUBTITLE -->

      <!-- POPUP EVENT TEXT -->
      <p class="popup-event-text">Join us at the CosWorld after party! We'll be eating, drinking and having a great time exchanging experiences from the convention</p>
      <!-- /POPUP EVENT TEXT -->

      <!-- POPUP EVENT SUBTITLE -->
      <p class="popup-event-subtitle">Google Map</p>
      <!-- /POPUP EVENT SUBTITLE -->

      <!-- GOOGLE MAP -->
      <div id="g-map" class="g-map"></div>
      <!-- /GOOGLE MAP -->

      <!-- POPUP EVENT BUTTON -->
      <p class="popup-event-button button tertiary popup-event-information-trigger">Remove from Calendar</p>
      <!-- /POPUP EVENT BUTTON -->
    </div>
    <!-- /POPUP EVENT INFO -->
  </div>
  <!-- /POPUP EVENT -->

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
</body>
</html>
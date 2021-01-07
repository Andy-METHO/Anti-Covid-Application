<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <%@include file="WEB-INF/stylesheets.jsp" %>
  <title>AntiCovid | Account Hub</title>
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
      <img class="section-banner-icon" src="${pageContext.request.contextPath}/resources/img/banner/accounthub-icon.png" alt="accounthub-icon">
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
          <div class="sidebar-menu round-borders">
            <!-- SIDEBAR MENU ITEM -->
            <div class="sidebar-menu-item">
              <!-- SIDEBAR MENU HEADER -->
              <div class="sidebar-menu-header accordion-trigger-linked">
                <!-- SIDEBAR MENU HEADER ICON -->
                <svg class="sidebar-menu-header-icon icon-profile">
                  <use xlink:href="#svg-profile"></use>
                </svg>
                <!-- /SIDEBAR MENU HEADER ICON -->

                <!-- SIDEBAR MENU HEADER CONTROL ICON -->
                <div class="sidebar-menu-header-control-icon">
                  <!-- SIDEBAR MENU HEADER CONTROL ICON OPEN -->
                  <svg class="sidebar-menu-header-control-icon-open icon-minus-small">
                    <use xlink:href="#svg-minus-small"></use>
                  </svg>
                  <!-- /SIDEBAR MENU HEADER CONTROL ICON OPEN -->

                  <!-- SIDEBAR MENU HEADER CONTROL ICON CLOSED -->
                  <svg class="sidebar-menu-header-control-icon-closed icon-plus-small">
                    <use xlink:href="#svg-plus-small"></use>
                  </svg>
                  <!-- /SIDEBAR MENU HEADER CONTROL ICON CLOSED -->
                </div>
                <!-- /SIDEBAR MENU HEADER CONTROL ICON -->

                <!-- SIDEBAR MENU HEADER TITLE -->
                <p class="sidebar-menu-header-title">My Profile</p>
                <!-- /SIDEBAR MENU HEADER TITLE -->

                <!-- SIDEBAR MENU HEADER TEXT -->
                <p class="sidebar-menu-header-text">Change your avatar &amp; cover, accept friends, read messages and more!</p>
                <!-- /SIDEBAR MENU HEADER TEXT -->
              </div>
              <!-- /SIDEBAR MENU HEADER -->

              <!-- SIDEBAR MENU BODY -->
              <div class="sidebar-menu-body accordion-content-linked">
                <!-- SIDEBAR MENU LINK -->
                <a class="sidebar-menu-link" href="hub-profile-info.html">Profile Info</a>
                <!-- /SIDEBAR MENU LINK -->

                <!-- SIDEBAR MENU LINK -->
                <a class="sidebar-menu-link" href="hub-profile-notifications.html">Notifications</a>
                <!-- /SIDEBAR MENU LINK -->

                <!-- SIDEBAR MENU LINK -->
                <a class="sidebar-menu-link" href="hub-profile-messages.html">Messages</a>
                <!-- /SIDEBAR MENU LINK -->

                <!-- SIDEBAR MENU LINK -->
                <a class="sidebar-menu-link" href="hub-profile-requests.html">Friend Requests</a>
                <!-- /SIDEBAR MENU LINK -->
              </div>
              <!-- /SIDEBAR MENU BODY -->
            </div>
            <!-- /SIDEBAR MENU ITEM -->

            <!-- SIDEBAR MENU ITEM -->
            <div class="sidebar-menu-item">
              <!-- SIDEBAR MENU HEADER -->
              <div class="sidebar-menu-header accordion-trigger-linked">
                <!-- SIDEBAR MENU HEADER ICON -->
                <svg class="sidebar-menu-header-icon icon-settings">
                  <use xlink:href="#svg-settings"></use>
                </svg>
                <!-- /SIDEBAR MENU HEADER ICON -->

                <!-- SIDEBAR MENU HEADER CONTROL ICON -->
                <div class="sidebar-menu-header-control-icon">
                  <!-- SIDEBAR MENU HEADER CONTROL ICON OPEN -->
                  <svg class="sidebar-menu-header-control-icon-open icon-minus-small">
                    <use xlink:href="#svg-minus-small"></use>
                  </svg>
                  <!-- /SIDEBAR MENU HEADER CONTROL ICON OPEN -->

                  <!-- SIDEBAR MENU HEADER CONTROL ICON CLOSED -->
                  <svg class="sidebar-menu-header-control-icon-closed icon-plus-small">
                    <use xlink:href="#svg-plus-small"></use>
                  </svg>
                  <!-- /SIDEBAR MENU HEADER CONTROL ICON CLOSED -->
                </div>
                <!-- /SIDEBAR MENU HEADER CONTROL ICON -->

                <!-- SIDEBAR MENU HEADER TITLE -->
                <p class="sidebar-menu-header-title">Account</p>
                <!-- /SIDEBAR MENU HEADER TITLE -->

                <!-- SIDEBAR MENU HEADER TEXT -->
                <p class="sidebar-menu-header-text">Change settings, configure notifications, and review your privacy</p>
                <!-- /SIDEBAR MENU HEADER TEXT -->
              </div>
              <!-- /SIDEBAR MENU HEADER -->

              <!-- SIDEBAR MENU BODY -->
              <div class="sidebar-menu-body accordion-content-linked accordion-open">
                <!-- SIDEBAR MENU LINK -->
                <a class="sidebar-menu-link" href="account">Account Info</a>
                <!-- /SIDEBAR MENU LINK -->

                <!-- SIDEBAR MENU LINK -->
                <a class="sidebar-menu-link active" href="password_change">Change Password</a>
                <!-- /SIDEBAR MENU LINK -->

              </div>
              <!-- /SIDEBAR MENU BODY -->
            </div>
            <!-- /SIDEBAR MENU ITEM -->

          </div>
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
            <p class="section-pretitle">Account</p>
            <!-- /SECTION PRETITLE -->

            <!-- SECTION TITLE -->
            <h2 class="section-title">Change Password</h2>
            <!-- /SECTION TITLE -->
          </div>
          <!-- /SECTION HEADER INFO -->
        </div>
        <!-- /SECTION HEADER -->

        <!-- GRID COLUMN -->
        <div class="grid-column">
          <!-- WIDGET BOX -->
          <div class="widget-box">
            <!-- WIDGET BOX CONTENT -->
            <div class="widget-box-content">

              <c:if test="${not empty msg_err_password}">
                <p class="widget-box-title" style="color: darkred;">${msg_err_password}</p>
              </c:if>
              <c:if test="${not empty msg_success_password}">
                <p class="widget-box-title" style="color: forestgreen;">${msg_success_password}</p>
              </c:if>
              <!-- FORM -->
              <form class="form" method="post" action="password_change" id="password_change">
                <!-- FORM ROW -->
                <div class="form-row">
                  <!-- FORM ITEM -->
                  <div class="form-item">
                    <!-- FORM INPUT -->
                    <div class="form-input small">
                      <label for="current-password">Confirm your Current Password</label>
                      <input type="password" id="current-password" name="current_password">
                    </div>
                    <!-- /FORM INPUT -->
                  </div>
                  <!-- /FORM ITEM -->
                </div>
                <!-- /FORM ROW -->

                <!-- FORM ROW -->
                <div class="form-row split">
                  <!-- FORM ITEM -->
                  <div class="form-item">
                    <!-- FORM INPUT -->
                    <div class="form-input small">
                      <label for="new-password">Your New Password</label>
                      <input type="password" id="new-password" name="new_password">
                    </div>
                    <!-- /FORM INPUT -->
                  </div>
                  <!-- /FORM ITEM -->

                  <!-- FORM ITEM -->
                  <div class="form-item">
                    <!-- FORM INPUT -->
                    <div class="form-input small">
                      <label for="new-password-confirm">Confirm New Password</label>
                      <input type="password" id="new-password-confirm" name="new_password_confirm">
                    </div>
                    <!-- /FORM INPUT -->
                  </div>
                  <!-- /FORM ITEM -->
                </div>
                <!-- /FORM ROW -->

                <!-- FORM ROW -->
                <div class="form-row split">

                  <!-- FORM ITEM -->
                  <div class="form-item">
                    <!-- BUTTON -->
                    <button type="submit" form="password_change"><p class="button full primary">Change Password Now!</p></button>
                    <!-- /BUTTON -->
                  </div>
                  <!-- /FORM ITEM -->

                  <!-- FORM ITEM -->
                  <div class="form-item">
                    <!-- BUTTON -->
                    <button type="reset" form="password_change"><p class="button full secondary">Effacer les changements</p></button>
                    <!-- /BUTTON -->
                  </div>
                  <!-- /FORM ITEM -->
                </div>
                <!-- /FORM ROW -->
              </form>
              <!-- /FORM -->
            </div>
            <!-- WIDGET BOX CONTENT -->
          </div>
          <!-- /WIDGET BOX -->
        </div>
        <!-- /GRID COLUMN -->
      </div>
      <!-- /GRID COLUMN -->
    </div>
    <!-- /GRID -->
  </div>
  <!-- /CONTENT GRID -->

  <%@include file="WEB-INF/scripts.jsp" %>
</body>
</html>
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
          <%@include file="WEB-INF/account_sidebar_menu.jsp" %>
          <!-- /SIDEBAR MENU -->

          <!-- SIDEBAR BOX FOOTER -->
          <div class="sidebar-box-footer">
            <!-- BUTTON -->
            <button type="submit" form="account"><p class="button primary">Save Changes!</p></button>
            <!-- /BUTTON -->

            <!-- BUTTON -->
            <button type="reset" form="account"><p class="button white small-space">Discard All</p></button>
            <!-- /BUTTON -->
          </div>
          <!-- /SIDEBAR BOX FOOTER -->
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
            <h2 class="section-title">Account Info</h2>
            <!-- /SECTION TITLE -->
          </div>
          <!-- /SECTION HEADER INFO -->
        </div>
        <!-- /SECTION HEADER -->

        <!-- GRID COLUMN -->
        <div class="grid-column">
          <!-- WIDGET BOX -->
          <div class="widget-box">
            <!-- WIDGET BOX TITLE -->
            <p class="widget-box-title">Personal Info</p>
            <c:if test="${not empty msg_err_account}">
              <p class="widget-box-title" style="color: darkred; float: right">${msg_err_account}</p>
            </c:if>
            <c:if test="${not empty msg_success_account}">
              <p class="widget-box-title" style="color: forestgreen; float: right">${msg_success_account}</p>
            </c:if>
            <!-- /WIDGET BOX TITLE -->

            <!-- WIDGET BOX CONTENT -->
            <div class="widget-box-content">
              <!-- FORM -->
              <form class="form" action="account" id="account" method="post">
                <!-- FORM ROW -->
                <div class="form-row split">
                  <!-- FORM ITEM -->
                  <div class="form-item">
                    <!-- FORM INPUT -->
                    <div class="form-input small active">
                      <label for="prenom">Prenom</label>
                      <c:if test="${not empty current_user}">
                        <input type="text" id="prenom" name="prenom" value="${current_user.prenom}">
                      </c:if>
                      <c:if test="${empty current_user}">
                        <input type="text" id="prenom" name="prenom" value="Prenom">
                      </c:if>
                    </div>
                    <!-- /FORM INPUT -->
                  </div>
                  <!-- /FORM ITEM -->

                  <!-- FORM ITEM -->
                  <div class="form-item">
                    <!-- FORM INPUT -->
                    <div class="form-input small active">
                      <label for="login">Login</label>
                      <c:if test="${not empty current_user}">
                        <input type="text" id="login" name="login" value="${current_user.login}">
                      </c:if>
                      <c:if test="${empty current_user}">
                        <input type="text" id="login" name="login" value="Login">
                      </c:if>
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
                    <div class="form-input small active">
                      <label for="nom">Nom</label>
                      <c:if test="${not empty current_user}">
                        <input type="text" id="nom" name="nom" value="${current_user.nom}">
                      </c:if>
                      <c:if test="${empty current_user}">
                        <input type="text" id="nom" name="nom" value="Nom">
                      </c:if>
                    </div>
                    <!-- /FORM INPUT -->
                  </div>
                  <!-- /FORM ITEM -->

                  <!-- FORM ITEM -->
                  <div class="form-row split">
                    <!-- FORM ITEM -->
                    <div class="form-item">
                      <!-- FORM INPUT -->
                      <div class="form-input small active">
                        <label for="birthdate">Date de naissance</label>
                        <c:if test="${not empty current_user}">
                          <input type="text" id="birthdate" name="birthdate" value="${current_user.birthdate}">
                        </c:if>
                        <c:if test="${empty current_user}">
                          <input type="text" id="birthdate" name="birthdate" value="YYYY-MM-dd">
                        </c:if>
                      </div>
                      <!-- /FORM INPUT -->
                    </div>
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
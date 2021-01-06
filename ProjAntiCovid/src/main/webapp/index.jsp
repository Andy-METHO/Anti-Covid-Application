<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- bootstrap 4.3.1 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/bootstrap.min.css">
  <!-- styles -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.min.css">
  <!-- favicon -->
  <link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
  <title>AntiCovid| Home</title>
</head>
<body>
  <!-- LANDING -->
  <div class="landing">
    <!-- LANDING DECORATION -->
    <div class="landing-decoration"></div>
    <!-- /LANDING DECORATION -->

    <!-- LANDING INFO -->
    <div class="landing-info">
      <!-- LOGO -->
      <div class="logo">
        <!-- ICON LOGO VIKINGER -->
        <svg class="icon-logo-vikinger">
          <use xlink:href="#svg-logo-vikinger"></use>
        </svg>
        <!-- /ICON LOGO VIKINGER -->
      </div>
      <!-- /LOGO -->

      <!-- LANDING INFO PRETITLE -->
      <h2 class="landing-info-pretitle">Bienvenue sur</h2>
      <!-- /LANDING INFO PRETITLE -->

      <!-- LANDING INFO TITLE -->
      <h1 class="landing-info-title">AntiCovid</h1>
      <!-- /LANDING INFO TITLE -->

      <!-- LANDING INFO TEXT -->
      <p class="landing-info-text">L'application qui vous previent vous et vos amis lors de vos sorties risquees</p>
      <!-- /LANDING INFO TEXT -->

      <!-- TAB SWITCH -->
      <div class="tab-switch">
        <!-- TAB SWITCH BUTTON -->
        <p class="tab-switch-button login-register-form-trigger">Login</p>
        <!-- /TAB SWITCH BUTTON -->

        <!-- TAB SWITCH BUTTON -->
        <p class="tab-switch-button login-register-form-trigger">Register</p>
        <!-- /TAB SWITCH BUTTON -->
      </div>
      <!-- /TAB SWITCH -->
    </div>
    <!-- /LANDING INFO -->

    <!-- LANDING FORM -->
    <div class="landing-form">
      <!-- FORM BOX -->
      <div class="form-box login-register-form-element">
        <!-- FORM BOX DECORATION -->
        <img class="form-box-decoration overflowing" src="${pageContext.request.contextPath}/resources/img/landing/rocket.png" alt="rocket">
        <!-- /FORM BOX DECORATION -->

        <!-- FORM BOX TITLE -->
        <h2 class="form-box-title">Account Login</h2>
        <!-- /FORM BOX TITLE -->

        <!-- FORM BOX TITLE -->
        <c:if test="${not empty msg_err_login}">
          <p class="landing-info-text" style="color:darkred">${msg_err_login}</p>
        </c:if>

        <!-- /FORM BOX TITLE -->
    
        <!-- FORM -->
        <form class="form" method="post" action="login">
          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- FORM INPUT -->
              <div class="form-input">
                <label for="login-username">Login</label>
                <input type="text" id="login-username" name="login">
              </div>
              <!-- /FORM INPUT -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->
    
          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- FORM INPUT -->
              <div class="form-input">
                <label for="login-password">Password</label>
                <input type="password" id="login-password" name="password">
              </div>
              <!-- /FORM INPUT -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->
    
          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- BUTTON -->
              <button class="button medium secondary">Login to your Account!</button>
              <!-- /BUTTON -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->
        </form>
        <!-- /FORM -->
      </div>
      <!-- /FORM BOX -->
    
      <!-- FORM BOX -->
      <div class="form-box login-register-form-element">
        <!-- FORM BOX DECORATION -->
        <img class="form-box-decoration" src="${pageContext.request.contextPath}/resources/img/landing/rocket.png" alt="rocket">
        <!-- /FORM BOX DECORATION -->

        <!-- FORM BOX TITLE -->
        <h2 class="form-box-title">Create your Account!</h2>
        <!-- /FORM BOX TITLE -->


        <c:if test="${not empty msg_err_register}">
          <p class="landing-info-text" style="color:darkred">${msg_err_register}</p>
        </c:if>

        <!-- FORM -->
        <form class="form" method="post" action="register">
          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- FORM INPUT -->
              <div class="form-input">
                <label for="register-username">Login</label>
                <input type="text" id="register-username" name="login">
              </div>
              <!-- /FORM INPUT -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->
    
          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- FORM INPUT -->
              <div class="form-input">
                <label for="register-password">Password</label>
                <input type="password" id="register-password" name="password">
              </div>
              <!-- /FORM INPUT -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->

          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- FORM INPUT -->
              <div class="form-input">
                <label for="login-pseudo">Pseudo</label>
                <input type="text" id="login-pseudo" name="pseudo">
              </div>
              <!-- /FORM INPUT -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->
    
          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- FORM INPUT -->
              <div class="form-input">
                <label for="register-firstname">Prenom</label>
                <input type="text" id="register-firstname" name="prenom">
              </div>
              <!-- /FORM INPUT -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->

          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- FORM INPUT -->
              <div class="form-input">
                <label for="register-name">Nom</label>
                <input type="text" id="register-name" name="nom">
              </div>
              <!-- /FORM INPUT -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->

          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- FORM INPUT -->
              <div class="form-input">
                <label for="register-birthdate">Date de naissance dd/MM/YYYY</label>
                <input type="text" id="register-birthdate" name="birthdate">
              </div>
              <!-- /FORM INPUT -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->
    
          <!-- FORM ROW -->
          <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
              <!-- BUTTON -->
              <button class="button medium primary">Register Now!</button>
              <!-- /BUTTON -->
            </div>
            <!-- /FORM ITEM -->
          </div>
          <!-- /FORM ROW -->
        </form>
        <!-- /FORM -->
      </div>
      <!-- /FORM BOX -->
    </div>
    <!-- /LANDING FORM -->
  </div>
  <!-- /LANDING -->

<!-- app -->
<script src="${pageContext.request.contextPath}/resources/js/utils/app.js"></script>
<!-- XM_Plugins -->
<script src="${pageContext.request.contextPath}/resources/js/vendor/xm_plugins.min.js"></script>
<!-- form.utils -->
<script src="${pageContext.request.contextPath}/resources/js/form/form.utils.js"></script>
<!-- landing.tabs -->
<script src="${pageContext.request.contextPath}/resources/js/landing/landing.tabs.js"></script>
<!-- SVG icons -->
<script src="${pageContext.request.contextPath}/resources/js/utils/svg-loader.js"></script>
</body>
</html>
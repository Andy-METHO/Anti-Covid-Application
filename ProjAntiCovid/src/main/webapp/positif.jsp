<%@ page import="Beans.*" %>
<%@ page import="Servlets.FriendsServlet" %>
<jsp:useBean id="friendslist" class="Beans.Friends" scope="session" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <%@include file="WEB-INF/stylesheets.jsp" %>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/friends.css">
  <title>Anticovid | Je suis Positif</title>
</head>
<body>

  <!-- PAGE LOADER -->
  <%@include file="WEB-INF/page-loader.jsp" %>
  <!-- /PAGE LOADER -->

  <!-- NAVIGATION WIDGET -->
  <%@include file="WEB-INF/nav-widget.jsp" %>
  <!-- /NAVIGATION WIDGET -->

  <!-- CHAT WIDGET -->
  <%@include file="WEB-INF/chat-widget.jsp" %>
  <!-- /CHAT WIDGET -->

  <!-- HEADER -->
  <%@include file="WEB-INF/header.jsp" %>
  <!-- /HEADER -->

  <!-- FLOATY BAR -->
  <%@include file="WEB-INF/floaty-bar.jsp" %>
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
          <p class="calendar-events-preview-title">Etes vous sur d'etre infecte par le covid-19 ?</p>
          <form action="user_servlet" method="POST">
              <table>
                  <tr>
                      <td><div class="menu-item-link text-tooltip-tfr"><button name="positivite" value="positif">OUI</button></div></td>
                      <td><div class="menu-item-link text-tooltip-tfr"><button name="positivite" value="annuler">NON</button></div></td>
                  </tr>
              </table>
          </form>
          <p class="calendar-events-preview-title">Une notification sera envoyee a tous vos amis lors de la validation</p>
        </div>
        <!-- /CALENDAR EVENTS PREVIEW -->
      </div>
    <!-- /CALENDAR WIDGET -->

    </div>
  </div>

  <%@include file="WEB-INF/scripts.jsp" %>
</body>
</html>
<%@ page import="Beans.*" %>
<%@ page import="Servlets.FriendsServlet" %>
<jsp:useBean id="admin" class="Beans.Admin" scope="session" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@include file="WEB-INF/stylesheets.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/friends.css">

    <title>Anticovid | Admin</title>
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
    <div class="section-header-info">
        <!-- SECTION TITLE -->
        <h2 class="section-title">Utilisateurs</h2>
        <!-- /SECTION TITLE -->
      </div>
    </div>
    <div class="calendar-widget">
            <!-- CALENDAR EVENTS PREVIEW -->
      <div class="calendar-events-preview-title">
      <div class="calendar-events-preview">
	      		<table>
	      			<tr>
	      				 <th><p class="calendar-events-preview-title">Pseudo</th>
	      				 <th><p class="calendar-events-preview-title">Nom</p></th>
	      				 <th><p class="calendar-events-preview-title">Prenom</p></th>
	      				 <th><p class="calendar-events-preview-title">Statut</p></th>
	      				 <th><p class="calendar-events-preview-title">Supprimer</p></th>
	      				 <th><p class="calendar-events-preview-title">Modifier Statut</p></th>
	      			</tr>
				     	<c:forEach var="i" begin="0" end="${admin.getUsersSize()-1}" step="1">
				     	<tr>
				            <td><p class="calendar-events-preview-title">${admin.getUsers().get(i).getPseudo()}</p></td>
				            <td><p class="calendar-events-preview-title">${admin.getUsers().get(i).getNom()}</p></td>
				            <td><p class="calendar-events-preview-title">${admin.getUsers().get(i).getPrenom()}</p></td>
				            <td>
				            	<c:choose>
									<c:when test="${admin.getUsers().get(i).getStatut()}"><p class="calendar-events-preview-title">Infected</p></c:when>
									<c:otherwise><p class="calendar-events-preview-title">Not Infected</p></c:otherwise>
								</c:choose>
				            </td>
				            <td>
	      				 		<form action="user_servlet" method="POST">
								    <button name="delete_user" value="${admin.getUsers().get(i).getId()}">Retirer</button>
								</form>
							</td>
							
							
				            <td>
				            	<c:choose>
									<c:when test="${admin.getUsers().get(i).getStatut()}">
			      				 		<form action="user_servlet" method="POST">
										    <button name="positivite" value="${admin.getUsers().get(i).getId()}">Guérir</button>
										</form>
									</c:when>
									<c:otherwise>
			      				 		<form action="user_servlet" method="POST">
										    <button name="positivite" value="${admin.getUsers().get(i).getId()}">Covided</button>
										</form>
									</c:otherwise>
								</c:choose>
				            </td>
				        </tr>
				      	</c:forEach>			      	
		      	</table>
	      </div>    
      <!-- /CALENDAR EVENTS PREVIEW -->
    </div>
    <!-- /CALENDAR WIDGET -->
    
  </div>
  
  
  
  
  
  
  
  
  
  <div class="section-header">
    <div class="section-header-info">
        <!-- SECTION TITLE -->
        <h2 class="section-title">Events</h2>
        <!-- /SECTION TITLE -->
      </div>
    </div>
    
    <div class="section-filters-bar v6">
      <!-- SECTION FILTERS BAR ACTIONS -->
      <div class="section-filters-bar-actions">
        <!-- FORM -->
        <form class="form">
          <!-- FORM ITEM -->
          <div class="form-item split">
            <!-- FORM INPUT -->
            <div class="form-input small">
            </div>
            <!-- /FORM INPUT -->
  
          </div>
          <!-- /FORM ITEM -->
        </form>
        <!-- /FORM -->
      </div>
      <!-- /SECTION FILTERS BAR ACTIONS -->
      
      <!-- SECTION FILTERS BAR ACTIONS -->
      <div class="section-filters-bar-actions">
        <!-- BUTTON -->
        <p class="button secondary popup-event-creation-trigger">+ Ajouter un Event</p>
        <!-- /BUTTON -->
      </div>
      <!-- /SECTION FILTERS BAR ACTIONS -->
      
  </div> 
    <div class="calendar-widget">
            <!-- CALENDAR EVENTS PREVIEW -->
      <div class="calendar-events-preview-title">
      <div class="calendar-events-preview">
	      		<table>
	      			<tr>
	      				 <th><p class="calendar-events-preview-title">Date</th>
	      				 <th><p class="calendar-events-preview-title">Event</p></th>
	      				 <th><p class="calendar-events-preview-title">Supprimer</p></th>
	      			</tr>
				     	<c:forEach var="i" begin="0" end="${admin.getEventsSize()-1}" step="1">
				     	<tr>
				            <td><p class="calendar-events-preview-title">${admin.getEvents().get(i).getDate()}</p></td>
				            <td><p class="calendar-events-preview-title">${admin.getEvents().get(i).getDescription()}</p></td>
				            <td>
	      				 		<form action="user_servlet" method="POST">
								    <button name="delete_event" value="${admin.getEvents().get(i).getId()}">Retirer</button>
								</form>
							</td>
				        </tr>
				      	</c:forEach>	      	
		      	</table>
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
    <p class="popup-box-title">+ Ajouter un Event</p>
    <!-- /POPUP BOX TITLE -->

    <!-- FORM -->
    <form class="form" action="user_servlet" method ="POST">
      <!-- FORM ROW -->

      <!-- FORM ROW -->
      <div class="form-row">
        <!-- FORM ITEM -->
        <div class="form-item">
          <!-- FORM INPUT -->
          <div class="form-input small">
            <label for="description">Description</label>
            <input type="text" id="description" name="description">
            <br/><br/>
        	<input class="popup-box-action full button secondary" type = "submit" value = "New_Event" />
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
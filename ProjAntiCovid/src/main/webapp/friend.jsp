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

    <title>Anticovid | Amis</title>
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
        <h2 class="section-title">Amis</h2>
        <!-- /SECTION TITLE -->
      </div>
      <!-- /SECTION HEADER INFO -->
      <!-- SECTION FILTERS BAR -->
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
              <label for="events-search">Rechercher Amis</label>
              <input type="text" id="events-search" name="events_search">
            </div>
            <!-- /FORM INPUT -->
  
            <!-- BUTTON -->
            <button class="button primary">
              <!-- ICON MAGNIFYING GLASS -->
              <svg class="icon-magnifying-glass">
                <use xlink:href="#svg-magnifying-glass"></use>
              </svg>
              <!-- /ICON MAGNIFYING GLASS -->
            </button>
            <!-- /BUTTON -->
          </div>
          <!-- /FORM ITEM -->
        </form>
        <!-- /FORM -->
      </div>
      <!-- /SECTION FILTERS BAR ACTIONS -->
      
      <!-- SECTION FILTERS BAR ACTIONS -->
      <div class="section-filters-bar-actions">
        <!-- BUTTON -->
        <p class="button secondary popup-event-creation-trigger">+ Ajouter un Ami</p>
        <!-- /BUTTON -->
      </div>
      <!-- /SECTION FILTERS BAR ACTIONS -->
      
  </div> 
  	<div class="section-header">
    <div class="section-header-info">
        <!-- SECTION TITLE -->
        <h2 class="section-title">Mes Amis</h2>
        <!-- /SECTION TITLE -->
      </div>
    </div>
    <div class="calendar-widget">
            <!-- CALENDAR EVENTS PREVIEW -->
      <div class="calendar-events-preview-title">
      <c:choose>
      <c:when test="${friendslist.hasFriend()}">
      <div class="calendar-events-preview">
	      		<table>
	      			<tr>
	      				 <th><p class="calendar-events-preview-title">Pseudo</th>
	      				 <th><p class="calendar-events-preview-title">Statut</p></th>
	      				 <th><p class="calendar-events-preview-title">Supprimer</p></th>
	      			</tr>
				      	<c:forEach var="i" begin="0" end="${friendslist.getFriendsSize()-1}" step="1">
				     	<tr>
				            <td><p class="calendar-events-preview-title">${friendslist.getFriends(i).getPseudo()}</p></td>
				            <td>
				            	<c:choose>
									<c:when test="${friendslist.getFriends(i).getStatut()}"><p class="calendar-events-preview-title">Infected</p></c:when>
									<c:otherwise><p class="calendar-events-preview-title">Not Infected</p></c:otherwise>
								</c:choose>
				            </td>
				            <td>
	      				 		<form action="friends" method="POST">
								    <button name="deletefriend" value="${friendslist.getFriends(i).getPseudo()}">Retirer</button>
								</form>
							</td>
				        </tr>
				      	</c:forEach>			      	
		      	</table>
	      </div>    
      </c:when>
      <c:otherwise>
	      
	  </c:otherwise>
	  </c:choose>
      <!-- /CALENDAR EVENTS PREVIEW -->
    </div>
    <!-- /CALENDAR WIDGET -->
    
  </div>
  
  
  
  
  
  
  
  
  
  <div class="section-header">
    <div class="section-header-info">
        <!-- SECTION TITLE -->
        <h2 class="section-title">Mes demandes d'amis</h2>
        <!-- /SECTION TITLE -->
      </div>
    </div>
    <div class="calendar-widget">
            <!-- CALENDAR EVENTS PREVIEW -->
      <div class="calendar-events-preview-title">
      <c:choose>
      <c:when test="${friendslist.hasRequest_received()}">
      <div class="calendar-events-preview">
	      		<table>
	      			<tr>
	      				 <th><p class="calendar-events-preview-title">Pseudo</th>
	      				 <th><p class="calendar-events-preview-title">Statut</p></th>
	      				 <th><p class="calendar-events-preview-title">Ajouter</p></th>
	      				 <th><p class="calendar-events-preview-title">Supprimer</p></th>
	      			</tr>
				      	<c:forEach var="i" begin="0" end="${friendslist.getRequest_receivedSize()-1}" step="1">
				     	<tr>
				            <td><p class="calendar-events-preview-title">${friendslist.getRequest_received(i).getPseudo()}</p></td>
				            <td>
				            	<c:choose>
									<c:when test="${friendslist.getRequest_received(i).getStatut()}"><p class="calendar-events-preview-title">Infected</p></c:when>
									<c:otherwise><p class="calendar-events-preview-title">Not Infected</p></c:otherwise>
								</c:choose>
				            </td>
				            <td>
	      				 		<form action="friends" method="POST">
								    <button name="addRequest_received" value="${friendslist.getRequest_received(i).getPseudo()}">OUI</button>
								</form>
							</td>
				            <td>
	      				 		<form action="friends" method="POST">
								    <button name="deleteRequest_received" value="${friendslist.getRequest_received(i).getPseudo()}">NON</button>
								</form>
							</td>
				        </tr>
				      	</c:forEach>			      	
		      	</table>
	      </div>    
      </c:when>
      <c:otherwise>
	      
	  </c:otherwise>
	  </c:choose>
      <!-- /CALENDAR EVENTS PREVIEW -->
    </div>
    <!-- /CALENDAR WIDGET -->
  
  </div>
  
  
  
  
  
  <div class="section-header">
    <div class="section-header-info">
        <!-- SECTION TITLE -->
        <h2 class="section-title">Requetes envoyees</h2>
        <!-- /SECTION TITLE -->
      </div>
    </div>
    <div class="calendar-widget">
            <!-- CALENDAR EVENTS PREVIEW -->
      <div class="calendar-events-preview-title">
      <c:choose>
      <c:when test="${friendslist.hasRequest_send()}">
      <div class="calendar-events-preview">
	      		<table>
	      			<tr>
	      				 <th><p class="calendar-events-preview-title">Pseudo</th>
	      				 <th><p class="calendar-events-preview-title">Statut</p></th>
	      				 <th><p class="calendar-events-preview-title">Supprimer</p></th>
	      			</tr>
				      	<c:forEach var="i" begin="0" end="${friendslist.getRequest_sendSize()-1}" step="1">
				     	<tr>
				            <td><p class="calendar-events-preview-title">${friendslist.getRequest_send(i).getPseudo()}</p></td>
				            <td>
				            	<c:choose>
									<c:when test="${friendslist.getRequest_send(i).getStatut()}"><p class="calendar-events-preview-title">Infected</p></c:when>
									<c:otherwise><p class="calendar-events-preview-title">Not Infected</p></c:otherwise>
								</c:choose>
				            </td>
				            <td>
	      				 		<form action="friends" method="POST">
								    <button name="deleteRequest_send" value="${friendslist.getRequest_send(i).getPseudo()}">Retirer</button>
								</form>
							</td>
				        </tr>
				      	</c:forEach>			      	
		      	</table>
	      </div>    
      </c:when>
      <c:otherwise>
	      
	  </c:otherwise>
	  </c:choose>
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
            <label for="pseudo">Pseudo</label>
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

  </div>
  <!-- /POPUP EVENT -->

  <%@include file="WEB-INF/scripts.jsp" %>
</body>
</html>
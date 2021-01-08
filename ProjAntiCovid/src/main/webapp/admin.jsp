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
                    <c:forEach var="user" items="${requestScope.users}">
                        <tr>
                            <td><p class="calendar-events-preview-title">${user.pseudo}</p></td>
                            <td><p class="calendar-events-preview-title">${user.nom}</p></td>
                            <td><p class="calendar-events-preview-title">${user.prenom}</p></td>
                            <td>
                                <c:choose>
                                    <c:when test="${user.statut}"><p
                                            class="calendar-events-preview-title">Infected</p></c:when>
                                    <c:otherwise><p class="calendar-events-preview-title">Not Infected</p></c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <form action="admin" method="POST">
                                    <button name="delete_user" value="${user.id}">Retirer
                                    </button>
                                </form>
                            </td>


                            <td>
                                <c:choose>
                                    <c:when test="${user.statut}">
                                        <form action="admin" method="POST">
                                            <button name="positivite" value="${user.id}">
                                                Guerir
                                            </button>
                                        </form>
                                    </c:when>
                                    <c:otherwise>
                                        <form action="admin" method="POST">
                                            <button name="positivite" value="${user.id}">
                                                Covided
                                            </button>
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
                        <th><p class="calendar-events-preview-title">Heure debut</p></th>
                        <th><p class="calendar-events-preview-title">Heure fin</p></th>
                        <th><p class="calendar-events-preview-title">Lieu</p></th>
                        <th><p class="calendar-events-preview-title">Event</p></th>
                        <th><p class="calendar-events-preview-title">User</p></th>
                        <th><p class="calendar-events-preview-title">Supprimer</p></th>
                    </tr>
                    <c:forEach var="event" items="${requestScope.events}">
                        <tr>
                            <td><p class="calendar-events-preview-title">${event.date}</p></td>
                            <td><p class="calendar-events-preview-title">${event.start_hour}</p>
                            </td>
                            <td><p class="calendar-events-preview-title">${event.end_hour}</p>
                            </td>
                            <td><p class="calendar-events-preview-title">${event.lieu.nom}</p></td>
                            <td>
                                <p class="calendar-events-preview-title">${event.description}</p>
                            </td>
                            <td>
                                <p class="calendar-events-preview-title">${event.user.pseudo}</p>
                            </td>
                            <td>
                                <form action="admin" method="POST">
                                    <button name="delete_event" value="${event.id}">Retirer
                                    </button>
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

    <div class="section-header">
        <div class="section-header-info">
            <!-- SECTION TITLE -->
            <h2 class="section-title">Lieux</h2>
            <!-- /SECTION TITLE -->
        </div>
    </div>
    <div class="section-filters-bar v6">
        <!-- SECTION FILTERS BAR ACTIONS -->
        <div class="section-filters-bar-actions"></div>
        <!-- /SECTION FILTERS BAR ACTIONS -->

        <!-- SECTION FILTERS BAR ACTIONS -->
        <div class="section-filters-bar-actions">
            <!-- BUTTON -->
            <a href="location"><p class="button secondary">+ Ajouter un Lieu</p></a>
            <!-- /BUTTON -->
        </div>
        <!-- /SECTION FILTERS BAR ACTIONS -->

    </div>
    <div class="calendar-widget">
        <!-- CALENDAR EVENTS PREVIEW -->
        <div class="calendar-events-preview-title">
            <div class="calendar-events-preview">
                <table>
                    <tr>d
                        <th><p class="calendar-events-preview-title">Nom</th>
                        <th><p class="calendar-events-preview-title">Adresse</p></th>
                        <th><p class="calendar-events-preview-title">Longitude</p></th>
                        <th><p class="calendar-events-preview-title">Latitude</p></th>
                        <th><p class="calendar-events-preview-title">Supprimer</p></th>
                    </tr>
                    <c:forEach var="location" items="${requestScope.locations}">
                        <tr>
                            <td><p class="calendar-events-preview-title">${location.nom}</p></td>
                            <td><p class="calendar-events-preview-title">${location.adresse}</p>
                            </td>
                            <td><p class="calendar-events-preview-title">${location.longitude}</p>
                            </td>
                            <td><p class="calendar-events-preview-title">${location.latitude}</p></td>
                            <td>
                                <form action="admin" method="POST">
                                    <button name="delete_location" value="${location.id}">Retirer
                                    </button>
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
    <form class="form" action="event" method="post">

        <!-- FORM ROW -->
        <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
                <!-- FORM SELECT -->
                <div class="form-select">
                    <label for="event-location">Event Location</label>
                    <select id="event-location" name="event_location">
                        <c:forEach items="${requestScope.locations}" var="location">
                            <option value="${location.id}">${location.nom}</option>
                        </c:forEach>

                    </select>
                    <!-- FORM SELECT ICON -->
                    <svg class="form-select-icon icon-small-arrow">
                        <use xlink:href="#svg-small-arrow"></use>
                    </svg>
                    <!-- /FORM SELECT ICON -->
                </div>
                <!-- /FORM SELECT -->
            </div>
            <!-- /FORM ITEM -->
        </div>
        <!-- /FORM ROW -->

        <!-- FORM ROW -->
        <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
                <!-- FORM INPUT DECORATED -->
                <div class="form-input-decorated">
                    <!-- FORM INPUT -->
                    <div class="form-input small">
                        <label for="event-date">Event Date dd/MM/YYYY</label>
                        <input type="text" id="event-date" name="event_date">
                    </div>
                    <!-- /FORM INPUT -->

                    <!-- FORM INPUT ICON -->
                    <svg class="form-input-icon icon-events">
                        <use xlink:href="#svg-events"></use>
                    </svg>
                    <!-- /FORM INPUT ICON -->
                </div>
                <!-- /FORM INPUT DECORATED -->
            </div>
            <!-- /FORM ITEM -->
        </div>
        <!-- /FORM ROW -->

        <!-- FORM ROW -->
        <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item split join-on-mobile medium">
                <!-- FORM SELECT -->
                <div class="form-select">
                    <label for="event-time-start">Start Time HH:mm</label>
                    <input type="text" id="event-time-start" name="event_start">
                    <!-- FORM SELECT ICON -->
                    <svg class="form-select-icon icon-small-arrow">
                        <use xlink:href="#svg-clock"></use>
                    </svg>
                    <!-- /FORM SELECT ICON -->
                </div>
                <!-- /FORM SELECT -->

                <!-- FORM SELECT -->
                <div class="form-select">
                    <label for="event-time-end">End Time HH:mm</label>
                    <input type="text" id="event-time-end" name="event_end">
                    <!-- FORM SELECT ICON -->
                    <svg class="form-select-icon icon-small-arrow">
                        <use xlink:href="#svg-clock"></use>
                    </svg>
                    <!-- /FORM SELECT ICON -->
                </div>
                <!-- /FORM SELECT -->
            </div>
            <!-- /FORM ITEM -->
        </div>
        <!-- /FORM ROW -->

        <!-- FORM ROW -->
        <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
                <!-- FORM INPUT -->
                <div class="form-input small">
                    <label for="event-description">Event Description</label>
                    <textarea id="event-description" name="event_description"></textarea>
                </div>
                <!-- /FORM INPUT -->
            </div>
            <!-- /FORM ITEM -->
        </div>
        <!-- /FORM ROW -->

        <!-- POPUP BOX ACTIONS -->
        <div class="popup-box-actions medium void">
            <!-- POPUP BOX ACTION -->
            <button type="submit" class="popup-box-action full button secondary">Create Event!</button>
            <!-- /POPUP BOX ACTION -->
        </div>
        <!-- /POPUP BOX ACTIONS -->
    </form>
    <!-- /FORM -->
</div>
<!-- /POPUP BOX -->

<%@include file="WEB-INF/scripts.jsp" %>
</body>
</html>
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
            <p class="button secondary popup-event-creation-trigger">+ Ajouter un Lieu</p>
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
                        <th><p class="calendar-events-preview-title">Nom</th>
                        <th><p class="calendar-events-preview-title">Adresse</p></th>
                        <th><p class="calendar-events-preview-title">Longitude</p></th>
                        <th><p class="calendar-events-preview-title">Latitude</p></th>
                    </tr>
                    <c:forEach var="location" items="${requestScope.locations}">
                        <tr>
                            <td><p class="calendar-events-preview-title">${location.nom}</p></td>
                            <td><p class="calendar-events-preview-title">${location.adresse}</p>
                            </td>
                            <td><p class="calendar-events-preview-title">${location.longitude}</p>
                            </td>
                            <td><p class="calendar-events-preview-title">${location.latitude}</p></td>
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
    <p class="popup-box-title">+ Ajouter un Lieu</p>
    <!-- /POPUP BOX TITLE -->

    <!-- FORM -->
    <form class="form" action="location" method="post">

        <!-- FORM ROW -->
        <div class="form-row">
            <!-- FORM ITEM -->
            <div class="form-item">
                <!-- FORM INPUT DECORATED -->
                <div class="form-input-decorated">
                    <!-- FORM INPUT -->
                    <div class="form-input small">
                        <label for="location_name">Location Name</label>
                        <input type="text" id="location_name" name="location_name">
                    </div>
                    <!-- /FORM INPUT -->
                </div>
                <!-- /FORM INPUT DECORATED -->
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
                        <label for="location_address">Location Address</label>
                        <input type="text" id="location_address" name="location_address">
                    </div>
                    <!-- /FORM INPUT -->
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
                    <label for="location_lat">Latitude</label>
                    <input type="text" id="location_lat" name="location_lat">
                    <!-- FORM SELECT ICON -->
                    <svg class="form-select-icon icon-small-arrow">
                        <use xlink:href="#svg-clock"></use>
                    </svg>
                    <!-- /FORM SELECT ICON -->
                </div>
                <!-- /FORM SELECT -->

                <!-- FORM SELECT -->
                <div class="form-select">
                    <label for="location_long">Longitude</label>
                    <input type="text" id="location_long" name="location_long">
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

        <!-- POPUP BOX ACTIONS -->
        <div class="popup-box-actions medium void">
            <!-- POPUP BOX ACTION -->
            <button type="submit" class="popup-box-action full button secondary">Create Location!</button>
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
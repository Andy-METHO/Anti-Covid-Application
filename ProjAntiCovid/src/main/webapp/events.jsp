<%@ page import="Beans.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <%@include file="WEB-INF/stylesheets.jsp" %>
  <title>Anticovid | Events</title>
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
  <%@include file="WEB-INF/header.jsp" %>>
  <!-- /HEADER -->

  <!-- FLOATY BAR -->
  <%@include file="WEB-INF/floaty-bar.jsp" %>>
  <!-- /FLOATY BAR -->

  <!-- CONTENT GRID -->
  <div class="content-grid">
    <!-- SECTION BANNER -->
    <div class="section-banner">
      <!-- SECTION BANNER ICON -->
      <img class="section-banner-icon" src="${pageContext.request.contextPath}/resources/img/banner/events-icon.png" alt="events-icon">
      <!-- /SECTION BANNER ICON -->
  
      <!-- SECTION BANNER TITLE -->
      <p class="section-banner-title">Events</p>
      <!-- /SECTION BANNER TITLE -->
  
      <!-- SECTION BANNER TEXT -->
      <p class="section-banner-text">Easily manage and create events or reminders!</p>
      <!-- /SECTION BANNER TEXT -->
    </div>
    <!-- /SECTION BANNER -->

    <!-- SECTION HEADER -->
    <div class="section-header">
      <!-- SECTION HEADER INFO -->
      <div class="section-header-info">
        <!-- SECTION PRETITLE -->
        <p class="section-pretitle">Get a quick look!</p>
        <!-- /SECTION PRETITLE -->
  
        <!-- SECTION TITLE -->
        <h2 class="section-title">Events Calendar</h2>
        <!-- /SECTION TITLE -->
      </div>
      <!-- /SECTION HEADER INFO -->
    </div>
    <!-- /SECTION HEADER -->

    <!-- SECTION FILTERS BAR -->
    <div class="section-filters-bar v6">
      <!-- SECTION FILTERS BAR ACTIONS -->
      <div class="section-filters-bar-actions">
        <!-- FORM -->
        <form class="form">
          <!-- FORM ITEM -->
          <div class="form-item split">
            <!-- FORM INPUT -->
            <div class="form-input small">
              <label for="events-search">Search Events</label>
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
        <p class="button secondary popup-event-creation-trigger">+ Add New Event</p>
        <!-- /BUTTON -->
      </div>
      <!-- /SECTION FILTERS BAR ACTIONS -->
    </div>
    <!-- /SECTION FILTERS BAR -->

    <!-- CALENDAR WIDGET -->
    <div class="calendar-widget">
      <!-- CALENDAR WIDGET HEADER -->
      <div class="calendar-widget-header">

        <!-- CALENDAR WIDGET HEADER ACTIONS -->
        <div class="calendar-widget-header-actions">
          <!-- VIEW ACTIONS -->
          <div class="view-actions">
            <!-- VIEW ACTION -->
            <a class="view-action text-tooltip-tft-medium active" href="events.html" data-title="Monthly">
              <!-- VIEW ACTION ICON -->
              <svg class="view-action-icon icon-events-monthly">
                <use xlink:href="#svg-events-monthly"></use>
              </svg>
              <!-- /VIEW ACTION ICON -->
            </a>
            <!-- /VIEW ACTION -->
    
            <!-- VIEW ACTION -->
            <a class="view-action text-tooltip-tft-medium" href="events-weekly.html" data-title="Weekly">
              <!-- VIEW ACTION ICON -->
              <svg class="view-action-icon icon-events-weekly">
                <use xlink:href="#svg-events-weekly"></use>
              </svg>
              <!-- /VIEW ACTION ICON -->
            </a>
            <!-- /VIEW ACTION -->
    
            <!-- VIEW ACTION -->
            <a class="view-action text-tooltip-tft-medium" href="events-daily.html" data-title="Daily">
              <!-- VIEW ACTION ICON -->
              <svg class="view-action-icon icon-events-daily">
                <use xlink:href="#svg-events-daily"></use>
              </svg>
              <!-- /VIEW ACTION ICON -->
            </a>
            <!-- /VIEW ACTION -->
          </div>
          <!-- /VIEW ACTIONS -->
        </div>
        <!-- /CALENDAR WIDGET HEADER ACTIONS -->
      </div>
      <!-- /CALENDAR WIDGET HEADER -->

      <!-- CALENDAR EVENTS PREVIEW -->
      <div class="calendar-events-preview">
        <!-- CALENDAR EVENTS PREVIEW TITLE -->
        <p class="calendar-events-preview-title">Monday, August 13th - 2019</p>
        <!-- /CALENDAR EVENTS PREVIEW TITLE -->
    
        <!-- CALENDAR EVENT PREVIEW LIST -->
        <div class="calendar-event-preview-list">
          <!-- CALENDAR EVENT PREVIEW -->
          <div class="calendar-event-preview secondary">
            <!-- CALENDAR EVENT PREVIEW START TIME -->
            <div class="calendar-event-preview-start-time">
              <!-- CALENDAR EVENT PREVIEW START TIME TITLE -->
              <p class="calendar-event-preview-start-time-title">8:30</p>
              <!-- /CALENDAR EVENT PREVIEW START TIME TITLE -->

              <!-- CALENDAR EVENT PREVIEW START TIME TEXT -->
              <p class="calendar-event-preview-start-time-text">AM</p>
              <!-- /CALENDAR EVENT PREVIEW START TIME TEXT -->
            </div>
            <!-- /CALENDAR EVENT PREVIEW START TIME -->

            <!-- CALENDAR EVENT PREVIEW INFO -->
            <div class="calendar-event-preview-info">
              <!-- CALENDAR EVENT PREVIEW TITLE -->
              <p class="calendar-event-preview-title popup-event-information-trigger">Breakfast with Neko</p>
              <!-- /CALENDAR EVENT PREVIEW TITLE -->

              <!-- CALENDAR EVENT PREVIEW TEXT -->
              <p class="calendar-event-preview-text">Hi Neko! I'm creating this event to invite you to have breakfast before work. Meet me at Coffebucks.</p>
              <!-- /CALENDAR EVENT PREVIEW TEXT -->

              <!-- CALENDAR EVENT PREVIEW TITLE -->
              <p class="calendar-event-preview-time"><span class="bold">8:30</span> AM</p>
              <!-- /CALENDAR EVENT PREVIEW TITLE -->
            </div>
            <!-- /CALENDAR EVENT PREVIEW INFO -->
          </div>
          <!-- /CALENDAR EVENT PREVIEW -->
        </div>
        <!-- /CALENDAR EVENT PREVIEW LIST -->
      </div>
      <!-- /CALENDAR EVENTS PREVIEW -->
    </div>
    <!-- /CALENDAR WIDGET -->
  </div>
  <!-- /CONTENT GRID -->

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
    <p class="popup-box-title">+ Add New Event</p>
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

  <%@include file="WEB-INF/scripts.jsp" %>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: joran
  Date: 02/01/2021
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <a class="action-list-item" href="friends">
                <!-- ACTION LIST ITEM ICON -->
                <svg class="action-list-item-icon icon-friend">
                    <use xlink:href="#svg-friend"></use>
                </svg>
                <!-- /ACTION LIST ITEM ICON -->
            </a>
            <!-- /ACTION LIST ITEM -->

            <!-- ACTION LIST ITEM -->
            <c:choose>
                <c:when test="${not empty unread && unread.size() !=0}">
                    <a class="action-list-item unread" href="notifications">
                <!-- ACTION LIST ITEM ICON -->
                <svg class="action-list-item-icon icon-notification">
                    <use xlink:href="#svg-notification"></use>
                </svg>
                <!-- /ACTION LIST ITEM ICON -->
            </a>
                </c:when>
                <c:otherwise>
                    <a class="action-list-item" href="notifications">
                    <!-- ACTION LIST ITEM ICON -->
                    <svg class="action-list-item-icon icon-notification">
                    <use xlink:href="#svg-notification"></use>
                    </svg>
                    <!-- /ACTION LIST ITEM ICON -->
                    </a>
                </c:otherwise>
            </c:choose>
            <!-- /ACTION LIST ITEM -->
        </div>
        <!-- /ACTION LIST -->

        <!-- ACTION ITEM WRAP -->
        <a class="action-item-wrap" href="account">
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

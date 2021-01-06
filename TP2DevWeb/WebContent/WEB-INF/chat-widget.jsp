<%--
  Created by IntelliJ IDEA.
  User: joran
  Date: 02/01/2021
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside id="chat-widget-messages" class="chat-widget closed sidebar right">
    <!-- CHAT WIDGET MESSAGES -->
    <div class="chat-widget-messages" data-simplebar>
        <!-- CHAT WIDGET MESSAGE -->
        <div class="chat-widget-message">
            <!-- USER STATUS -->
            <div class="user-status">
                <!-- USER STATUS AVATAR -->
                <div class="user-status-avatar">
                    <!-- USER AVATAR -->
                    <div class="user-avatar small no-outline online">
                        <!-- USER AVATAR CONTENT -->
                        <div class="user-avatar-content">
                            <!-- HEXAGON -->
                            <div class="hexagon-image-30-32" data-src="img/avatar/03.jpg"></div>
                            <!-- /HEXAGON -->
                        </div>
                        <!-- /USER AVATAR CONTENT -->

                        <!-- USER AVATAR PROGRESS -->
                        <div class="user-avatar-progress">
                            <!-- HEXAGON -->
                            <div class="hexagon-progress-40-44"></div>
                            <!-- /HEXAGON -->
                        </div>
                        <!-- /USER AVATAR PROGRESS -->

                        <!-- USER AVATAR PROGRESS BORDER -->
                        <div class="user-avatar-progress-border">
                            <!-- HEXAGON -->
                            <div class="hexagon-border-40-44"></div>
                            <!-- /HEXAGON -->
                        </div>
                        <!-- /USER AVATAR PROGRESS BORDER -->

                    </div>
                    <!-- /USER AVATAR -->
                </div>
                <!-- /USER STATUS AVATAR -->

                <!-- USER STATUS TITLE -->
                <p class="user-status-title"><span class="bold">Nick Grissom</span></p>
                <!-- /USER STATUS TITLE -->

                <!-- USER STATUS TEXT -->
                <p class="user-status-text small">Can you stream the new game?</p>
                <!-- /USER STATUS TEXT -->

                <!-- USER STATUS TIMESTAMP -->
                <p class="user-status-timestamp floaty">2hrs</p>
                <!-- /USER STATUS TIMESTAMP -->
            </div>
            <!-- /USER STATUS -->
        </div>
        <!-- /CHAT WIDGET MESSAGE -->

    </div>
    <!-- /CHAT WIDGET MESSAGES -->

    <!-- CHAT WIDGET FORM -->
    <form class="chat-widget-form">
        <!-- INTERACTIVE INPUT -->
        <div class="interactive-input small">
            <input type="text" id="chat-widget-search" name="chat_widget_search" placeholder="Search Messages...">
            <!-- INTERACTIVE INPUT ICON WRAP -->
            <div class="interactive-input-icon-wrap">
                <!-- INTERACTIVE INPUT ICON -->
                <svg class="interactive-input-icon icon-magnifying-glass">
                    <use xlink:href="#svg-magnifying-glass"></use>
                </svg>
                <!-- /INTERACTIVE INPUT ICON -->
            </div>
            <!-- /INTERACTIVE INPUT ICON WRAP -->

            <!-- INTERACTIVE INPUT ACTION -->
            <div class="interactive-input-action">
                <!-- INTERACTIVE INPUT ACTION ICON -->
                <svg class="interactive-input-action-icon icon-cross-thin">
                    <use xlink:href="#svg-cross-thin"></use>
                </svg>
                <!-- /INTERACTIVE INPUT ACTION ICON -->
            </div>
            <!-- /INTERACTIVE INPUT ACTION -->
        </div>
        <!-- /INTERACTIVE INPUT -->
    </form>
    <!-- /CHAT WIDGET FORM -->

    <!-- CHAT WIDGET BUTTON -->
    <div class="chat-widget-button">
        <!-- CHAT WIDGET BUTTON ICON -->
        <div class="chat-widget-button-icon">
            <!-- BURGER ICON -->
            <div class="burger-icon">
                <!-- BURGER ICON BAR -->
                <div class="burger-icon-bar"></div>
                <!-- /BURGER ICON BAR -->

                <!-- BURGER ICON BAR -->
                <div class="burger-icon-bar"></div>
                <!-- /BURGER ICON BAR -->

                <!-- BURGER ICON BAR -->
                <div class="burger-icon-bar"></div>
                <!-- /BURGER ICON BAR -->
            </div>
            <!-- /BURGER ICON -->
        </div>
        <!-- /CHAT WIDGET BUTTON ICON -->

        <!-- CHAT WIDGET BUTTON TEXT -->
        <p class="chat-widget-button-text">Messages / Chat</p>
        <!-- /CHAT WIDGET BUTTON TEXT -->
    </div>
    <!-- /CHAT WIDGET BUTTON -->
</aside>
<aside id="chat-widget-message" class="chat-widget chat-widget-overlay hidden sidebar right">
    <!-- CHAT WIDGET HEADER -->
    <div class="chat-widget-header">
        <!-- CHAT WIDGET CLOSE BUTTON -->
        <div class="chat-widget-close-button">
            <!-- CHAT WIDGET CLOSE BUTTON ICON -->
            <svg class="chat-widget-close-button-icon icon-back-arrow">
                <use xlink:href="#svg-back-arrow"></use>
            </svg>
            <!-- CHAT WIDGET CLOSE BUTTON ICON -->
        </div>
        <!-- /CHAT WIDGET CLOSE BUTTON -->

        <!-- USER STATUS -->
        <div class="user-status">
            <!-- USER STATUS AVATAR -->
            <div class="user-status-avatar">
                <!-- USER AVATAR -->
                <div class="user-avatar small no-outline online">
                    <!-- USER AVATAR CONTENT -->
                    <div class="user-avatar-content">
                        <!-- HEXAGON -->
                        <div class="hexagon-image-30-32" data-src="${pageContext.request.contextPath}/resources/img/avatar/03.jpg"></div>
                        <!-- /HEXAGON -->
                    </div>
                    <!-- /USER AVATAR CONTENT -->

                    <!-- USER AVATAR PROGRESS -->
                    <div class="user-avatar-progress">
                        <!-- HEXAGON -->
                        <div class="hexagon-progress-40-44"></div>
                        <!-- /HEXAGON -->
                    </div>
                    <!-- /USER AVATAR PROGRESS -->

                    <!-- USER AVATAR PROGRESS BORDER -->
                    <div class="user-avatar-progress-border">
                        <!-- HEXAGON -->
                        <div class="hexagon-border-40-44"></div>
                        <!-- /HEXAGON -->
                    </div>
                    <!-- /USER AVATAR PROGRESS BORDER -->
                </div>
                <!-- /USER AVATAR -->
            </div>
            <!-- /USER STATUS AVATAR -->

            <!-- USER STATUS TITLE -->
            <p class="user-status-title"><span class="bold">Nick Grissom</span></p>
            <!-- /USER STATUS TITLE -->

            <!-- USER STATUS TAG -->
            <p class="user-status-tag online">Online</p>
            <!-- /USER STATUS TAG -->
        </div>
        <!-- /USER STATUS -->
    </div>
    <!-- /CHAT WIDGET HEADER -->

    <!-- CHAT WIDGET CONVERSATION -->
    <div class="chat-widget-conversation" data-simplebar>
        <!-- CHAT WIDGET SPEAKER -->
        <div class="chat-widget-speaker left">
            <!-- CHAT WIDGET SPEAKER AVATAR -->
            <div class="chat-widget-speaker-avatar">
                <!-- USER AVATAR -->
                <div class="user-avatar tiny no-border">
                    <!-- USER AVATAR CONTENT -->
                    <div class="user-avatar-content">
                        <!-- HEXAGON -->
                        <div class="hexagon-image-24-26" data-src="${pageContext.request.contextPath}/resources/img/avatar/03.jpg"></div>
                        <!-- /HEXAGON -->
                    </div>
                    <!-- /USER AVATAR CONTENT -->
                </div>
                <!-- /USER AVATAR -->
            </div>
            <!-- /CHAT WIDGET SPEAKER AVATAR -->

            <!-- CHAT WIDGET SPEAKER MESSAGE -->
            <p class="chat-widget-speaker-message">Hi Marina! It's been a long time!</p>
            <!-- /CHAT WIDGET SPEAKER MESSAGE -->

            <!-- CHAT WIDGET SPEAKER TIMESTAMP -->
            <p class="chat-widget-speaker-timestamp">Yesterday at 8:36PM</p>
            <!-- /CHAT WIDGET SPEAKER TIMESTAMP -->
        </div>
        <!-- /CHAT WIDGET SPEAKER -->

        <!-- CHAT WIDGET SPEAKER -->
        <div class="chat-widget-speaker right">
            <!-- CHAT WIDGET SPEAKER MESSAGE -->
            <p class="chat-widget-speaker-message">Hey Nick!</p>
            <!-- /CHAT WIDGET SPEAKER MESSAGE -->

            <!-- CHAT WIDGET SPEAKER MESSAGE -->
            <p class="chat-widget-speaker-message">You're right, it's been a really long time! I think the last time we saw was at Neko's party</p>
            <!-- /CHAT WIDGET SPEAKER MESSAGE -->

            <!-- CHAT WIDGET SPEAKER TIMESTAMP -->
            <p class="chat-widget-speaker-timestamp">10:05AM</p>
            <!-- /CHAT WIDGET SPEAKER TIMESTAMP -->
        </div>
        <!-- /CHAT WIDGET SPEAKER -->

        <!-- CHAT WIDGET SPEAKER -->
        <div class="chat-widget-speaker left">
            <!-- CHAT WIDGET SPEAKER AVATAR -->
            <div class="chat-widget-speaker-avatar">
                <!-- USER AVATAR -->
                <div class="user-avatar tiny no-border">
                    <!-- USER AVATAR CONTENT -->
                    <div class="user-avatar-content">
                        <!-- HEXAGON -->
                        <div class="hexagon-image-24-26" data-src="${pageContext.request.contextPath}/resources/img/avatar/03.jpg"></div>
                        <!-- /HEXAGON -->
                    </div>
                    <!-- /USER AVATAR CONTENT -->
                </div>
                <!-- /USER AVATAR -->
            </div>
            <!-- /CHAT WIDGET SPEAKER AVATAR -->

            <!-- CHAT WIDGET SPEAKER MESSAGE -->
            <p class="chat-widget-speaker-message">Yeah! I remember now! The stream launch party</p>
            <!-- /CHAT WIDGET SPEAKER MESSAGE -->

            <!-- CHAT WIDGET SPEAKER MESSAGE -->
            <p class="chat-widget-speaker-message">That reminds me that I wanted to ask you something</p>
            <!-- /CHAT WIDGET SPEAKER MESSAGE -->

            <!-- CHAT WIDGET SPEAKER MESSAGE -->
            <p class="chat-widget-speaker-message">Can you stream the new game?</p>
            <!-- /CHAT WIDGET SPEAKER MESSAGE -->
        </div>
        <!-- /CHAT WIDGET SPEAKER -->
    </div>
    <!-- /CHAT WIDGET CONVERSATION -->

    <!-- CHAT WIDGET FORM -->
    <form class="chat-widget-form">
        <!-- INTERACTIVE INPUT -->
        <div class="interactive-input small">
            <input type="text" id="chat-widget-message-text" name="chat_widget_message_text" placeholder="Write a message...">
            <!-- INTERACTIVE INPUT ICON WRAP -->
            <div class="interactive-input-icon-wrap">
                <!-- INTERACTIVE INPUT ICON -->
                <svg class="interactive-input-icon icon-send-message">
                    <use xlink:href="#svg-send-message"></use>
                </svg>
                <!-- /INTERACTIVE INPUT ICON -->
            </div>
            <!-- /INTERACTIVE INPUT ICON WRAP -->

            <!-- INTERACTIVE INPUT ACTION -->
            <div class="interactive-input-action">
                <!-- INTERACTIVE INPUT ACTION ICON -->
                <svg class="interactive-input-action-icon icon-cross-thin">
                    <use xlink:href="#svg-cross-thin"></use>
                </svg>
                <!-- /INTERACTIVE INPUT ACTION ICON -->
            </div>
            <!-- /INTERACTIVE INPUT ACTION -->
        </div>
        <!-- /INTERACTIVE INPUT -->
    </form>
    <!-- /CHAT WIDGET FORM -->
</aside>

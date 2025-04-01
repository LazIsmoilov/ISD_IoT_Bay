<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="uts.isd.model.User" %>

<!DOCTYPE html>
<html>
<head>
    <title>IoT Bay Dashboard</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <%@ include file="header.jsp" %>

</head>

<body>

<pref-header></pref-header>

<div class="content">
    <h1>Recommended IoT Devices</h1>

    <div class="device">
        <div class="device-card">
            <div>
                <h3>🔦 Smart Light Blubs</h3>
                <p>Brighten your home with customizable lighting that adapts to your schedule and preferences.</p>
            </div>
            <div class="device-actions">
                <a href="#" class="buttons">Details
                </a>

                <a href="#" class="add-to-cart"> 🛒Add to Cart
                </a>
            </div>
        </div>

        <div class="device-card">
            <div>
                <h3>📸 Security Camera</h3>
                <p>Protect your home with 4K resolution, night vision, and smart motion detection.</p>
            </div>
            <div class="device-actions">
                <a href="#" class="buttons">Details
                </a>

                <a href="#" class="add-to-cart"> 🛒Add to Cart
                </a>
            </div>
        </div>

        <div class="device-card">
            <div>
                <h3>🌡️ Smart Thermostat</h3>
                <p>Save energy with intelligent temperature control that learns your habits and preferences.</p>
            </div>
            <div class="device-actions">
                <a href="#" class="buttons">Details
                </a>

                <a href="#" class="add-to-cart"> 🛒Add to Cart
                </a>
            </div>
        </div>

        <div class="device-card">
            <div>
                <h3>🔐 Smart Door Lock</h3>
                <p>Secure your home with keyless entry and remote access.</p>
            </div>
            <div class="device-actions">
                <a href="#" class="buttons">Details
                </a>

                <a href="#" class="add-to-cart"> 🛒Add to Cart
                </a>
            </div>
        </div>
    </div>

    <br>
    <br>
    <br>

    <div class="device">
        <div class="device-card">
            <div>
                <h3>🎵 Smart Speaker</h3>
                <p>Play music, control smart devices, and get answers with voice commands.</p>
            </div>
            <div class="device-actions">
                <a href="#" class="buttons">Details
                </a>

                <a href="#" class="add-to-cart"> 🛒Add to Cart
                </a>
            </div>
        </div>

        <div class="device-card">
            <div>
                <h3>📺 Smart TV</h3>
                <p>Stream your favorite shows with built-in apps and voice control.</p>
            </div>
            <div class="device-actions">
                <a href="#" class="buttons">Details
                </a>

                <a href="#" class="add-to-cart"> 🛒Add to Cart
                </a>
            </div>
        </div>

        <div class="device-card">
            <div>
                <h3>🚗 Smart GPS Tracker</h3>
                <p>Keep track of your car or valuables with real-time location updates.</p>
            </div>
            <div class="device-actions">
                <a href="#" class="buttons">Details
                </a>

                <a href="#" class="add-to-cart"> 🛒Add to Cart
                </a>
            </div>
        </div>

        <div class="device-card">
            <div>
                <h3>💨 Smart Air Purifier</h3>
                <p>Improve air quality with automatic filtration based on pollution levels.</p>
            </div>
            <div class="device-actions">
                <a href="#" class="buttons">Details
                </a>

                <a href="#" class="add-to-cart"> 🛒Add to Cart
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>

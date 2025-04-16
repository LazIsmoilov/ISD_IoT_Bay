# ISD IoT Web App

## Overview
This project is a web application prototype for the ISD assignment. It demonstrates a simple IoT web application that includes user registration, login, dashboard navigation, profile editing, and logout functionalities. The application is implemented using Java (with JavaBeans), JSPs, and a basic test suite.

The core pages include:
- **Landing Page (index.jsp):** The entry point with navigation links to login and registration.
- **Login Page (login.jsp):** For registered users to authenticate using their email and password.
- **Registration Page (register.jsp):** For new users to create an account.
- **Welcome Page (welcome.jsp):** A transition page after successful login or registration.
- **Main/Dashboard Page (main.jsp):** Displays user-specific content once logged in.
- **Edit Page (edit.jsp):** Allows users to update their profile information.
- **Logout Page (logout.jsp):** Ends the user session and safely redirects to the landing page.
- **Header (header.jsp) & Style (style.css):** Ensures a consistent look and feel across pages.

User data is managed using a JavaBean (the `User` class), which is used throughout the JSP pages. There are a total of 5 Java classes (located under the `src/main/java` directory), including the `User` bean. A simple test suite is available under the `src/test` directory to ensure basic functionality.

## Prerequisites

- **Java:** JDK 8 or later.
- **Maven:** For building and managing dependencies.
- **SmartTomcat:**
- **IDE:** Any IDE that supports Maven projects (e.g., IntelliJ IDEA, Eclipse, Visual Studio Code).

## Build and Deployment Instructions

### 1. Building the Project with Maven
1. **Clone the Repository:**

   ```bash
   git clone <repository_url>
   cd ISDIoTWebApp
Build the Application:
Run the following command in the project root to compile the source code, run tests, and package the application:
bash
mvn clean install
The compiled WAR file will be located in the target/ directory.
2. Deploying to SmartTomcat
Deploy the WAR File:
Copy the generated WAR file from the target/ directory into the SmartTomcat webapps/ directory.
Alternatively, if using an IDE, right-click your project and choose to run it on a server (e.g., SmartTomcat).
Access the Application:
Open your browser and navigate to:
http://localhost:8080/ISDIoTWebApp/
3. Running from an IDE
Import as a Maven Project:
Open your preferred IDE.
Import the project using the Maven project settings.
Configure your Application Server:
Set up SmartTomcat within your IDE.
Run/Debug:
Run the project directly from the IDE. The server should auto-deploy the application.
Testing
Simple tests are provided in the src/test directory. To run the tests, execute:
bash
mvn test
Ensure that all tests pass before submitting your final prototype.
Usage
Landing (index.jsp): Starts the user journey with clear links to login and registration.
Registration (register.jsp): New users can create an account with their details.
Login (login.jsp): Existing users can log in using their email and password.
Welcome (welcome.jsp): A transitional view post-login or registration.
Dashboard (main.jsp): Displays personalized content along with navigation links to edit profile or logout.
Edit (edit.jsp): Allows users to update their profile information in real-time.
Logout (logout.jsp): Ends the session securely and redirects back to the landing page.

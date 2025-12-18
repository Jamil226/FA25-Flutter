# Mobile Application Development using Flutter

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Google](https://img.shields.io/badge/Google-%234285F4.svg?style=for-the-badge&logo=google&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-%23FFCA28.svg?style=for-the-badge&logo=firebase&logoColor=black)
![MySQL](https://img.shields.io/badge/MySQL-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![SQFLite](https://img.shields.io/badge/SQFLite-%230075C2.svg?style=for-the-badge&logo=sqlite&logoColor=white)
![REST API](https://img.shields.io/badge/REST%20API-%23007ACC.svg?style=for-the-badge&logo=fastapi&logoColor=white)
![JSON](https://img.shields.io/badge/JSON-%23FF4B4B.svg?style=for-the-badge&logo=json&logoColor=white)
![GraphQL](https://img.shields.io/badge/GraphQL-E10098.svg?style=for-the-badge&logo=graphql&logoColor=white)
![Android Studio](https://img.shields.io/badge/Android%20Studio-%233DDC84.svg?style=for-the-badge&logo=android-studio&logoColor=white)
![VS Code](https://img.shields.io/badge/VS%20Code-%23007ACC.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-%23FF6C37.svg?style=for-the-badge&logo=postman&logoColor=white)
![Git](https://img.shields.io/badge/Git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-%23181717.svg?style=for-the-badge&logo=github&logoColor=white)
![GitLab](https://img.shields.io/badge/GitLab-%23FC6D26.svg?style=for-the-badge&logo=gitlab&logoColor=white)
![Bitbucket](https://img.shields.io/badge/Bitbucket-%230052CC.svg?style=for-the-badge&logo=bitbucket&logoColor=white)
![Slack](https://img.shields.io/badge/Slack-4A154B.svg?style=for-the-badge&logo=slack&logoColor=white)
![Trello](https://img.shields.io/badge/Trello-%23026AA7.svg?style=for-the-badge&logo=trello&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-%23F24E1E.svg?style=for-the-badge&logo=figma&logoColor=white)

---

Welcome to the Flutter Bootcamp! This repository is designed to help you master Flutter from the ground up. Whether you’re a beginner or an experienced developer looking to deepen your Flutter knowledge, this Bootcamp will guide you through building high-performance, scalable mobile applications.

## Bootcamp Overview

This Bootcamp covers Flutter’s essential and advanced concepts, UI/UX best practices, state management techniques, backend integration, and performance optimization. By the end of this course, you’ll be equipped with the skills to develop professional Flutter applications for Android and iOS.

---

### 0 – Prerequisites

- Setting up Flutter and Dart SDK
- Installing Android Studio
- Installing essential Android Studio SDK components
- Setting up an Emulator (Virtual Device)
- Enabling Developer Options for real device testing
- Verifying the setup using the `flutter doctor` command
- Understanding Flutter Architecture
- Exploring Widgets and the Widget Tree
- Git and GitHub basic understanding

---

### 1 – Flutter Basic Layouts

- Introduction to **Scaffold** widget
- Using **SafeArea**
- Exploring **Container** widget (height, width, margin, padding, color)
- Implementing **Row** widget for horizontal layout
- Implementing **Column** widget for verticle layout
- Implementing **ListView** widget for responsive layout
- Implementing **GridView** widget for responsive layout
- Adding spacing with **SizedBox**
- Basic **Material Dashboard** Design

---

### 2 – Working with Text, Icons, Images, & AppBar

- Adding and styling **Text** widgets
- Using **Icons** in Flutter
- Using **AssetImage** in Flutter
- Implementing **AppBar**
- Understanding and modifying **pubspec.yaml**
- Adding **custom fonts** in a Flutter app
- **Center** Widgets in Flutter
- **Card** Widget in Flutter
- Adding **Fonts** in Flutter

---

### 3 – Input & Interaction Widgets

- Using **TextField** for user input
- Applying **InputDecoration** (hints, labels, borders, icons)
- Exploring different types of **Buttons** (ElevatedButton, TextButton, OutlinedButton)
- Handling basic **user interactions** with onPressed callbacks

---

### 4 – Events, Images & Dice Game

- Handling **button events** with onPressed
- Adding and displaying **images** in a Flutter app (dice faces: 1.png – 6.png)
- Using **Expanded** and **Row** for layout
- Implementing **random number generation** with `dart:math`
- Creating a very basic **Dice Game** with two dice that change on button press

---

### 5 – Navigation Between Screens

- Introduction to **Navigator.push()** and **Navigator.pop()**
- Building **multiple screens** in a Flutter app
- Passing data between screens
- Example project: **Simple Multi-Screen App** (e.g., Home → Details → Back)
- Passing Data Between Screens

---

### 6 – Launching Built-in Apps using Plugins

- Introduction to **Flutter plugins** for device functionalities
- Using `url_launcher` to open apps directly from Flutter
- **Open Dialer** – Launch phone dialer with a number
- **Open Map** – Show a location in Google Maps
- **Send Message** – Open SMS app with pre-filled text
- **Send Email** – Open email app with subject & body
- **Web View App** – Display websites inside the app
- **Open Google** – Launch Google in browser
- **Open Camera** – Capture photo using device camera
- **Image Picker** – Pick image from gallery or camera

---

### 7 – Stateless vs Stateful Widgets & Splash Screen

- **Understanding Stateless Widgets**

  - Widgets that do not change during runtime
  - Example project: _Static Profile Card_ (Name, Image, Description)

- **Understanding Stateful Widgets**

  - Widgets that can change dynamically with `setState()`
  - Example project: _Counter App_ (Increment/Decrement buttons)

- **Splash Screen**
  - Displaying a logo and progress indicator
  - Auto navigation after a delay
  - Example project: _App Splash → Home Screen_

#### Other Use Cases

- **Toggle Switch App** – Turn dark/light mode on and off
- **Like Button App** – Tap a heart icon to toggle between liked/unliked
- **TextField Input Demo** – Enter name and display it on screen

---

### 8 – Alert Dialogs, Toasts, Pop-ups, App Icon and App Name Change

- Introduction to **Alert Dialogs**, **Toasts**, **Pop-ups**, and **App Customization** in Flutter

#### Alert Dialogs

- Creating a **Basic Alert Dialog** with title, message, and actions
- Designing a **Custom Alert Dialog** using widgets
- Implementing a **Bottom Alert Dialog** for modern UI effects

#### Toasts

- Using the `fluttertoast` package to display basic toast messages
- Implementing **Motion Toasts** for animated notifications

#### Pop-ups and Bottom Sheets

- Displaying information using **Bottom Sheets**
- Implementing **Modal** and **Persistent** bottom sheets for user interaction

#### Internet Connectivity Check

- Checking internet status programmatically
- Showing an alert or bottom dialog when there’s **no internet connection**

#### App Icon and App Name Customization

- Changing the **App Icon** using the `flutter_launcher_icons` package and using manual method
- Updating the **App Name** in:
  - `AndroidManifest.xml` (for Android)
  - `Info.plist` (for iOS)

---

### 09 – Advanced Navigation

- **Navigation Drawer**

  - Creating and customizing a side navigation drawer
  - Adding user profile section and navigation links
  - Handling navigation actions and route switching

- **Bottom Navigation Bar**

  - Implementing multi-page navigation with bottom tabs
  - Managing navigation state using `IndexedStack`
  - Customizing icons, labels, and themes

- **Tab Navigation**

  - Using `TabBar` and `TabBarView` for tab-based content
  - Managing tabs with `DefaultTabController`
  - Styling and customizing tab indicators

- **Advanced Route Management**

  - Replacing and removing routes (`pushReplacement()`, `pushAndRemoveUntil()`)
  - Passing and receiving data between screens
  - Adding custom page transitions with `PageRouteBuilder`

- **Modern Navigation (Declarative)**
  - Introduction to `GoRouter`
  - Simplifying nested and parameterized routes

#### Multi-Navigation Demo App

- Build a **Multi-Screen App** featuring:
  - **Navigation Drawer** for side menu
  - **Bottom Navigation Bar** for tabbed navigation
  - **TabBar** for categorized content
- Demonstrate **advanced route handling** and **animated transitions**
- Fully explained and commented code

---

### 10 – Databases

- Introduction to **SharedPreferences**
- Maintaining App Sessions with **SharedPreferences**
- Introduction to **SQFLite**
- Overview of Firebase ecosystem and real-time capabilities
- Setting up Firebase in a Flutter project
- **Firebase Authentication**
  - Implementing secure user authentication (Email & Password)
  - Handling user registration, login, and logout
  - Managing authentication state and protecting routes
- **Cloud Firestore Database**
  - Understanding collections and documents
  - Performing CRUD operations in Firestore
  - Structuring and querying user-specific data
- **Firebase Storage**
  - Uploading and retrieving files (images, documents, etc.)
  - Linking uploaded files with Firestore records
  - Managing secure file access using Firebase rules

#### Expense Tracker App

- Creating an **Expense Tracker App** with expnese title, amount, and date
- **CRUD** Operations
- Fully Explained Code with Comments

#### Sticky Notes App

- Creating a **Sticky Note App** with note title, note details, and note date
- **CRUD** Operations
- **Editable Appbar** and **Random Colors** for notes.
---

## Contributions & Community

Contributions to this repository are highly encouraged!

- Submit issues & suggestions
- Fork & improve the course content
- Add new features & code samples
- Join discussions & help fellow learners

---

## Join the Flutter Bootcamp Now!

Stay tuned for regular updates, new projects, and learning challenges. Follow the repository and start your Flutter journey today!

📧 For any queries, feel free to contact us at **jamil138.amin@gmail.com**.

---

## Bootcamp Credits

 # Anime App

 A Flutter project showcasing a beautiful Anime browsing experience.



## Screenshots

Below are some screenshots of the app:

<p align="center">
   <span style="display:inline-block; background:#fff; border-radius:16px; box-shadow:0 2px 8px rgba(0,0,0,0.08); margin:8px; padding:8px;">
      <img src="assets/screens/home.png" alt="Home Screen" width="250"/>
   </span>
   <span style="display:inline-block; background:#fff; border-radius:16px; box-shadow:0 2px 8px rgba(0,0,0,0.08); margin:8px; padding:8px;">
      <img src="assets/screens/details.png" alt="Details Screen" width="250"/>
   </span>
   <span style="display:inline-block; background:#fff; border-radius:16px; box-shadow:0 2px 8px rgba(0,0,0,0.08); margin:8px; padding:8px;">
      <img src="assets/screens/upgrade_plan.png" alt="Upgrade Plan Screen" width="250"/>
   </span>
</p>

## Demo Video

<p align="center">
   <img src="assets/screens/anime.gif" alt="App Demo" width="320"/>
</p>


## Project Structure

```text
anime/
│
├── lib/
│   ├── main.dart                # App entry point
│   └── core/
│       └── features/
│           └── anime/
│               ├── domain/      # Business logic & entities
│               ├── presentation/
│               │   ├── screens/ # UI screens (e.g., home, details)
│               │   └── widgets/ # Reusable UI widgets
│               └── ...
│
├── assets/
│   ├── images/                  # App images
│   ├── icons/                   # SVG & icon assets
│   ├── fonts/                   # Custom fonts
│   └── screens/                 # Screenshots for documentation
│
├── android/                     # Android native code
├── ios/                         # iOS native code
├── web/                         # Web support
├── linux/                       # Linux support
├── macos/                       # macOS support
├── windows/                     # Windows support
├── pubspec.yaml                 # Flutter dependencies & assets
└── README.md                    # Project documentation
```

This diagram shows the main folders and their responsibilities in the project.

## Overview

This project provides a clean and user-friendly interface for discovering and exploring Anime. It leverages Flutter's capabilities to deliver a smooth and responsive experience on both Android and iOS platforms.

 ## Key Features

 *   Browse a curated list of popular Anime.
 *   View detailed information about each Anime, including descriptions, ratings, genres, and statistics.
 *   Enjoy a visually appealing and intuitive user interface.

 ## Getting Started

 To run this project locally, follow these steps:

 1.  Ensure you have Flutter installed. If not, follow the [official Flutter installation guide](https://docs.flutter.dev/get-started/install).
 2.  Clone this repository.
    ```bash
    git clone <repository_url>
    ```
 3.  Navigate to the project directory.
    ```bash
    cd anime
    ```
 4.  Install the dependencies.
    ```bash
    flutter pub get
    ```
 5.  Run the app.
    ```bash
    flutter run
    ```

 ## Contributing

 Contributions are welcome! If you'd like to contribute to this project, please follow these guidelines:

 1.  Fork the repository.
 2.  Create a new branch for your feature or bug fix.
 3.  Implement your changes.
 4.  Submit a pull request.

 ## Resources

 *   [Flutter Documentation](https://docs.flutter.dev/)
 *   [Flutter Cookbook](https://docs.flutter.dev/cookbook)

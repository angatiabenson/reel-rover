# ReelRover - Movie Listing App

## Overview
ReelRover is a Flutter-based movie listing app designed as a learning project to explore API integration, GetX state management, and feature-based MVC architecture. This project fetches movie data from an external API and displays it in a user-friendly interface. The app also includes error handling for internet connectivity and API errors, providing a seamless user experience.

## Features
- Fetch and display a list of popular movies.
- Display detailed information about each movie.
- Shimmer loading effect for a better user experience while data is being fetched.
- Error handling for internet connectivity and API errors.
- Retry mechanism for failed data fetch attempts.

## Getting Started

### Prerequisites
- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Android Studio or Visual Studio Code: Recommended IDE for Flutter development.
- An API key from [The Movie Database (TMDb)](https://www.themoviedb.org/documentation/api)

### Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/angatiabenson/reel-rover
   cd reel-rover
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure API Key**
   Open `lib/data/movie_api.dart` and add your TMDb API key.
   ```dart
   const String API_KEY = 'YOUR_API_KEY_HERE';
   ```

4. **Run the App**
   ```bash
   flutter run
   ```
## Usage

### Fetching Movies
The `MovieController` fetches movies from the API and updates the UI state. It checks for internet connectivity before making the API request using the `ConnectivityService`.

### Handling Loading States
The app uses the `shimmer` package to display a shimmer effect while data is being loaded. This enhances the user experience by showing a placeholder UI.

### Error Handling
The app handles both internet connectivity errors and API errors:
- **Internet Connectivity**: Checks for internet connection before making API requests.
- **API Errors**: Catches exceptions during API calls and displays appropriate error messages to the user.

### Retry Mechanism
In case of an error, a retry button is displayed to allow the user to attempt fetching the data again.

## Dependencies

- Flutter SDK
- GetX: State management and dependency injection.
- HTTP: For making API requests.
- Shimmer: For displaying loading placeholders.

## Contribution

Contributions are welcome! If you have any ideas, suggestions, or issues, feel free to create a pull request or open an issue in the repository.

## Acknowledgements

- [TMDb API](https://www.themoviedb.org/documentation/api) for providing the movie data.
- [GetX](https://pub.dev/packages/get) for state management.
- [Shimmer](https://pub.dev/packages/shimmer) for loading animations.
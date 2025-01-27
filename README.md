GitHub Users Viewer

A SwiftUI app that displays a list of GitHub users fetched from the GitHub API. The app uses the MVVM architectural pattern and leverages async/await for seamless and efficient API calls.

Features

- Fetches and displays a list of GitHub users.
- Shows each user's:
  - Username
  - Profile picture
  - GitHub profile link
- Asynchronous data fetching using async/await.
- Clean architecture with the MVVM pattern.

Demo

Below is a quick overview of the app layout:

- List of Users:
  - Displays usernames, profile pictures, and a button linking to their GitHub profiles.

Technologies Used

- SwiftUI: For building the user interface.
- MVVM Architecture: Ensures clean separation of concerns.
- URLSession: Handles network requests.
- async/await: Simplifies asynchronous code and improves readability.
- Codable: Decodes JSON data from the API.

Getting Started

Prerequisites

- macOS 12.0+
- Xcode 13.0+
- Swift 5.5+

Installation

1. Clone the repository:
   git clone https://github.com/yourusername/github-users-viewer.git

2. Open the project in Xcode:
   cd github-users-viewer
   open GitHubUsersViewer.xcodeproj

3. Build and run the project on an iOS simulator or a physical device.

How It Works

The app fetches data from the GitHub Users API. Each user's data includes their id, login, avatar_url, and html_url.

MVVM Structure

- Model: Defines the structure of GitHub user data.
- ViewModel: Manages the API calls and processes data for the view.
- View: Displays the data in a SwiftUI list.

Asynchronous API Call

The APIService uses URLSession to perform a GET request and decode the JSON response. The async/await syntax ensures clean and readable asynchronous code.

Future Improvements

- Add pagination for fetching more users.
- Display additional user details like followers and repositories.
- Enhance the UI with animations or custom designs.

License

This project is open-source and available under the MIT License. See the LICENSE file for more details.

Contact

For any questions or suggestions, feel free to reach out:

- Email: yourname@example.com
- GitHub: @yourusername

Enjoy building and customizing your SwiftUI app!


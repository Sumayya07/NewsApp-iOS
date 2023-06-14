# iOS News App Assignment

This project is an iOS News App that fetches news articles from the News API and displays them in a table view. The app utilizes the MVVM architecture pattern and demonstrates API integration, data modeling, and UI implementation.

<p align="center">

 <img src="https://github.com/Sumayya07/SenpiperAssignment/assets/95580926/bddd543b-2094-4071-976c-d4764989cc3f.png" width="30%">
 <img src="https://github.com/Sumayya07/SenpiperAssignment/assets/95580926/7f118e46-9fda-458f-8de4-0ddebcf811f6.png" width="30%">
 
</p>

## Project Structure

- **APIManager:** Handles network requests and data retrieval from the News API.
- **Models:** Contains the data models for the News, Article, and Source entities.
- **ViewControllers:** Includes the main NewsViewController responsible for displaying the news articles.
- **Views:** Contains custom views, such as the NewsTableViewCell, used to present the news article data.
- **Utilities:** Houses any utility or helper classes used throughout the project.

## Setup

To set up the project, follow these steps:

1. Clone the repository or download the project files.
2. Open the project in Xcode.
3. If using Cocoapods, run `pod install` in the project directory to install any dependencies.
4. Obtain an API key from the News API website.
5. In the `APIManager` file, replace the placeholder API key with your own API key.

## Features

- Fetches news articles from the News API based on a search query and date range.
- Displays the news articles in a table view with custom cells.
- Shows the article author, title, and description, at what time the news was published, and the image.
- Utilizes a network activity indicator during API calls.
- Adapts to changes in the network availability using the Reachability framework.
- Demonstrates the usage of Swift Result type for handling API responses.

## Running the App

To run the app, follow these steps:

1. Open the Xcode project.
2. Build and run the app on a simulator or device.
3. The app will fetch news articles based on the predefined API endpoint and display them in the table view.

## Dependencies

This project uses the following dependencies:

- [Reachability](https://github.com/ashleymills/Reachability.swift): A Swift library for monitoring network reachability.
- [MBProgressHUD](https://github.com/jdg/MBProgressHUD): A library for displaying loading indicators.

## Contributing

Contributions to this project are welcome. Please open an issue to discuss your proposed changes before making a pull request.



# Vitality

![Platform](https://img.shields.io/badge/Platform-Flutter-blue.svg)

## Overview

Vitality is a Flutter application that allows users to interact with a chatbot. The chatbot is powered by the Gemini language model and utilizes the GetX ecosystem for state management. Firebase is used for backend services such as authentication and data storage. The app follows the Model-View-Controller (MVC) architecture for clean and maintainable code.

## Features

- **Chat with the bot:** Ask questions and get responses from the chatbot powered by Gemini.
- **User Authentication:** Secure authentication with Firebase.
- **State Management:** Efficient state management using GetX.
- **MVC Architecture:** Follows the Model-View-Controller pattern for organized code structure.

## Screenshots

![image](https://github.com/ismaildrs/Health-fitness-app/assets/104438360/a9c156fc-73d1-4691-a7ad-e8965c85aea9)

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Firebase account: [Create Firebase project](https://firebase.google.com/)
- Dart SDK

### Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/vitality.git
    cd vitality
    ```

2. **Install dependencies:**
    ```bash
    flutter pub get
    ```

3. **Configure Firebase:**
   - Follow the instructions to add Firebase to your Flutter app: [Firebase Setup](https://firebase.flutter.dev/docs/overview)
   - Update `android/app/google-services.json` and `ios/Runner/GoogleService-Info.plist` with your Firebase configuration.
    
3. **Change the API key:**
   - Get your API key from Google AI Studio, and put it in the `main()` function

4. **Run the app:**
    ```bash
    flutter run
    ```

## Usage

1. **Sign Up / Sign In:**
   - Create a new account or log in using your credentials.
   
2. **Chat with the Bot:**
   - Start a conversation by typing your question and receive responses from the Gemini-powered chatbot.

## Architecture

The application follows the MVC architecture:

- **Model:** Defines the data structure and handles data-related logic.
- **View:** Represents the UI components and renders the data from the controller.
- **Controller:** Manages the data flow between the model and view, handling user input and updating the view.

## Dependencies

- [Flutter](https://flutter.dev/)
- [GetX](https://pub.dev/packages/get)
- [Firebase](https://firebase.google.com/)
- [Gemini LLM](https://gemini.com/)

## Contributing

Contributions are welcome! Please read the [contributing guidelines](CONTRIBUTING.md) first.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

- **Author:** Ismail Drissi
- **Email:** drissiisismail@gmail.com
- **GitHub:** [@ismaildrs](https://github.com/ismaildrs)

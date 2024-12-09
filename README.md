# 🤖 AI Assistant with Gemini API

Welcome to the **AI Assistant** project! This application combines cutting-edge AI features to deliver text-based chat capabilities and AI-generated images using the **Gemini API**. Designed with a user-friendly and responsive interface, the assistant provides seamless interaction for users.

---

## 🚀 Features

- **Chat Functionality**: 
  - Engage in natural and dynamic conversations powered by the Gemini API.
- **AI-Generated Images**: 
  - Generate stunning images based on user input using the Gemini API's image generation capabilities.
- **User-Friendly Interface**: 
  - Designed with responsiveness in mind, the app offers an intuitive and engaging user experience.
- **Multi-Language Support**: 
  - Built using **Flutter** and **Dart**, ensuring cross-platform compatibility.
- **Backend Integration**: 
  - Uses Python and the `requests` module to interact with the Gemini API.

---

## 📋 How It Works

1. **Chat Mode**: Users ask the question, and the app fetches a conversational response from the Gemini API.
2. **Image Generation**: Users input a description, and the app generates an AI-crafted image based on the description.
3. **Responsive Interface**: Provides an optimized layout for various devices, including smartphones and tablets.

---

## 🔧 Technology Stack

### Frontend:
- **Flutter** and **Dart**: For creating a beautiful and responsive user interface.

### Backend:
- **Python**: For handling API requests.
- **Gemini API**: For chat and image generation functionality.

---

## 📂 File Structure
ai-assistant<br>
├── lib │<br>
├── main.dart # Main Flutter app code │ <br>
├── ui/ # Contains UI components │ <br>
├── services/ # API request handling logic |<br>
├── api/ │ <br>
├── gemini_requests.py # Python script for API calls <br>
├── assets/ # Stores app assets (images, icons, etc.) <br>
├── README.md # Project documentation <br>
└── pubspec.yaml # Flutter dependencies configuration<br>


---

## 🛠️ Setup Instructions

### Prerequisites
1. Install Flutter: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
2. Install Python: [Python Download](https://www.python.org/downloads/)
3. Get API credentials from Gemini API.

### Steps to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/ai-assistant.git
   cd ai-assistant
   flutter pub get
   pip install requests
   
2.Add your Gemini API key in the gemini_requests.py file.<br>
3.python api/gemini_requests.py<br>
4.flutter run<br>

## 🌟 Future Enhancements
Add support for voice interactions.<br>
Implement advanced image customization options.<br>
Provide offline chatbot capabilities using local AI models.<br>

## 📜 License
This project is licensed under the MIT License. Feel free to use and modify it for personal or commercial projects, but attribution is appreciated.

## Interface

![Interface of my project](https://github.com/user-attachments/assets/3f851af6-fedf-4ee9-a815-4f7070a9dbea)



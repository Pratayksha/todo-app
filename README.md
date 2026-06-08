## Setup Instructions

### Prerequisites

Make sure the following tools are installed:

- Flutter SDK
- Dart SDK
- Android Studio / VS Code
- Firebase CLI
- FlutterFire CLI

---

### 1. Clone the Repository

```bash
   git clone https://github.com/Pratayksha/todo-app.git
   ```

```bash
   cd todo-app
   ```
### 2. Install Dependencies

```bash
   flutter pub get
   ```

### 3. Configure Firebase

- Login to Firebase :

  ```bash
  firebase login
  ```
- Run FlutterFire configuration :

  ```bash
  flutterfire configure
     ```
  
*This will generate :*
   ```bash
      lib/firebase_options.dart  

      android/app/google-services.json
   ```

### 4. Generate Freezed and JSON Serializable Files

```bash
   dart run build_runner build
   ```

 *If files already exist and you want to regenerate them :*

 ```bash
    dart run build_runner build --delete-conflicting-outputs
   ```

### 5. Run the Application
  ```bash
     flutter run
  ```

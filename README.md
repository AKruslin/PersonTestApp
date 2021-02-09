# Person test app



Flutter project where the main point are types of testing. Like unit and widget (intergration) tests that are used in this project.

  

## Getting Started with Flutter

  

This project is a starting point for a Flutter application.

  

A few resources to set you up for testing:

Flutter project:

  

-  [How to install Flutter framework](https://flutter.dev/docs/get-started/install)

  

For help getting started with Flutter, view [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

  

After installing the framework, first open your IDE and download Dart and Flutter extensions. When everything is set project can be easily opened and run by the Code editor like VS Code or IDE like Android Studio.

  

#### Flutter version 1.22.6 is used in this project.

  

## Setup

1. Clone the repository

	```

	git clone https://github.com/AKruslin/PersonTestApp.git

	```

  

2. Open the project with your IDE/Code Editor

  

3. Connect it to simulator and run it

  

* Via terminal

	```

	flutter run

	```

  

* Via VS Code

		By pressing F5

  

4. To run Tests open test files inside Test folder.

  

## Tests

  

Test folder has two files

* main_test.dart

* person_test.dart

  

![apptestsCompleted](https://user-images.githubusercontent.com/70284063/107375023-946c1400-6ae8-11eb-9e25-cb4f3068732f.PNG)

  

### Unit tests

  

They are contained in /test/person_test.dart where are tested Person class components. 
* Checking is Person Teenager
* Does celebrate birthday method increments person age
* Does change from Teenage to Adult works after person is over 19
* Does changing first and last name works via methods

### Widget test

They can be found in /test/main_test.dart where widgets are tested. 
* Text Labels if they change after event has happened
* Buttons if they execute events/change states
* TextField

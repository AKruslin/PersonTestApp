class Person {
  String firstName;
  String lastName;
  int age;

  bool isTeenager = false;
  bool isAdult = false;

  Person(this.firstName, this.lastName, this.age) {
    checkAgePeriod();
  }

  void celebrateBirthday() {
    age++;
    checkAgePeriod();
  }

  void incognitoMode() {
    firstName = "John";
    lastName = "Doe";
  }

  void checkAgePeriod() {
    if (age > 12 && age < 20) {
      isTeenager = true;
    } else if (age >= 20) {
      isTeenager = false;
      isAdult = true;
    }
  }

  void changeFirstName(String newFirstName) {
    firstName = newFirstName;
  }

  void changeLastName(String newLastName) {
    lastName = newLastName;
  }
}

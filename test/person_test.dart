import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/model/person.dart';

void main() {
  test('Given user with age of 18 after birthday is called Teenager.',
      () async {
    final person = (Person("Antonio", "Kruslin", 18));

    //Verify that person is Teenager
    expect(person.isTeenager, true);

    person.celebrateBirthday();

    //Verify that person is still Teenager
    expect(person.isTeenager, true);
  });

  test('Given user with age of 19 after birthday is called Adult.', () async {
    final person = (Person("Antonio", "Kruslin", 19));

    //Verify that person starts as a Teenager
    expect(person.isTeenager, true);

    person.celebrateBirthday();

    //Verify that person ends as an Adult
    expect(person.isAdult, true);
  });

  test(
      'Given user with first name of Antonio after name change is called Marko.',
      () async {
    final person = (Person("Antonio", "Kruslin", 19));

    //Verify that person first name starts as Antonio
    expect(person.firstName, "Antonio");

    person.changeFirstName("Marko");

    //Verify that person first name ends as Marko
    expect(person.firstName, "Marko");
  });

  test(
      'Given user with last name of Kruslin after lastname change is called Peric.',
      () async {
    final person = (Person("Antonio", "Kruslin", 19));

    //Verify that person last name starts as Kruslin
    expect(person.lastName, "Kruslin");

    person.changeLastName("Peric");

    //Verify that person last name ends as Peric
    expect(person.lastName, "Peric");
  });
}

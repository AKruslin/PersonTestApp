import 'package:flutter/material.dart';
import 'package:test_app/model/person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DemoPerson App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Person person = Person("Antonio", "Kruslin", 22);
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${person.firstName} ${person.lastName}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Age:" + person.age.toString(),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        person.celebrateBirthday();
                      });
                    },
                    child: Text("Celebrate Birthday!"),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        person.incognitoMode();
                      });
                    },
                    child: Text("Go Incognito!"),
                  ),
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration:
                      InputDecoration(hintText: "Enter first/last name"),
                  controller: textController,
                  onSubmitted: (value) {
                    if (value.isEmpty) {
                      return "Empty entry";
                    }
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        if (textController.text != "")
                          person.changeFirstName(textController.text);
                      });
                    },
                    child: Text("Change your FirstName!"),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        if (textController.text != "")
                          person.changeLastName(textController.text);
                      });
                    },
                    child: Text("Change your LastName!"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

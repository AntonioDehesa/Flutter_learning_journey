import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                foregroundImage: AssetImage("images/PFP.jpeg"),
              ),
              const Text(
                "Antonio Dehesa",
                style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Technical Solutions Engineer",
                style: TextStyle(
                    fontFamily: "SourceSans3",
                    fontSize: 20.0,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              const Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 50.0,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "+52 123 456 789",
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: "SourceSans3",
                        fontSize: 20.0),
                  ),
                ),
              ),
              const Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 50.0,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "my_email@mail.com",
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: "SourceSans3",
                        fontSize: 20.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

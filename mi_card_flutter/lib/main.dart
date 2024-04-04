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
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
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
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                padding: const EdgeInsets.all(10.0),
                child: const Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 50.0,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "+52 123 456 789",
                      style: TextStyle(
                          color: Colors.teal,
                          fontFamily: "SourceSans3",
                          fontSize: 20.0),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                padding: const EdgeInsets.all(10.0),
                child: const Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 50.0,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "my_email@mail.com",
                      style: TextStyle(
                          color: Colors.teal,
                          fontFamily: "SourceSans3",
                          fontSize: 20.0),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

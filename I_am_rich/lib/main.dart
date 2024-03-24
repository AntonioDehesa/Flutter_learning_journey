import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I am rich"),
          backgroundColor: Color(0xFF67BAFF),
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Image(
            image: NetworkImage(
                "https://news.mit.edu/sites/default/files/styles/news_article__image_gallery/public/images/202010/MIT-Metallic-Diamond-01-Press_0.jpg?itok=386hZmMI"),
          ),
        ),
      ),
    ),
  );
}

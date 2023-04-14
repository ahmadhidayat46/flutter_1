import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lorem picsum"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 200,
            color: Colors.amber,
            child: Container(
              child: Image.network(
                "https://picsum.photos/id/${index + 450}/200/300",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

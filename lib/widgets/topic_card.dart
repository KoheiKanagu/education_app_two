import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(
          "A Record of the\nFormation of Learning\nHegemony",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      color: Color.fromARGB(255, 155, 229, 255),
    );
  }
}

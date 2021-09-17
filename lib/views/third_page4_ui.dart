import 'package:flutter/material.dart';

class ThirdPage4UI extends StatelessWidget {
  const ThirdPage4UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[400],
      body: Center(
        child: Icon(
          Icons.settings_accessibility,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
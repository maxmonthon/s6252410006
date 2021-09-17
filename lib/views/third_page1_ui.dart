import 'package:flutter/material.dart';

class ThirdPage1UI extends StatelessWidget {
  const ThirdPage1UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[400],
      body: Center(
        child: Icon(
          Icons.access_alarm,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

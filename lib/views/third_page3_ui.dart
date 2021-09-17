import 'package:flutter/material.dart';


class ThirdPage3UI extends StatelessWidget {
  const ThirdPage3UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Icon(
          Icons.beach_access_outlined,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
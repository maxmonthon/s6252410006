import 'package:flutter/material.dart';

class ForthTabpage2UI extends StatelessWidget {
  const ForthTabpage2UI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'สบายดี',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Kanit',
            color: Colors.redAccent,
          )
        ),
      ),
    );
  }
}
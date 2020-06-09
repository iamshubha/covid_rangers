import 'package:flutter/material.dart';

class MyLoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              ),
              Text(
                "\nLoading...",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

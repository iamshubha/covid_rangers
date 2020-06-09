import 'dart:async';
import 'package:corona_hack/landing.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with TickerProviderStateMixin{

  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(seconds: 1), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    Timer(Duration(seconds: 3), () => 
    // Navigator.of(context).pushNamed('/landing-screen'),
    // Navigator.push(context, ))
    
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LandingScreen())
    // Navigator.of(context).pushReplacement(LandingScreen())
    ));
    animation.addStatusListener((status) {
     if (status == AnimationStatus.dismissed) {
      controller.forward();
    }
  });

    controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
          color: Colors.white,
          child: FadeTransition(
              opacity: animation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/image1.png", height: 200,),
                  Center(
                    child: Text("Covidpedia",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.w800
                    ),
                    ),
                  ),
                ],
              )
          )
      ),
    );
  }
}
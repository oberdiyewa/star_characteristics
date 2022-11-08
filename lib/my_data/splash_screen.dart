import 'package:example_selfimprove/star_listi.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onPanUpdate: (details) => Navigator.push(
          context, MaterialPageRoute(builder: ((context) => StarList()))),
      child: Container(
        alignment: Alignment.bottomRight,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/splash.jpg"), fit: BoxFit.cover),
        ),
        child: const Text(
          "Öz ýyldyzyňy tana       >>>  ",
          style: TextStyle(
            fontFamily: 'MyFont',
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ));
  }
}

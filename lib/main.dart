// import 'dart:js';

import 'package:example_selfimprove/my_data/splash_screen.dart';
import 'package:example_selfimprove/star_detail.dart';
import 'package:example_selfimprove/star_listi.dart';
import 'package:flutter/material.dart';

// import 'models/star.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathItems = settings.name!.split("/");
        if (pathItems[1] == "starDetail") {
          return MaterialPageRoute(
              builder: (context) => StarDetail(int.parse(pathItems[2])));
        }
        return null;
      },
      debugShowCheckedModeBanner: false,
      title: "Burc List",
      theme: ThemeData(iconTheme: IconThemeData(color: Colors.pink)),

      // home: StarList(),
    );
  }
}

import 'package:dev_career/src/web/devWeb.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevCareer());
}

class DevCareer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevCareer',
      theme: ThemeData(
          textTheme: TextTheme(
            headline4:
                TextStyle(fontFamily: "PR", fontSize: 16, color: Colors.white),
            headline5: TextStyle(
              fontFamily: "PR",
              fontSize: 14,
              color: Colors.white.withOpacity(0.6),
            ),
            headline1: TextStyle(
                fontFamily: "PR",
                color: Colors.white.withOpacity(0.8),
                fontSize: 45,
                fontWeight: FontWeight.w700),
            bodyText2: TextStyle(
              fontFamily: "PT",
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          scaffoldBackgroundColor: Color(0xFF72E79A)),
      home: DevCareerWeb(),
    );
  }
}

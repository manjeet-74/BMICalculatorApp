import 'package:flutter/material.dart';
import 'screens/input_page.dart';//importing everything thats defined in input page

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        //widget which defines color of appbar and body
        appBarTheme: AppBarTheme(
            color: Color(0xFF0A0D22)), //hexcode obtained using color dropper
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        ),
      home: InputPage(), //homepage
    );
  }
}


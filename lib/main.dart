


import 'package:flutter/material.dart';
import 'package:sign_up_page/textform.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.light(primary: Colors.white54,secondary: Colors.purple,inversePrimary: Colors.red)),
        home: SignUpPage()
    );
  }
}


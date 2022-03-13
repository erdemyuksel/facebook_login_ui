import 'package:flutter/material.dart';
import 'package:login_page/splash_screen.dart';

void main() {
  runApp(const FacebookLoginUI());
}

class FacebookLoginUI extends StatelessWidget {
  const FacebookLoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const SplashScreen(),
    );
  }
}

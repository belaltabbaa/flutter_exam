import 'package:flutter/material.dart';
import 'package:flutter_exam/res/color_app.dart';
import 'package:flutter_exam/view/onbording_page.dart/onbording_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnbordingPage(),
          )),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorApp().primary,
        ),
        child: Center(
          child: SizedBox(
            width: 222,
            height: 222,
            child: Image.asset("asset/image/logo.png"),
          ),
        ),
      ),
    );
  }
}

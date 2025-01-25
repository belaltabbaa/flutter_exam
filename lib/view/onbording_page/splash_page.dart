import 'package:flutter/material.dart';
import 'package:flutter_exam/res/color_app.dart';
import 'package:flutter_exam/view/onbording_page/onbording_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Tween<double> opasity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    );

    Future.delayed(
      const Duration(seconds: 7),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnbordingPage(),
          )),
    );
    return Scaffold(
      body: TweenAnimationBuilder(
        tween: opasity,
        duration: const Duration(seconds: 5),
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: Container(
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
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_exam/res/color_app.dart';

// ignore: must_be_immutable
class Btntext extends StatelessWidget {
  Btntext({super.key, required this.txt});

  String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorApp().primary,
      ),
      child: Center(
        child: Text(
          txt,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0xff0D4E4E),
          ),
        ),
      ),
    );
  }
}

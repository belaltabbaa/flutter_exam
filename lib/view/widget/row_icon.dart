import 'package:flutter/material.dart';
import 'package:flutter_exam/res/color_app.dart';

// ignore: must_be_immutable
class RowIcon extends StatelessWidget {
  RowIcon({super.key, required this.mainAxisAlignment,required this.icon});

  MainAxisAlignment mainAxisAlignment;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              color: ColorApp().primary,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

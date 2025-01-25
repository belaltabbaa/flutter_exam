import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RowAppbar extends StatelessWidget {
  RowAppbar({super.key, required this.mainAxisAlignment, required this.txt});

  MainAxisAlignment mainAxisAlignment;
  String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 16),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Text(
            txt,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

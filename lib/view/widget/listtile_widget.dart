import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class ListtileWidget extends StatelessWidget {
  ListtileWidget({super.key, required this.color, required this.txt});

  Color color;
  String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: ListTile(
        title: Text(
          txt,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Icon(
          Icons.location_on_sharp,
          color: color,
          size: 35,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey[850],
        ),
      ),
    );
  }
}

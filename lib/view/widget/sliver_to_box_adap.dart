import 'package:flutter/material.dart';

class SliverToBoxAdap extends StatelessWidget {
  const SliverToBoxAdap({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff1D1D1D),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            height: 5,
            width: 100,
            //margin: const EdgeInsets.only(top: 12),
          ),
        ),
      ),
    );
  }
}

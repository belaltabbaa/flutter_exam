import 'package:flutter/material.dart';
import 'package:flutter_exam/res/string_app.dart';
import 'package:flutter_exam/view/page/drag_scro_sheet.dart';
import 'package:flutter_exam/view/widget/image_map.dart';
import 'package:flutter_exam/view/widget/row_appbar.dart';
import 'package:flutter_exam/view/widget/row_icon.dart';
import 'package:flutter_exam/view/widget/sliver_to_box_adap.dart';

// ignore: must_be_immutable
class HomePageNoTask extends StatelessWidget {
  HomePageNoTask({super.key});

  DraggableScrollableController scrollableController =
      DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const DragScroSheet(),
          )),
    );
    return Scaffold(
      body: Stack(
        children: [
          const ImageMap(),
          RowIcon(
            mainAxisAlignment: MainAxisAlignment.start,
            icon: Icons.arrow_back_ios_new_sharp,
          ),
          RowIcon(
            mainAxisAlignment: MainAxisAlignment.end,
            icon: Icons.menu,
          ),
          DraggableScrollableSheet(
            controller: scrollableController,
            builder: (BuildContext context, scrollController) {
              return Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    const SliverToBoxAdap(),
                    SliverList.list(
                      children: [
                        RowAppbar(
                          mainAxisAlignment: MainAxisAlignment.end,
                          txt: StringApp().Next7,
                        ),
                        Center(
                          child: Text(
                            StringApp().Next8,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff1d1d1d80),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

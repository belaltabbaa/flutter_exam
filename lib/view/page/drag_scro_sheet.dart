import 'package:flutter/material.dart';
import 'package:flutter_exam/res/color_app.dart';
import 'package:flutter_exam/res/string_app.dart';
import 'package:flutter_exam/view/widget/image_map.dart';
import 'package:flutter_exam/view/widget/listtile_widget.dart';
import 'package:flutter_exam/view/widget/row_appbar.dart';
import 'package:flutter_exam/view/widget/row_icon.dart';
import 'package:flutter_exam/view/widget/sliver_to_box_adap.dart';

class DragScroSheet extends StatefulWidget {
  const DragScroSheet({super.key});

  @override
  State<DragScroSheet> createState() => _DragScroSheetState();
}

final DraggableScrollableController scrollableController =
    DraggableScrollableController();

class _DragScroSheetState extends State<DragScroSheet> {
  @override
  Widget build(BuildContext context) {
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
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    const SliverToBoxAdap(),
                    SliverList.list(
                      children: [
                        RowAppbar(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          txt: StringApp().Next7,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AmpelanceState(),
                                ),
                              );
                            },
                            child: ListtileWidget(
                                color: Colors.red.shade400,
                                txt: StringApp().Next9)),
                        ListtileWidget(
                            color: Colors.orange.shade300,
                            txt: 'حالة اسعافية عاجلة'),
                        ListtileWidget(
                            color: Colors.green.shade500,
                            txt: 'حالة اسعافية غير عاجلة'),
                        ListtileWidget(
                            color: Colors.green.shade500,
                            txt: 'حالة اسعافية غير عاجلة'),
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

class AmpelanceState extends StatelessWidget {
  const AmpelanceState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp().primary,
      body: const Center(
        child: Text(
          "The End",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

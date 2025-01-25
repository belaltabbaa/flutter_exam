import 'package:flutter/material.dart';
import 'package:flutter_exam/res/string_app.dart';
import 'package:flutter_exam/view/page/home_page_no_task.dart';
import 'package:flutter_exam/view/widget/btntext.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  bool isvis = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 92, right: 128, left: 123),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset("asset/image/logo (1).png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 61, right: 27, left: 236),
            child: SizedBox(
              width: 140,
              height: 28,
              child: Text(
                StringApp().Next4,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xffF8425A)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
            child: SizedBox(
              width: 352,
              height: 80,
              child: TextField(
                decoration: InputDecoration(
                    hintText: StringApp().Next5,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48, right: 20, left: 20),
            child: SizedBox(
              width: 352,
              height: 80,
              child: StatefulBuilder(builder: (context, setState) {
                return TextField(
                  obscureText: isvis,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                isvis = !isvis;
                              },
                            );
                          },
                          icon: const Icon(Icons.visibility)),
                      hintText: StringApp().Next6,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 115, right: 20, left: 20),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageNoTask(),
                    ),
                  );
                },
                child: Btntext(txt: StringApp().Next4)),
          )
        ],
      ),
    );
  }
}

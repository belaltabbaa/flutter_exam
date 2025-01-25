import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/res/string_app.dart';
import 'package:flutter_exam/view/auth/login_page.dart';
import 'package:flutter_exam/view/widget/btntext.dart';

class OnbordingPage extends StatelessWidget {
  const OnbordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  if (context.locale.languageCode == "en") {
                    context.setLocale(
                      const Locale("ar"),
                    );
                  } else {
                    context.setLocale(const Locale("en"));
                  }
                },
                icon: const Icon(Icons.translate))
          ],
        ),
        backgroundColor: Colors.grey,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 445, right: 33, left: 20),
              child: SizedBox(
                width: 340,
                height: 35,
                child: Text(
                  StringApp().Next,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 33, right: 33, left: 20),
              child: SizedBox(
                width: 340,
                height: 65,
                child: Text(
                  StringApp().Next2,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Btntext(txt: StringApp().Next3)),
            )
          ],
        ));
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/config/service_locator.dart';
import 'package:flutter_exam/my_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  storage = await SharedPreferences.getInstance();
  setup();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'asset/translate',
      fallbackLocale: const Locale('en', 'ar'),
      child: const MyApp(),
    ),
  );
}

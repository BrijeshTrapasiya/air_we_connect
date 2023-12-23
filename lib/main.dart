import 'package:airweconnect/config/root_binding.dart';
import 'package:airweconnect/screens/get_help.dart';
import 'package:airweconnect/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: RootBinding(),
      theme: ThemeData(
      fontFamily: 'poppins'
      ),
      home: const GetHelpScreen(),
    );
  }
}

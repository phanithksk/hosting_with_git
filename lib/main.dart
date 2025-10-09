import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hosting_with_git/welcom_screen.dart';
import 'signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Web Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      getPages: [
        GetPage(name: '/welcome', page: () => const WelcomeScreen()),
        GetPage(name: '/signin', page: () => const SignInScreen()),
      ],
    );
  }
}

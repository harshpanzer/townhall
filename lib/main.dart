import 'package:flutter/material.dart';
import 'package:townhall/screens/success_screen.dart';
import 'package:townhall/services/recaptcha_service.dart';
import 'package:townhall/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RecaptchaService.initiate();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TownHall',
      home: Success_Screen(),
    );
  }
}

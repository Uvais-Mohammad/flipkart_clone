import 'package:flipkart_clone/features/splash/screens/splash_screen.dart';
import 'package:flipkart_clone/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      theme: MyTheme.themeData,
    );
  }
}

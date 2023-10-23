import 'package:airplanes/ui/pages/get_started_page.dart';
import 'package:airplanes/ui/pages/main_page.dart';
import 'package:airplanes/ui/pages/spalsh_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}

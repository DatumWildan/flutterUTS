import 'dart:async';

// import 'package:airplanes/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context as BuildContext, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBlackMamba,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 600,
              height: 500,
              margin: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo_hiking.jpg',
                  ),
                ),
              ),
            ),
            Text(
              'HIKING',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: medium,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

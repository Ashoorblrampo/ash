import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/intro_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.push(
          context, CupertinoPageRoute(builder: (_) => IntroscreenState()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 164, 255),
      body: Center(
          child: SizedBox(
        height: size.width / 4,
        child: Image.asset(
          "assests/images/11.png",
        ),
      )),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/auth/login.dart';

class IntroscreenState extends StatefulWidget {
  const IntroscreenState({super.key});

  @override
  State<IntroscreenState> createState() => _IntroscreenStateState();
}

class _IntroscreenStateState extends State<IntroscreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assests/images/16.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Get the electronics you need without leaving your home with the GDSC Electronics app.',
                style: TextStyle(
                  fontFamily: AutofillHints.birthday,
                  fontSize: 23,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => Login()));
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
                child: Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      ),
    );
  }
}

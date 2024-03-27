import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/intro_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "hello",
                style: TextStyle(
                  fontFamily: AutofillHints.birthday,
                  fontSize: 23,
                ),
              ),
            ),
            Center(child: Text("Log in to your Account")),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                      fontFamily: AutofillHints.birthday,
                      fontSize: 9,
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => Login()));
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text("Log in"),
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Name *',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?"),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => IntroscreenState()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

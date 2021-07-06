import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 32),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/e_logo.png',
                  fit: BoxFit.cover,
                  width: 32,
                ),
                const Text(
                  ' - ducation',
                  style: TextStyle(
                    color: Color(0xff3A334F),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      foreground: Paint()
                        ..shader = ui.Gradient.linear(
                          const Offset(5, 0),
                          const Offset(5, 30),
                          const <Color>[
                            Color(0xffFFC1CD),
                            Color(0xffFF8499),
                          ],
                        )),
                ),
                const Text(
                  'Categories',
                  style: TextStyle(
                    color: Color(0xff3A334F),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Course Types',
                  style: TextStyle(
                    color: Color(0xff3A334F),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  child: Row(
                    children: const [
                      Text('Sign up'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
                Text(
                  ' - ducation',
                  style: TextStyle(
                    color: Color(0xff3A334F),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text('Home'),
                Text('Categories'),
                Text('Course Types'),
                Container(
                  child: Row(
                    children: [
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

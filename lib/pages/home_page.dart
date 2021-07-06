import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                SvgPicture.asset('assets/images/e_logo.svg'),
                Text('- ducation'),
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

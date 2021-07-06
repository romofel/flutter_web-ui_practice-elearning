import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildNavBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Education is the best way to reform people.',
                        style: TextStyle(
                          color: Color(0xff3A334F),
                          fontSize: 68,
                          fontWeight: FontWeight.w600,
                          height: 1.1,
                        ),
                      ),
                      const SizedBox(height: 36),
                      const Text(
                        'In-depth and practical lessons in over 100 subjects are available through online certified courses.',
                        style: TextStyle(
                          color: Color(0xff504A65),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          height: 1.3,
                        ),
                      ),
                      const SizedBox(height: 36),
                      SizedBox(
                        height: 80,
                        width: 461,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: UnconstrainedBox(
                              child: Image.asset(
                                'assets/images/search_icon.png',
                                fit: BoxFit.cover,
                                width: 18,
                              ),
                            ),
                            hintText: 'Enter your course name',
                            hintStyle: const TextStyle(
                              color: Color(0xffD9DCE2),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            filled: true,
                            fillColor: const Color(0xffFFFFFF),
                            hoverColor: const Color(0xffFFFFFF),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                color: Color(0xffF0F4F5),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                color: Color(0xffF0F4F5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                const Expanded(
                  child: Placeholder(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildNavBar() {
    return Padding(
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
          const Spacer(),
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
          const SizedBox(width: 84),
          const Text(
            'Categories',
            style: TextStyle(
              color: Color(0xff3A334F),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 84),
          const Text(
            'Course Types',
            style: TextStyle(
              color: Color(0xff3A334F),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Container(
            width: 179,
            height: 79,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  Color(0xffC2B8FF),
                  Color(0xff8A78F0),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffC2B8FF),
                  offset: Offset(0, 5),
                  blurRadius: 60,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 8),
                Image.asset('assets/images/Login.png',
                    fit: BoxFit.cover, width: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

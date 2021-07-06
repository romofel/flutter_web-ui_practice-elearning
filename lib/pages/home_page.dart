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
                      Container(
                        height: 80,
                        width: 461,
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: const Color(0xff43435A).withOpacity(.11),
                              offset: const Offset(10, 50),
                              blurRadius: 80,
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: SizedBox(
                              height: 80,
                              width: 64,
                              child: UnconstrainedBox(
                                child: Image.asset(
                                  'assets/images/search_icon.png',
                                  fit: BoxFit.cover,
                                  width: 24,
                                ),
                              ),
                            ),
                            suffixIcon: Container(
                              width: 160,
                              height: 80,
                              alignment: AlignmentDirectional.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xffFFC1CD),
                                    Color(0xffFF8499),
                                  ],
                                ),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color:
                                        const Color(0xffFF8499).withOpacity(.8),
                                    offset: const Offset(0, 4),
                                    blurRadius: 12,
                                  ),
                                ],
                              ),
                              child: const Text(
                                'Search Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
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
                              borderSide: const BorderSide(
                                color: Color(0xffF0F4F5),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(
                                color: Color(0xffF0F4F5),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 61),
                      Row(
                        children: [
                          _buildLandingDetail(
                            image: 'assets/images/global_icon.png',
                            title: 'Globally Recognised',
                            gradient: const LinearGradient(
                              begin: AlignmentDirectional.topCenter,
                              end: AlignmentDirectional.bottomCenter,
                              colors: [
                                Color(0x1aFFC1CD),
                                Color(0x1aFF8499),
                              ],
                            ),
                          ),
                          const SizedBox(width: 36),
                          _buildLandingDetail(
                            image: 'assets/images/commitment_icon.png',
                            title: 'No Commitment',
                            gradient: const LinearGradient(
                              begin: AlignmentDirectional.topCenter,
                              end: AlignmentDirectional.bottomCenter,
                              colors: [
                                Color(0x1aC2B8FF),
                                Color(0x1a8A78F0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 458,
                          height: 458,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Color(0xffFFFAFA),
                            color: Color(0xffFFF3F4),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 600,
                        child: Image.asset(
                          'assets/images/landing_hero.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                          // height: 250,
                          child: Container(
                            height: 182,
                            width: 298,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(27),
                                topRight: Radius.circular(27),
                                bottomLeft: Radius.circular(27),
                                bottomRight: Radius.zero,
                              ),
                            ),
                            child: Column(
                              children: [
                                Transform.translate(
                                  offset: const Offset(0, -39),
                                  child: Container(
                                    width: 79,
                                    height: 79,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffFFC1CD),
                                          Color(0xffFF8499),
                                        ],
                                      ),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Color(0x73FF8499),
                                          offset: Offset(0, 8),
                                          blurRadius: 18.0,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/3_person_icon.png',
                                        fit: BoxFit.cover,
                                        width: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(0, -30),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Our Teachers',
                                            style: TextStyle(
                                              color: Color(0xff504A65),
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          Image.asset(
                                            'assets/images/heart_icon.png',
                                            fit: BoxFit.cover,
                                            width: 24,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      SizedBox(
                                        width: 219,
                                        height: 63,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                width: 63,
                                                height: 63,
                                                alignment: Alignment.center,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xffF7F6FF),
                                                ),
                                                child: const Text(
                                                  '5+',
                                                  style: TextStyle(
                                                    color: Color(0xff504A65),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SizedBox(
                                                width: 172,
                                                child: Stack(
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/avatar_1.png'),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Image.asset(
                                                            'assets/images/avatar_3.png')),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Image.asset(
                                                            'assets/images/avatar_2.png')),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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

  Widget _buildLandingDetail({
    required String image,
    required String title,
    required LinearGradient gradient,
  }) {
    return Row(
      children: [
        Container(
          width: 53,
          height: 53,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: gradient,
          ),
          child: Center(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 32,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xff504A65),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
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
              gradient: const LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  Color(0xffC2B8FF),
                  Color(0xff8A78F0),
                ],
              ),
              boxShadow: const [
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
                const SizedBox(width: 8),
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

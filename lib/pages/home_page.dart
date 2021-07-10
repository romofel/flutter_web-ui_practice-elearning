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
          _buildLandingSection(),
          const SizedBox(height: 24),
          _buildCompanyAffiliatesSection(),
          _buildCoursesSection(),
          _buildHelpSection(),
          _buildCreatorSection(),
          _buildTestimonialsSection(),
        ],
      ),
    );
  }

  Padding _buildTestimonialsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 72),
      child: Column(
        children: [
          _buildSectionHeader(
            title: 'Testimonials',
            subtitle: 'Student Community\nFeedback',
            action: 'See all feedback',
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Transform.rotate(
                angle: 28.25,
                child: Container(
                  width: 82,
                  height: 82,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0x40CCD0DD),
                        offset: Offset(20, 33),
                        blurRadius: 74,
                      ),
                    ],
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        'assets/images/right_arrow.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              _buildTestimonialCard(
                avatarPath: 'assets/images/feedback_avatar_1.png',
                reviews: 5.0,
                name: 'Edwin Reyes',
                title: 'Student',
                content:
                    '“I have loved that it\'s giving me the opportunity to learn at my own pace and it\'s also super cost effective!”',
              ),
              _buildTestimonialCard(
                avatarPath: 'assets/images/feedback_avatar_2.png',
                reviews: 4.9,
                name: 'Morgan Turner',
                title: 'Student',
                content:
                    '“The classes are really well structured and well explained, I came out at the end with actual new knowledge.”',
              ),
              Container(
                width: 82,
                height: 82,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color(0x40CCD0DD),
                      offset: Offset(20, 33),
                      blurRadius: 74,
                    ),
                  ],
                ),
                child: Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      'assets/images/right_arrow.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 128),
          Column(
            children: [
              const Text(
                'Subscribe Newsletter',
                style: TextStyle(
                  color: Color(0xff3A334F),
                  fontSize: 54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Subscribed to our newsletter to get regular update about our courses.',
                style: TextStyle(
                  color: Color(0xff504A65),
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  height: 1.4,
                ),
              ),
              SizedBox(
                width: 462,
                child: Row(
                  children: [
                    SizedBox(
                      width: 288,
                      height: 77,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffF0F4F5),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xffF0F4F5),
                            ),
                          ),
                          hoverColor: Colors.transparent,
                          prefixIcon: Container(
                            width: 30,
                            height: 24,
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            margin: const EdgeInsets.only(left: 16, right: 8),
                            alignment: Alignment.center,
                            child: Center(
                              child: Image.asset(
                                'assets/images/subscribe_message_icon.png',
                                fit: BoxFit.cover,
                                width: 20,
                              ),
                            ),
                          ),
                          hintText: 'Enter your mail',
                          hintStyle: const TextStyle(
                            color: Color(0xffD9DCE2),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          suffixIcon: const SizedBox(height: 77),
                        ),
                      ),
                    ),
                    Container(
                      width: 152,
                      height: 77,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffFFC1CD),
                            Color(0xffFF8499),
                          ],
                        ),
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Color(0x80FFBFCB),
                            offset: Offset(0, 15),
                            blurRadius: 38,
                          ),
                        ],
                      ),
                      child: const Text(
                        'Subscribe',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildTestimonialCard({
    required String avatarPath,
    required double reviews,
    required String name,
    required String title,
    required String content,
  }) {
    return Container(
      width: 431,
      height: 383,
      padding: const EdgeInsets.only(
        left: 41,
        top: 38,
        right: 78,
        bottom: 38,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffF0F4F5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 104,
                height: 104,
                child: Image.asset(
                  avatarPath,
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 18,
                height: 18,
                child: Image.asset(
                  'assets/images/course_star_icon.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                reviews.toStringAsFixed(1),
                style: const TextStyle(
                  color: Color(0xff3A334F),
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: const TextStyle(
              color: Color(0xff3A334F),
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff504A65),
              fontSize: 22,
              fontWeight: FontWeight.normal,
            ),
          ),
          const Spacer(),
          Text(
            content,
            style: const TextStyle(
              color: Color(0xff504A65),
              fontSize: 18,
              fontWeight: FontWeight.normal,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildCreatorSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 72),
      child: Column(
        children: [
          _buildSectionHeader(
            title: 'Instructors',
            subtitle: 'Classes Taught\nby real Creators',
            action: 'See all instructors',
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCreatorCard(
                imgPath: 'assets/images/creator_img_1.png',
                name: 'James Bennet',
                title: 'App Development',
                rating: 5.0,
              ),
              _buildCreatorCard(
                imgPath: 'assets/images/creator_img_2.png',
                name: 'Marti Scorsese',
                title: '3D Animation',
                rating: 4.9,
              ),
              _buildCreatorCard(
                imgPath: 'assets/images/creator_img_3.png',
                name: 'Charlie Burns',
                title: 'Web Development',
                rating: 4.8,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildCreatorCard({
    required String imgPath,
    required String name,
    required String title,
    required double rating,
  }) {
    return Container(
      width: 354,
      height: 514,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 401,
            child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xff3A334F),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: Image.asset(
                        'assets/images/creator_paper_icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xff504A65),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: Image.asset(
                        'assets/images/course_star_icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      rating.toStringAsFixed(1),
                      style: const TextStyle(
                        color: Color(0xff504A65),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildHelpSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 72),
      child: Column(
        children: [
          _buildSectionHeader(
            title: 'Walk-through',
            subtitle: 'How does it\nwork?',
            action: 'See your free courses',
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHelpCard(
                index: '01',
                title: 'Choose an appropriate course.',
                content:
                    'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.',
              ),
              _buildHelpCard(
                index: '02',
                title: 'Take classes through the internet.',
                content:
                    'It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures.',
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x26C2B8FF),
                    Color(0x268A78F0),
                  ],
                ),
              ),
              _buildHelpCard(
                index: '03',
                title: 'Obtain your certificate',
                content:
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildHelpCard({
    required String index,
    required String title,
    required String content,
    LinearGradient gradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0x26FFC1CD),
        Color(0x26FF8499),
      ],
    ),
  }) {
    return Container(
      width: 354,
      height: 401,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffF0F4F5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Transform.translate(
                offset: const Offset(16, 0),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: gradient,
                  ),
                ),
              ),
              Text(
                index,
                style: const TextStyle(
                  color: Color(0xff3A334F),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff3A334F),
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 18),
          Text(
            content,
            style: const TextStyle(
              color: Color(0xff504A65),
              fontSize: 16,
              fontWeight: FontWeight.w300,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              const Text(
                'Learn More',
                style: TextStyle(
                  color: Color(0xff3A334F),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Image.asset(
                'assets/images/right_arrow.png',
                fit: BoxFit.cover,
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding _buildCoursesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 128),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader(
            title: 'Featured Courses',
            subtitle: 'Pick a Course to\nGet Started',
            action: 'View all courses',
          ),
          const SizedBox(height: 62),
          Wrap(
            direction: Axis.horizontal,
            spacing: 66,
            runSpacing: 72,
            children: [
              _buildCourseCard(
                cardHeroPath: 'assets/images/course_card_img_1.png',
                difficulty: 'Advance',
                weeks: 6,
                price: 90.00,
                rating: 5.0,
                title: 'The Ultimate Blender Guide',
                instructorName: 'James Bennet',
                instructorTitle: '3D Animator',
                avatarPath: 'assets/images/course_card_avatar_1.png',
              ),
              _buildCourseCard(
                cardHeroPath: 'assets/images/course_card_img_2.png',
                difficulty: 'Basic',
                weeks: 5,
                price: 85.00,
                rating: 4.8,
                title: 'The Complete IOS APP Development',
                instructorName: 'Marti Scoresese',
                instructorTitle: 'App Developer',
                avatarPath: 'assets/images/course_card_avatar_2.png',
              ),
              _buildCourseCard(
                cardHeroPath: 'assets/images/course_card_img_3.png',
                difficulty: 'Basic',
                weeks: 8,
                price: 80.00,
                rating: 4.8,
                title: 'The Complete Development Web Course',
                instructorName: 'Bradley Hunter',
                instructorTitle: 'Web Developer',
                avatarPath: 'assets/images/course_card_avatar_3.png',
              ),
              _buildCourseCard(
                cardHeroPath: 'assets/images/course_card_img_4.png',
                difficulty: 'Advance',
                weeks: 6,
                price: 65.00,
                rating: 4.9,
                title: 'SEO Training Masterclass 2021',
                instructorName: 'Charlie Burns',
                instructorTitle: 'Seo Expert',
                avatarPath: 'assets/images/course_card_avatar_4.png',
              ),
            ],
          ),
          // Row(),
        ],
      ),
    );
  }

  Column _buildSectionHeader(
      {required String title,
      required String subtitle,
      required String action}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              subtitle,
              style: const TextStyle(
                color: Color(0xff3A334F),
                fontSize: 48,
                fontWeight: FontWeight.w600,
              ),
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToLastDescent: false),
            ),
            const Spacer(),
            Text(
              action,
              style: const TextStyle(
                color: Color(0xff3A334F),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(
                'assets/images/right_arrow.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Stack _buildSectionTitle(String title) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Transform.translate(
          offset: const Offset(-76, 0),
          child: Container(
            width: 88,
            height: 88,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  Color(0x1aFFC1CD),
                  Color(0x1aFF8499),
                ],
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Text(
          title,
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
      ],
    );
  }

  Container _buildCourseCard({
    required String difficulty,
    required int weeks,
    required String title,
    required double price,
    required double rating,
    required String avatarPath,
    required String instructorName,
    required String instructorTitle,
    required String cardHeroPath,
  }) {
    return Container(
      width: 537,
      height: 277,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 18.0,
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 230,
            child: Image.asset(
              cardHeroPath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 25, bottom: 25, left: 34, right: 52),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                  width: 221,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                        child: Image.asset(
                          'assets/images/course_advance_icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        difficulty,
                        style: const TextStyle(
                          color: Color(0xff3A334F),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 24,
                        child: Image.asset(
                          'assets/images/course_calendar_icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '$weeks Weeks',
                        style: const TextStyle(
                          color: Color(0xff3A334F),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22),
                SizedBox(
                  width: 221,
                  child: Text(
                    title,
                    maxLines: 2,
                    style: const TextStyle(
                      color: Color(0xff3A334F),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 167,
                  height: 27,
                  child: Row(
                    children: [
                      Text(
                        '\$${price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Color(0xff3A334F),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/course_star_icon.png',
                        fit: BoxFit.cover,
                        width: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        rating.toStringAsFixed(1),
                        style: const TextStyle(
                          color: Color(0xff3A334F),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    SizedBox(
                      width: 47,
                      height: 47,
                      child: Image.asset(
                        avatarPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          instructorName,
                          style: const TextStyle(
                            color: Color(0xff3A334F),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          instructorTitle,
                          style: const TextStyle(
                            color: Color(0xff504A65),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildCompanyAffiliatesSection() {
    return Padding(
      padding: const EdgeInsets.only(right: 150),
      child: SizedBox(
        height: 191,
        child: Row(
          children: [
            SizedBox(
              width: 136,
              child: Image.asset(
                'assets/images/thumbs_up.png',
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              'Trusted by\n600+ Companies',
              style: TextStyle(
                color: Color(0xff3A334F),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 32,
              width: 584,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/slack.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/ripple.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/hubspot.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: 82,
              height: 82,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0x40CCD0DD),
                    offset: Offset(20, 33),
                    blurRadius: 74,
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/right_arrow.png',
                  fit: BoxFit.cover,
                  width: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildLandingSection() {
    return Padding(
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
                              color: const Color(0xffFF8499).withOpacity(.8),
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
                  left: 0,
                  child: SizedBox(
                    width: 161,
                    height: 178,
                    child: Image.asset(
                      'assets/images/dot_grid.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
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
                  child: Transform.translate(
                    offset: const Offset(48, 48),
                    child: Container(
                      width: 88,
                      height: 88,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: AlignmentDirectional.topCenter,
                          end: AlignmentDirectional.bottomCenter,
                          colors: [
                            Color(0x1aFFC1CD),
                            Color(0x1aFF8499),
                          ],
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Transform.translate(
                    offset: const Offset(0, 24),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Image.asset(
                                                        'assets/images/avatar_3.png')),
                                                Align(
                                                    alignment: Alignment.center,
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
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 270,
                    height: 209,
                    child: Image.asset(
                      'assets/images/like-notification-icon-smartphone-social-media-notification-icon-with-heart-symbol-3d-rendering 1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Transform.translate(
                    offset: const Offset(80, 0),
                    child: Container(
                      width: 94,
                      height: 94,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0x26C2B8FF),
                            Color(0x268A78F0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-48, 120),
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x26C2B8FF),
                          Color(0x268A78F0),
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

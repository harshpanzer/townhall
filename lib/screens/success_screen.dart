import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Success_Screen extends StatefulWidget {
  const Success_Screen({super.key});

  @override
  State<Success_Screen> createState() => _Success_ScreenState();
}

class _Success_ScreenState extends State<Success_Screen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff6f4f7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/images/Comp 1.json',
                  width: (width > 600) ? width * 0.15 : width * 0.3,
                  fit: BoxFit.fitWidth),
            ],
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Registered Successfully!',
                textStyle: GoogleFonts.getFont(
                  "Ubuntu",
                  fontSize: (width > 600) ? width * 0.060 : width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          )
        ],
      ),
    );
  }
}

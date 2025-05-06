import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:teleconsultation_medicale/intro_screens/intro_page_1.dart';
import 'package:teleconsultation_medicale/intro_screens/intro_page_2.dart';
import 'package:teleconsultation_medicale/intro_screens/intro_page_3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Pages
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = index == 2;
              });
            },
            children: const [IntroPage1(), IntroPage2(), IntroPage3()],
          ),

          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Skip
                GestureDetector(
                  onTap: () => _controller.jumpToPage(2),
                  child: Text(
                    "Passer".tr(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // Indicateur
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    spacing: 10,
                    activeDotColor: Color.fromARGB(255, 22, 46, 73),
                    dotColor: Color(0xFFE0E0E0),
                  ),
                ),

                // Next ou Done
                GestureDetector(
                  onTap: () {
                    if (onLastPage) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(
                    onLastPage ? "Terminer".tr() : "Suivant".tr(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w600,
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
}

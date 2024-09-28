import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swtstay/features/auth_screens/screens/sign_screen.dart';
import 'package:swtstay/features/onboarding/onboarding_widgets.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with SingleTickerProviderStateMixin {
  bool _showScreenTwo = false;
  bool _showScreenThree = false;
  bool _showGetStartedOne = true;
  late AnimationController _controller;
  late Animation<double> _scaleAnimationOne;
  late Animation<double> _scaleAnimationTwo;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Define the animations
    _scaleAnimationOne = Tween<double>(begin: 1.0, end: 0.9).animate(_controller);
    _scaleAnimationTwo = Tween<double>(begin: 1.0, end: 1.1).animate(_controller);

    // Start the first transition
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _showScreenTwo = true;
      });

      // Start the scaling animations after the screen transition
      Timer(const Duration(seconds: 0), () {
        _controller.forward();

        // Transition to screen three after showing screen two for 2 seconds
        Timer(const Duration(seconds: 4), () {
          setState(() {
            _showScreenThree = true;
          });

          // Switch from GetStartedOne to GetStartedTwo after 4 seconds
          Timer(const Duration(seconds: 6), () {
            setState(() {
              _showGetStartedOne = false;
            });
          });
        });
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: AnimatedOpacity(
              opacity: _showScreenTwo ? 0.0 : 1.0,
              duration: const Duration(seconds: 1),
              child: _buildScreenOne(),
            ),
          ),
          Center(
            child: AnimatedOpacity(
              opacity: _showScreenTwo && !_showScreenThree ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: _buildScreenTwo(),
            ),
          ),
          Center(
            child: AnimatedOpacity(
              opacity: _showScreenThree ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: const BuildScreenThree(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScreenOne() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: GColors.mainColor,
      ),
      child: const Image(image: AssetImage(GImage.logoWhite)),
    );
  }

  Widget _buildScreenTwo() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: GColors.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _scaleAnimationOne,
            child: const Image(image: AssetImage(GImage.logoBlue)),
          ),
          verticalGap(20),
          ScaleTransition(
            scale: _scaleAnimationTwo,
            child: const Image(image: AssetImage(GImage.logoName)),
          ),
        ],
      ),
    );
  }

  // Widget _buildScreenThree() {
  //   return Scaffold(
  //     body: Center(
  //       child: AnimatedSwitcher(
  //         duration: const Duration(seconds: 3), // Increase duration here
  //         switchInCurve: Curves.easeIn,
  //         switchOutCurve: Curves.easeOut,
  //         child: _showGetStartedOne
  //             ? const GetStatedOne(key: ValueKey(1))
  //             : GetStatedTwo(
  //                 key: const ValueKey(2),
  //                 onTap: () async {
  //                   final prefs = await SharedPreferences.getInstance();
  //                   await prefs.setBool('onboardingCompleted', true);
  //                   // ignore: use_build_context_synchronously
  //                   Navigator.of(context).pushReplacement(
  //                     MaterialPageRoute(builder: (context) => const SignInScreen()),
  //                   );
  //                   // navigateToScreen(context, const SignInScreen());
  //                 },
  //               ),
  //       ),
  //     ),
  //   );
  // }
}

class BuildScreenThree extends StatefulWidget {
  const BuildScreenThree({super.key});

  @override
  State<BuildScreenThree> createState() => _BuildScreenThreeState();
}

class _BuildScreenThreeState extends State<BuildScreenThree> {
  // final PageController _pageController = PageController();
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildScreenThree() {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              GetStatedOne(
                key: const ValueKey(1),
                onContinue: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
              ),
              GetStatedTwo(
                key: const ValueKey(2),
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('onboardingCompleted', true);
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SignInScreen()),
                  );
                },
                onGuestTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('onboardingCompleted', true);
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SignInScreen()),
                  );
                },
              ),
            ],
          ),
          Positioned(
            top: 220.h,
            left: 16.w,
            right: 16.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: List.generate(2, (int index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 6.h,
                  width: _currentPage == index ? 30.w : 6.w,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.dg),
                    color: _currentPage == index ? GColors.mainColor : Colors.white,
                    // shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildScreenThree();
  }
}

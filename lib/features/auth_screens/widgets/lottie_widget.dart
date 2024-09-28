import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieHand extends StatelessWidget {
  final Animation<double>? controller;
  final void Function(LottieComposition)? onLoaded;
  const LottieHand({super.key, this.controller, this.onLoaded});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/hand_shake.json',
        controller: controller, onLoaded: onLoaded);
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

class Alert {
  static Alert? _instance;

  factory Alert() {
    _instance ??= Alert._internal();
    return _instance!;
  }

  Alert._internal();

  void show(BuildContext context,
      {String message = 'message', Color color = Colors.black}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlurOverlaySnackBar(
          message: message,
          color: color,
        );
      },
    );
  }
}

class BlurOverlaySnackBar extends StatelessWidget {
  final String message;
  final Color color;
  const BlurOverlaySnackBar(
      {required this.color, required this.message, super.key});
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: AlertDialog(
        backgroundColor: color.withOpacity(0.7),
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class DialogAlert {
  static DialogAlert? _instance;

  factory DialogAlert() {
    _instance ??= DialogAlert._internal();
    return _instance!;
  }

  DialogAlert._internal();

  void show(BuildContext context,
      {String message = 'More Actions',
      required List<Widget> actions,
      Color color = Colors.black}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlurOverlayDialog(
          message: message,
          color: color,
          actions: actions,
        );
      },
    );
  }
}

class BlurOverlayDialog extends StatelessWidget {
  final String message;
  final Color color;
  final List<Widget> actions;
  const BlurOverlayDialog(
      {required this.actions,
      required this.color,
      required this.message,
      super.key});
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: AlertDialog(
        backgroundColor: color.withOpacity(0.7),
        contentPadding:
            const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 15),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message, style: const TextStyle(color: Colors.black)),
            const SizedBox(height: 16),
            Column(children: actions)
          ],
        ),
      ),
    );
  }
}

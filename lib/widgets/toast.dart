// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// void showToast(String message) {
//   Fluttertoast.showToast(
//     msg: message,
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     backgroundColor: Colors.red,
//     textColor: Colors.white,
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// void showErrorMessage(String message) {
//   Fluttertoast.showToast(
//     msg: message,
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.TOP,
//     backgroundColor: Colors.red,
//     textColor: Colors.white,
//   );
// }

// void showSuccessMessage(String message) {
//   Fluttertoast.showToast(
//     msg: message,
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.TOP,
//     backgroundColor: Colors.green,
//     textColor: Colors.white,
//   );
// }

void showCustomToast({
  required BuildContext context,
  required String message,
  required Color backgroundColor,
  required Color textColor,
  required Duration duration,
}) {
  final toast = Container(
    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
      message,
      style: TextStyle(color: textColor, fontSize: 16.0),
    ),
  );

  ToastManager.showToast(
    context: context,
    toast: toast,
    duration: duration,
  );
}

class ToastManager {
  static void showToast({
    required BuildContext context,
    required Widget toast,
    required Duration duration,
  }) {
    OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 50.0,
        left: MediaQuery.of(context).size.width * 0.1,
        right: MediaQuery.of(context).size.width * 0.1,
        child: Material(
          color: Colors.transparent,
          child: toast,
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry);

    Future.delayed(duration, () {
      overlayEntry.remove();
    });
  }
}

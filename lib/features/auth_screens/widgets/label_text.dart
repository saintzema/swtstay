import 'package:flutter/material.dart';
import 'package:swtstay/widgets/textstyles.dart';

class LabelText extends StatelessWidget {
  final String label;
  const LabelText({
    super.key,
    required this.context,
    required this.label,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: appTextStyle14600(
        context,
      ),
    );
  }
}

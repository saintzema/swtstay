import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/main.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: mediumTextStyle700(context, GColors.mainBlackTextColor),
            ),
            ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Enable in-app notification',
                  style: appTextStyle14(context),
                ),
                subtitle: Text(
                  'Receive live updates from SwtStay.com',
                  style: appTextStyle12(context),
                ),
                trailing: Transform.scale(
                  scale: 0.8,
                  child: Switch(
                    activeColor: isDarkMode(context) ? GColors.hintTextColor : GColors.mainColor,
                    value: _isSwitched,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                  ),
                )),
            ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Subscribe to our newsletters',
                  style: appTextStyle14(context),
                ),
                subtitle: Text(
                  'Stay updated with activities on SwtStay.com',
                  style: appTextStyle12(context),
                ),
                trailing: Transform.scale(
                  scale: 0.8,
                  child: Switch(
                    activeColor: isDarkMode(context) ? GColors.hintTextColor : GColors.mainColor,
                    value: _isSwitched,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                  ),
                )),
            ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Switch theme',
                  style: appTextStyle14(context),
                ),
                subtitle: isDarkMode(context)
                    ? Text(
                        'Turn of light mode',
                        style: appTextStyle12(context),
                      )
                    : Text(
                        'Turn of dark mode',
                        style: appTextStyle12(context),
                      ),
                trailing: Transform.scale(scale: 0.8, child: const ToggleSwitch())),
          ],
        ),
      ),
    );
  }
}

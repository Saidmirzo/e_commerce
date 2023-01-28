import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../config/constants/app_colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterSwitch(
          value: isActive,
          height: 24,
          width: 47,
          padding: 4,
          toggleSize: 16,
          toggleColor: AppColors.buttonColor,
          inactiveColor: AppColors.switchColor,
          onToggle: (value) {
            setState(() {
              isActive = !isActive;
            });
          },
        ),
      ],
    );
  }
}


import 'dart:ui';

import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_decorations.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/pages/main/components/masked_image.dart';
import 'package:e_commerce/presentation/pages/main/components/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class TextButtonGradient extends StatelessWidget {
  const TextButtonGradient({
    Key? key,
    this.text,
    required this.onTap,
    this.child,
    this.size,
    this.borderRaius,
  }) : super(key: key);
  final String? text;
  final Function onTap;
  final Widget? child;
  final Size? size;
  final double? borderRaius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: ClipRRect(
          
          borderRadius: BorderRadius.circular(borderRaius ?? 5.r),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              height: size != null ? size!.height : null,
              width: size != null ? size!.width : null,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                horizontal: 11.w,
                vertical: 5.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRaius ?? 5.r),
                gradient: LinearGradient(
                  colors: [
                    AppColors.baseLight.shade100.withOpacity(.4),
                    AppColors.baseLight.shade100.withOpacity(.1),
                  ],
                ),
              ),
              child: child ??
                  Text(
                    text ?? '',
                    style: AppTextStyles.body10w5,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
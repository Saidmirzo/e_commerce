import 'dart:ui';

import 'package:e_commerce/config/constants/app_colors.dart';
import 'package:e_commerce/config/constants/app_decorations.dart';
import 'package:e_commerce/config/constants/app_text_styles.dart';
import 'package:e_commerce/config/constants/assets.dart';
import 'package:e_commerce/presentation/pages/main/components/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VideoContent extends StatelessWidget {
  const VideoContent({
    Key? key,
    required this.urls,
  }) : super(key: key);

  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: urls.map((String url) {
        return VideoItem(url: url);
      }).toList(),
    );
  }
}

class VideoItem extends StatelessWidget {
  const VideoItem({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyVideoPlayer(url: url),
        const Categories(),
        const BottomAbout(),
        const Opinons(),
      ],
    );
  }
}

class BottomAbout extends StatelessWidget {
  const BottomAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 480.h,
        padding: EdgeInsets.only(bottom: 90.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [.1, 1],
            colors: [
              AppColors.black,
              Colors.transparent,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                TextButtonGradient(text: '#boho gal', onTap: () {}),
                TextButtonGradient(text: '#beach wibes', onTap: () {}),
                TextButtonGradient(text: '#denim', onTap: () {}),
                TextButton(
                  onPressed: () {},
                  style: AppDecorations.buttonStyle(
                    border: BorderSide(color: AppColors.borderColor2),
                    bgColor: Colors.transparent,
                    padding: EdgeInsets.all(0),
                    size: Size(10.h, 10.h),
                    borderRadius: 6,
                  ),
                  child: Text(
                    '+5',
                    style: AppTextStyles.body10w4,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TextButtonGradient extends StatelessWidget {
  const TextButtonGradient({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            margin: EdgeInsets.only(right: 10.w),
            padding: EdgeInsets.symmetric(
              horizontal: 11.w,
              vertical: 5.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              gradient: LinearGradient(
                colors: [
                  AppColors.baseLight.shade100.withOpacity(.5),
                  AppColors.baseLight.shade100.withOpacity(.1),
                ],
              ),
            ),
            child: Text(
              text,
              style: AppTextStyles.body10w5,
            ),
          ),
        ),
      ),
    );
  }
}

class Opinons extends StatelessWidget {
  const Opinons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 340.h,
      right: 10.w,
      child: SizedBox(
        height: 220.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.claps),
                  Text(
                    '1 323',
                    style: AppTextStyles.body12w5,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.star),
                  Text(
                    '102',
                    style: AppTextStyles.body12w5,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.send),
                  Text(
                    '11',
                    style: AppTextStyles.body12w5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 46.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.w),
        child: Row(
          children: [
            Container(
              height: 42.h,
              width: 42.h,
              margin: EdgeInsets.only(right: 24.5.w),
              padding: EdgeInsets.all(9.h),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.filterBgColor,
              ),
              child: SvgPicture.asset(Assets.icons.filterSearch),
            ),
            TextButton(
              onPressed: () {},
              style: AppDecorations.buttonStyle(
                borderRadius: 37.r,
                padding: EdgeInsets.symmetric(
                  horizontal: 28.w,
                  vertical: 11.h,
                ),
              ),
              child: Text(
                'Popular',
                style: AppTextStyles.body13w7
                    .copyWith(color: AppColors.textColor1),
              ),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {},
              style: AppDecorations.buttonStyle(
                bgColor: Colors.transparent,
                border: BorderSide(
                  color: AppColors.baseLight.shade100.withOpacity(.3),
                ),
                borderRadius: 37.r,
                padding: EdgeInsets.symmetric(
                  horizontal: 28.w,
                  vertical: 11.h,
                ),
              ),
              child: Text('Trending', style: AppTextStyles.body13w7),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {},
              style: AppDecorations.buttonStyle(
                border: BorderSide(
                  color: AppColors.baseLight.shade100.withOpacity(.3),
                ),
                bgColor: Colors.transparent,
                borderRadius: 37.r,
                padding: EdgeInsets.symmetric(
                  horizontal: 28.w,
                  vertical: 11.h,
                ),
              ),
              child: Text('Sale now', style: AppTextStyles.body13w7),
            ),
          ],
        ),
      ),
    );
  }
}

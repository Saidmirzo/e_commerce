import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/constants.dart';

class MoreImagesViewWidget extends StatelessWidget {
  MoreImagesViewWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final PageController _pageController = PageController(viewportFraction: .95);
  final VideoModel url;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      padding: EdgeInsets.only(top: 200.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderIndicator(
            pageController: _pageController,
          ),
          Container(
            margin: EdgeInsets.only(top: 18.h),
            height: 295.h,
            child: PageView(
              controller: _pageController,
              pageSnapping: true,
              children: url.moreImgUrls
                  .map(
                    (imgUrl) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.5.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          image: AssetImage(imgUrl),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliderIndicator extends StatefulWidget {
  const SliderIndicator({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;

  @override
  State<SliderIndicator> createState() => _SliderIndicatorState();
}

class _SliderIndicatorState extends State<SliderIndicator> {
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(() {
      if (widget.pageController.page! > .5) {
        setState(() {
          activeIndex = widget.pageController.page!.ceil();
        });
      } else {
        setState(() {
          activeIndex = widget.pageController.page!.floor();
        });
      }
      log(widget.pageController.page!.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: List.generate(
          2,
          (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            margin: EdgeInsets.symmetric(horizontal: 3.w),
            height: 2.h,
            width: index != activeIndex ? 7.w : 25.w,
            decoration: BoxDecoration(
              color: AppColors.accentColor,
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
      ),
    );
  }
}

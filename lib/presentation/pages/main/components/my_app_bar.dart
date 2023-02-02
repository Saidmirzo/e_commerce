import 'package:e_commerce/presentation/pages/main/components/bag_bottom_sheet/your_bag_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/assets.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  double activeIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(() {
      setState(() {
        activeIndex = widget.pageController.page ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 40.h,
              color: AppColors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    widget.pageController.jumpTo(0);
                  },
                  icon: SvgPicture.asset(
                    Assets.icons.flash,
                    color: activeIndex == 0 ? AppColors.accentColor : null,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    widget.pageController.jumpToPage(1);
                  },
                  icon: SvgPicture.asset(
                    Assets.icons.search,
                    color: activeIndex == 1 ? AppColors.accentColor : null,
                  ),
                ),
                IconButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
                  onPressed: () {
                    showBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return const YourBagBottomSheet();
                      },
                    );
                  },
                  icon: SvgPicture.asset(Assets.icons.union),
                  iconSize: 70,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.icons.notification,
                    color: activeIndex == 3 ? AppColors.accentColor : null,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.icons.frame,
                    color: activeIndex == 4 ? AppColors.accentColor : null,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

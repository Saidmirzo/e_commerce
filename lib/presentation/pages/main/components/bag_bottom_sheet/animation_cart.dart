import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/app_colors.dart';

class AnimatedCart extends StatefulWidget {
  const AnimatedCart({
    Key? key,
    required this.path,
    required this.isAnim,
  }) : super(key: key);

  final String path;
  final bool isAnim;

  @override
  State<AnimatedCart> createState() => _AnimatedCartState();
}

class _AnimatedCartState extends State<AnimatedCart>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    animation = Tween(
      begin: const Offset(0, 0),
      end: const Offset(0, -10),
    ).animate(animationController);
    animationController.addListener(() {
      if (widget.isAnim) {
        if (animationController.status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (animationController.status == AnimationStatus.dismissed) {
          animationController.forward();
        }
      } else {
        if (animationController.status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (animationController.status == AnimationStatus.dismissed) {
          animationController.stop();
        }
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isAnim) {
      if (animationController.status == AnimationStatus.completed) {
        animationController.reverse();
      } else {
        animationController.forward();
      }
    }
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: animation.value,
          child: Container(
            height: 146.h,
            width: 100.w,
            margin: EdgeInsets.only(bottom: 13.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.r),
              color: AppColors.cartBgColor,
            ),
            child: Image.asset(widget.path),
          ),
        );
      },
    );
  }
}
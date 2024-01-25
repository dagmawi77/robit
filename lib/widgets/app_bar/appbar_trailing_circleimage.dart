import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTrailingCircleimage extends StatelessWidget {
  AppbarTrailingCircleimage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.customBorderTL23,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 21.v,
          width: 49.h,
          fit: BoxFit.contain,
          radius: BorderRadius.only(
            topLeft: Radius.circular(23.h),
            topRight: Radius.circular(22.h),
            bottomLeft: Radius.circular(23.h),
            bottomRight: Radius.circular(22.h),
          ),
        ),
      ),
    );
  }
}

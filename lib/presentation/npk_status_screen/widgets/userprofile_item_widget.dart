import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapButtonText,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  VoidCallback? onTapButtonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAddingAnnotati,
            height: 116.v,
            width: 132.h,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 41.h),
                  child: Text(
                    userprofileItemModelObj.titleText!,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 34.h),
                    child: Text(
                      userprofileItemModelObj.dateText!,
                      style: CustomTextStyles.bodyMediumOnError,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                CustomElevatedButton(
                  height: 33.v,
                  width: 160.h,
                  text: "lbl_read_more".tr,
                  buttonTextStyle: theme.textTheme.labelSmall!,
                  onPressed: () {
                    onTapButtonText!.call();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'provider/profile_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileProvider(), child: ProfileScreen());
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  _buildArrowLeftStack(context),
                  SizedBox(height: 2.v),
                  _buildMyAccountCard(context),
                  SizedBox(height: 14.v),
                  _buildPrivacyPolicyCard(context),
                  SizedBox(height: 14.v),
                  _buildSettingsCard(context),
                  SizedBox(height: 14.v),
                  _buildHelpCenterCard(context),
                  SizedBox(height: 14.v),
                  _buildContactCard(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildLogOutCard(context)));
  }

  /// Section Widget
  Widget _buildArrowLeftStack(BuildContext context) {
    return SizedBox(
        height: 178.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 14.v),
                  decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft,
                                  height: 27.v,
                                  width: 16.h,
                                  margin: EdgeInsets.only(bottom: 74.v),
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              CustomImageView(
                                  imagePath: ImageConstant.imgUser07bWhiteA700,
                                  height: 98.v,
                                  width: 105.h,
                                  radius: BorderRadius.circular(49.h),
                                  margin:
                                      EdgeInsets.only(left: 115.h, top: 3.v),
                                  onTap: () {
                                    onTapImgUserb(context);
                                  })
                            ]),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 128.h),
                            child: Text("lbl_ali_mohamed".tr,
                                style: CustomTextStyles.bodyMediumBlack90014)),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 126.h),
                            child: Text("lbl_039828288282".tr,
                                style: CustomTextStyles.bodySmallGray50005))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgIconPen,
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 14.v, right: 17.h))
        ]));
  }

  /// Section Widget
  Widget _buildMyAccountCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.h, right: 18.h),
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
                  decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLockPrimary,
                      height: 22.v,
                      width: 20.h,
                      alignment: Alignment.center)),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 14.v, bottom: 14.v),
                  child: Text("lbl_my_account".tr,
                      style: theme.textTheme.bodySmall)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftPrimary,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 14.v))
            ]));
  }

  /// Section Widget
  Widget _buildPrivacyPolicyCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.h, right: 18.h),
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 9.v),
                  decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgClose,
                      height: 23.v,
                      width: 19.h,
                      alignment: Alignment.topCenter)),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 14.v, bottom: 14.v),
                  child: Text("lbl_privacy_policy".tr,
                      style: theme.textTheme.bodySmall)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftPrimary,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 14.v))
            ]));
  }

  /// Section Widget
  Widget _buildSettingsCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.h, right: 18.h),
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGrid,
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 23.adaptSize,
                        width: 23.adaptSize,
                        alignment: Alignment.center)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 14.v, bottom: 14.v),
                  child: Text("lbl_my_fields".tr,
                      style: theme.textTheme.bodySmall)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftPrimary,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 14.v))
            ]));
  }

  /// Section Widget
  Widget _buildHelpCenterCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.h, right: 18.h),
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgProfile,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      alignment: Alignment.center)),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 14.v, bottom: 14.v),
                  child: Text("lbl_help_center".tr,
                      style: theme.textTheme.bodySmall)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftPrimary,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 14.v))
            ]));
  }

  /// Section Widget
  Widget _buildContactCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.h, right: 18.h),
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGrid,
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        alignment: Alignment.center)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 14.v, bottom: 14.v),
                  child:
                      Text("lbl_rate_us".tr, style: theme.textTheme.bodySmall)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftPrimary,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 14.v))
            ]));
  }

  /// Section Widget
  Widget _buildLogOutCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 33.h, right: 33.h, bottom: 49.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgClockPrimary,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      alignment: Alignment.center)),
              Padding(
                  padding: EdgeInsets.only(left: 24.h, top: 4.v, bottom: 4.v),
                  child:
                      Text("lbl_log_out".tr, style: theme.textTheme.bodySmall)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftPrimary,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v))
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the myAccountScreen when the action is triggered.
  onTapImgUserb(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myAccountScreen,
    );
  }
}

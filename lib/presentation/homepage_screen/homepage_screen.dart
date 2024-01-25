import 'models/homepage_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/widgets/app_bar/appbar_leading_image.dart';
import 'package:robit/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:robit/widgets/app_bar/custom_app_bar.dart';
import 'package:robit/widgets/custom_elevated_button.dart';
import 'provider/homepage_provider.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  HomepageScreenState createState() => HomepageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomepageProvider(), child: HomepageScreen());
  }
}

class HomepageScreenState extends State<HomepageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 433.h,
                child: Column(children: [
                  _buildPlaylist(context),
                  SizedBox(height: 54.v),
                  Expanded(
                      child:
                          SingleChildScrollView(child: _buildHomepage(context)))
                ])),
            bottomNavigationBar: _buildHome(context)));
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return SizedBox(
        height: 253.v,
        width: 408.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  margin: EdgeInsets.only(left: 12.h, right: 26.h),
                  padding: EdgeInsets.all(13.h),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup7),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.v),
                        Text("lbl_29".tr, style: theme.textTheme.displayLarge),
                        SizedBox(height: 17.v),
                        Padding(
                            padding: EdgeInsets.only(right: 74.h),
                            child: Row(children: [
                              SizedBox(
                                  width: 131.h,
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_h_32_l_27".tr,
                                            style: CustomTextStyles
                                                .bodyMedium99ebebf5),
                                        TextSpan(
                                            text: "msg_ethiopia_diredawa".tr,
                                            style: CustomTextStyles
                                                .bodyLargeffffffff)
                                      ]),
                                      textAlign: TextAlign.left)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 100.h, top: 20.v, bottom: 6.v),
                                  child: Text("lbl_cloudy".tr,
                                      style:
                                          CustomTextStyles.bodyMediumWhiteA700))
                            ]))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgSunCloudAngled,
              height: 184.v,
              width: 206.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 10.h)),
          CustomAppBar(
              height: 24.v,
              leadingWidth: 63.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgCrobitenddddddd,
                  margin: EdgeInsets.only(left: 12.h)),
              actions: [
                AppbarTrailingCircleimage(
                    imagePath: ImageConstant.imgUser07b,
                    margin:
                        EdgeInsets.only(left: 12.h, right: 12.h, bottom: 3.v),
                    onTap: () {
                      onTapUserb(context);
                    })
              ])
        ]));
  }

  /// Section Widget
  Widget _buildHomepage(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5.v),
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomElevatedButton(
              height: 54.v,
              text: "lbl_the_innovators".tr,
              margin: EdgeInsets.only(left: 1.h, right: 10.h),
              buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
              buttonTextStyle: theme.textTheme.headlineMedium!),
          SizedBox(height: 24.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("lbl_main_features".tr,
                  style: theme.textTheme.headlineSmall)),
          SizedBox(height: 22.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          onTapThirtyFive(context);
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 3.v, right: 16.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.h, vertical: 12.v),
                            decoration: AppDecoration.fillOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                      height: 75.v,
                                      width: 80.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 75.v,
                                                    width: 80.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            appTheme.whiteA700,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    40.h)))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgTicket,
                                                height: 40.v,
                                                width: 44.h,
                                                alignment: Alignment.center)
                                          ])),
                                  SizedBox(height: 15.v),
                                  SizedBox(
                                      width: 99.h,
                                      child: Text("msg_follow_your_soil".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .labelSmallPrimary)),
                                  SizedBox(height: 5.v),
                                  CustomElevatedButton(
                                      height: 30.v,
                                      width: 156.h,
                                      text: "lbl_npk_status".tr,
                                      buttonTextStyle:
                                          theme.textTheme.labelMedium!),
                                  SizedBox(height: 7.v)
                                ])))),
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          onTapThirtyFive1(context);
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 16.h, bottom: 3.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.h, vertical: 12.v),
                            decoration: AppDecoration.fillOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 75.v,
                                      width: 80.h,
                                      margin: EdgeInsets.only(left: 38.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 75.v,
                                                    width: 80.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            appTheme.whiteA700,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    40.h)))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector,
                                                height: 43.v,
                                                width: 28.h,
                                                alignment: Alignment.center)
                                          ])),
                                  SizedBox(height: 15.v),
                                  Container(
                                      width: 122.h,
                                      margin: EdgeInsets.only(left: 17.h),
                                      child: Text("msg_follow_your_soil2".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .labelSmallPrimary)),
                                  SizedBox(height: 6.v),
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.h),
                                      decoration: AppDecoration.fillPrimary
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                                width: 75.h,
                                                margin: EdgeInsets.only(
                                                    left: 8.h, top: 3.v),
                                                child: Text(
                                                    "msg_humidity_ph_status".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: theme.textTheme
                                                        .labelMedium)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowRight,
                                                height: 18.v,
                                                width: 24.h,
                                                margin: EdgeInsets.only(
                                                    left: 31.h,
                                                    top: 6.v,
                                                    bottom: 5.v))
                                          ])),
                                  SizedBox(height: 6.v)
                                ]))))
              ])),
          SizedBox(height: 25.v),
          GestureDetector(
              onTap: () {
                onTapFortyTwo(context);
              },
              child: Container(
                  width: 379.h,
                  margin: EdgeInsets.only(left: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 3.v),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 75.v,
                            width: 80.h,
                            child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 75.v,
                                          width: 80.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      40.h)))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgClock,
                                      height: 41.adaptSize,
                                      width: 41.adaptSize,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 16.h))
                                ])),
                        SizedBox(height: 9.v),
                        Container(
                            margin: EdgeInsets.only(left: 10.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 18.h, vertical: 5.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 112.h, bottom: 1.v),
                                      child: Text("lbl_analyzed_data".tr,
                                          style: theme.textTheme.labelMedium)),
                                  Container(
                                      height: 15.v,
                                      width: 29.h,
                                      margin: EdgeInsets.only(left: 90.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 11.h, vertical: 3.v),
                                      decoration: AppDecoration.fillWhiteA
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowRightPrimary,
                                          height: 8.v,
                                          width: 6.h,
                                          alignment: Alignment.centerLeft))
                                ])),
                        SizedBox(height: 4.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 34.h, right: 304.h, bottom: 13.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: CustomElevatedButton(
            height: 35.v,
            text: "lbl_home".tr,
            leftIcon: Container(
                margin: EdgeInsets.only(right: 5.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgVideo,
                    height: 27.v,
                    width: 28.h)),
            buttonStyle: CustomButtonStyles.fillOnPrimaryContainerTL17,
            buttonTextStyle: CustomTextStyles.labelMediumPrimary));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapUserb(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the npkStatusScreen when the action is triggered.
  onTapThirtyFive(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.npkStatusScreen,
    );
  }

  /// Navigates to the humuidityPhScreen when the action is triggered.
  onTapThirtyFive1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.humuidityPhScreen,
    );
  }

  /// Navigates to the analyzedDataScreen when the action is triggered.
  onTapFortyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.analyzedDataScreen,
    );
  }
}

import 'models/analyzed_data_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/widgets/app_bar/appbar_leading_image.dart';
import 'package:robit/widgets/app_bar/appbar_title.dart';
import 'package:robit/widgets/app_bar/custom_app_bar.dart';
import 'package:robit/widgets/custom_icon_button.dart';
import 'provider/analyzed_data_provider.dart';

class AnalyzedDataScreen extends StatefulWidget {
  const AnalyzedDataScreen({Key? key}) : super(key: key);

  @override
  AnalyzedDataScreenState createState() => AnalyzedDataScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AnalyzedDataProvider(),
        child: AnalyzedDataScreen());
  }
}

class AnalyzedDataScreenState extends State<AnalyzedDataScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 362.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9.h, vertical: 29.v),
                                  decoration: AppDecoration.outlinePrimary1
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder26),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: Text("lbl_this_week".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeBlack90018)),
                                        SizedBox(height: 18.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 16.h),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 25.v),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text("lbl_120".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium),
                                                            SizedBox(
                                                                height: 14.v),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                    "lbl_100"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium)),
                                                            SizedBox(
                                                                height: 13.v),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 2
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_80".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium)),
                                                            SizedBox(
                                                                height: 16.v),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 2
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_60".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium)),
                                                            SizedBox(
                                                                height: 13.v),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 2
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_40".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium)),
                                                            SizedBox(
                                                                height: 14.v),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 3
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_20".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium)),
                                                            SizedBox(
                                                                height: 16.v),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 6
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_0".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium))
                                                          ])),
                                                  Container(
                                                      height: 235.v,
                                                      width: 293.h,
                                                      margin: EdgeInsets.only(
                                                          left: 5.h, top: 15.v),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        bottom: 57
                                                                            .v),
                                                                    child: SizedBox(
                                                                        width: 290
                                                                            .h,
                                                                        child:
                                                                            Divider()))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        bottom: 92
                                                                            .v),
                                                                    child: SizedBox(
                                                                        width: 290
                                                                            .h,
                                                                        child:
                                                                            Divider()))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .topCenter,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 106
                                                                            .v),
                                                                    child: SizedBox(
                                                                        width: 290
                                                                            .h,
                                                                        child:
                                                                            Divider()))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .topCenter,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 71
                                                                            .v),
                                                                    child: SizedBox(
                                                                        width: 290
                                                                            .h,
                                                                        child:
                                                                            Divider()))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: SizedBox(
                                                                    width:
                                                                        290.h,
                                                                    child:
                                                                        Divider())),
                                                            Align(
                                                                alignment: Alignment
                                                                    .topCenter,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 35
                                                                            .v),
                                                                    child: SizedBox(
                                                                        width: 290
                                                                            .h,
                                                                        child:
                                                                            Divider()))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: SizedBox(
                                                                    height:
                                                                        213.v,
                                                                    child: VerticalDivider(
                                                                        width:
                                                                            1.h,
                                                                        thickness:
                                                                            1.v))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 73
                                                                            .h),
                                                                    child: SizedBox(
                                                                        height: 213
                                                                            .v,
                                                                        child: VerticalDivider(
                                                                            width:
                                                                                1.h,
                                                                            thickness: 1.v)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: SizedBox(
                                                                    height:
                                                                        213.v,
                                                                    child: VerticalDivider(
                                                                        width:
                                                                            1.h,
                                                                        thickness:
                                                                            1.v))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: 75
                                                                            .h),
                                                                    child: SizedBox(
                                                                        height: 213
                                                                            .v,
                                                                        child: VerticalDivider(
                                                                            width:
                                                                                1.h,
                                                                            thickness: 1.v)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: 2
                                                                            .h),
                                                                    child: SizedBox(
                                                                        height: 213
                                                                            .v,
                                                                        child: VerticalDivider(
                                                                            width:
                                                                                1.h,
                                                                            thickness: 1.v)))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 19
                                                                            .h,
                                                                        right: 239
                                                                            .h),
                                                                child: _buildWColumn(
                                                                    context,
                                                                    userImage:
                                                                        ImageConstant
                                                                            .imgGroup101,
                                                                    text: "lbl_w1"
                                                                        .tr)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 91
                                                                            .h,
                                                                        right: 167
                                                                            .h),
                                                                child: _buildWColumn(
                                                                    context,
                                                                    userImage:
                                                                        ImageConstant
                                                                            .imgGroup100,
                                                                    text: "lbl_w2"
                                                                        .tr)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 164
                                                                            .h,
                                                                        right: 94
                                                                            .h),
                                                                child: _buildWColumn(
                                                                    context,
                                                                    userImage:
                                                                        ImageConstant
                                                                            .imgGroup99,
                                                                    text: "lbl_w3"
                                                                        .tr)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 236
                                                                            .h,
                                                                        right: 22
                                                                            .h),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgGroup100,
                                                                              height: 125.v,
                                                                              width: 34.h),
                                                                          SizedBox(
                                                                              height: 3.v),
                                                                          Text(
                                                                              "lbl_w4".tr,
                                                                              style: CustomTextStyles.bodyMediumBlack90013)
                                                                        ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    margin: EdgeInsets.only(
                                                                        bottom: 14
                                                                            .v),
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            1.h,
                                                                        vertical: 5
                                                                            .v),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .fillWhiteA,
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        children: [
                                                                          SizedBox(
                                                                              height: 3.v),
                                                                          Divider(
                                                                              endIndent: 1.h)
                                                                        ])))
                                                          ]))
                                                ])),
                                        SizedBox(height: 29.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 3.h, right: 63.h),
                                            child: Row(children: [
                                              SizedBox(
                                                  width: 122.h,
                                                  child: Row(children: [
                                                    Container(
                                                        height: 18.adaptSize,
                                                        width: 18.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .lime600,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.h))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.h),
                                                        child: Text(
                                                            "lbl_48_potassium"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumErrorContainer))
                                                  ])),
                                              Container(
                                                  width: 114.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  child: Row(children: [
                                                    Container(
                                                        height: 18.adaptSize,
                                                        width: 18.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .amberA400,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.h))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.h),
                                                        child: Text(
                                                            "lbl_28_nitrogen"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumErrorContainer))
                                                  ]))
                                            ])),
                                        SizedBox(height: 9.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: Row(children: [
                                              Container(
                                                  height: 18.adaptSize,
                                                  width: 18.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.h),
                                                  child: Text(
                                                      "lbl_24_phosphorous".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumErrorContainer))
                                            ]))
                                      ])),
                              SizedBox(height: 29.v),
                              Text("lbl_basic_rates".tr,
                                  style: theme.textTheme.headlineSmall),
                              SizedBox(height: 34.v),
                              _buildFrameSeventySixStack(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 23.h, top: 15.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_soil_status".tr, margin: EdgeInsets.only(left: 65.h)));
  }

  /// Section Widget
  Widget _buildFrameSeventySixStack(BuildContext context) {
    return Container(
        height: 150.v,
        width: 362.h,
        decoration: AppDecoration.outlineBlack9002,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        SizedBox(
                            height: 150.v,
                            width: 115.h,
                            child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 150.v,
                                          width: 115.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(17.h),
                                              border: Border.all(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  width: 2.h)))),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, right: 13.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_humidity".tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeBlack90019),
                                                Text("lbl_normal".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack900_1),
                                                SizedBox(height: 46.v),
                                                SizedBox(
                                                    width: 82.h,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("lbl_30".tr,
                                                              style: CustomTextStyles
                                                                  .headlineSmallPrimary),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 6.v),
                                                              child: CustomIconButton(
                                                                  height: 25
                                                                      .adaptSize,
                                                                  width: 25
                                                                      .adaptSize,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(1
                                                                              .h),
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgArrowLeftWhiteA700)))
                                                        ]))
                                              ])))
                                ])),
                        Container(
                            height: 150.v,
                            width: 115.h,
                            margin: EdgeInsets.only(left: 242.h),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 150.v,
                                          width: 115.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(17.h),
                                              border: Border.all(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  width: 2.h)))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          right: 13.h, bottom: 14.v),
                                      child: CustomIconButton(
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          padding: EdgeInsets.all(1.h),
                                          alignment: Alignment.bottomRight,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgArrowLeftWhiteA700))),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 38.v),
                                          child: Text("lbl_normal".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900_1)))
                                ]))
                      ])))),
          Align(
              alignment: Alignment.centerRight,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 119.h),
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        SizedBox(
                            height: 150.v,
                            width: 115.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 150.v,
                                      width: 115.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(26.h),
                                          border: Border.all(
                                              color: theme.colorScheme.primary,
                                              width: 2.h)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.h),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text("lbl_salts".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeBlack90019),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: Text("lbl_high".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumBlack900_1))),
                                            SizedBox(height: 45.v),
                                            SizedBox(
                                                width: 90.h,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_202".tr,
                                                          style: CustomTextStyles
                                                              .headlineSmallPrimary),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 6.v),
                                                          child: CustomIconButton(
                                                              height:
                                                                  25.adaptSize,
                                                              width:
                                                                  25.adaptSize,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(1.h),
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgArrowLeftWhiteA700)))
                                                    ]))
                                          ])))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 143.h, top: 13.v, bottom: 112.v),
                            child: Text("lbl_heat".tr,
                                style: CustomTextStyles.bodyLargeBlack90019))
                      ])))),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  margin: EdgeInsets.only(left: 238.h, right: 9.h),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.v),
                  decoration: AppDecoration.outlinePrimary2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("lbl_water_level".tr,
                                style: CustomTextStyles.bodyLargeBlack90019)),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text("lbl_high".tr,
                                style: CustomTextStyles.bodyMediumBlack900_1)),
                        SizedBox(height: 46.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 4.v),
                                      child: Text("lbl_602".tr,
                                          style: CustomTextStyles
                                              .headlineSmallPrimary)),
                                  Container(
                                      height: 31.v,
                                      width: 26.h,
                                      margin: EdgeInsets.only(top: 5.v),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowUp,
                                                height: 26.adaptSize,
                                                width: 26.adaptSize,
                                                alignment:
                                                    Alignment.bottomCenter),
                                            CustomIconButton(
                                                height: 25.adaptSize,
                                                width: 25.adaptSize,
                                                padding: EdgeInsets.all(1.h),
                                                alignment: Alignment.topLeft,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowLeftWhiteA700))
                                          ]))
                                ]))
                      ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 14.v),
                  child: Text("lbl_25".tr,
                      style: CustomTextStyles.headlineSmallPrimary)))
        ]));
  }

  /// Common widget
  Widget _buildWColumn(
    BuildContext context, {
    required String userImage,
    required String text,
  }) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      CustomImageView(imagePath: userImage, height: 145.v, width: 35.h),
      SizedBox(height: 2.v),
      Text(text,
          style: CustomTextStyles.bodyMediumBlack90013
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}

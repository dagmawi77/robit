import 'models/nitrogen_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/humidity_page/humidity_page.dart';
import 'package:robit/presentation/photassium_page/photassium_page.dart';
import 'package:robit/widgets/app_bar/appbar_subtitle.dart';
import 'package:robit/widgets/app_bar/appbar_title.dart';
import 'package:robit/widgets/app_bar/appbar_title_image.dart';
import 'package:robit/widgets/app_bar/custom_app_bar.dart';
import 'provider/nitrogen_tab_container_provider.dart';

class NitrogenTabContainerScreen extends StatefulWidget {
  const NitrogenTabContainerScreen({Key? key}) : super(key: key);

  @override
  NitrogenTabContainerScreenState createState() =>
      NitrogenTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NitrogenTabContainerProvider(),
        child: NitrogenTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class NitrogenTabContainerScreenState extends State<NitrogenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 29.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 27.h),
                              child: Text("lbl_about_nitrogen".tr,
                                  style: theme.textTheme.headlineSmall)),
                          SizedBox(height: 6.v),
                          _buildNitrogenFrameSixtyNine(context),
                          SizedBox(height: 48.v),
                          Container(
                              height: 21.v,
                              width: 224.h,
                              margin: EdgeInsets.only(left: 25.h),
                              child: TabBar(
                                  controller: tabviewController,
                                  labelPadding: EdgeInsets.zero,
                                  labelColor: theme.colorScheme.primary,
                                  unselectedLabelColor: appTheme.gray500,
                                  tabs: [
                                    Tab(
                                        child: Container(
                                            decoration:
                                                AppDecoration.outlineBlack9001,
                                            child: Text("lbl_description".tr))),
                                    Tab(child: Text("lbl_recommendation".tr))
                                  ])),
                          SizedBox(
                              height: 402.v,
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    PhotassiumPage.builder(context),
                                    HumidityPage.builder(context)
                                  ]))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftBlack900,
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarTitle(
                    text: "lbl_npk".tr, margin: EdgeInsets.only(left: 65.h)),
                AppbarSubtitle(
                    text: "lbl_skip".tr,
                    margin: EdgeInsets.only(left: 216.h, top: 6.v, bottom: 6.v))
              ])),
          SizedBox(height: 13.v),
          Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                  width: 370.h, child: Divider(color: appTheme.gray50006)))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildNitrogenFrameSixtyNine(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 17.h),
            decoration: AppDecoration.outlineBlack900,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgWheat1,
                      height: 148.v,
                      width: 330.h,
                      radius: BorderRadius.circular(10.h)),
                  CustomImageView(
                      imagePath: ImageConstant.imgWheat3,
                      height: 147.v,
                      width: 35.h,
                      radius: BorderRadius.circular(10.h),
                      margin: EdgeInsets.only(left: 15.h))
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}

import '../humuidity_ph_screen/widgets/userprofile1_item_widget.dart';
import 'models/humuidity_ph_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/widgets/app_bar/appbar_title.dart';
import 'package:robit/widgets/app_bar/appbar_title_image.dart';
import 'package:robit/widgets/app_bar/custom_app_bar.dart';
import 'provider/humuidity_ph_provider.dart';

class HumuidityPhScreen extends StatefulWidget {
  const HumuidityPhScreen({Key? key}) : super(key: key);

  @override
  HumuidityPhScreenState createState() => HumuidityPhScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HumuidityPhProvider(), child: HumuidityPhScreen());
  }
}

class HumuidityPhScreenState extends State<HumuidityPhScreen> {
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
                    padding: EdgeInsets.only(top: 13.v),
                    child: _buildHumidityPH(context)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 223.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftBlack900,
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarTitle(
                    text: "lbl_soil_status".tr,
                    margin: EdgeInsets.only(left: 65.h))
              ])),
          SizedBox(height: 10.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: 413.h,
                  child:
                      Divider(color: theme.colorScheme.primary, indent: 1.h)))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildHumidityPH(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5.v),
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_humidity_ph_status2".tr,
              style: theme.textTheme.headlineSmall),
          SizedBox(height: 44.v),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Consumer<HumuidityPhProvider>(
                  builder: (context, provider, child) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 27.v);
                    },
                    itemCount: provider
                        .humuidityPhModelObj.userprofile1ItemList.length,
                    itemBuilder: (context, index) {
                      Userprofile1ItemModel model = provider
                          .humuidityPhModelObj.userprofile1ItemList[index];
                      return Userprofile1ItemWidget(model);
                    });
              }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}

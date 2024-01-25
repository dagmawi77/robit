import '../npk_status_screen/widgets/userprofile_item_widget.dart';
import 'models/npk_status_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/widgets/app_bar/appbar_title.dart';
import 'package:robit/widgets/app_bar/appbar_title_image.dart';
import 'package:robit/widgets/app_bar/custom_app_bar.dart';
import 'provider/npk_status_provider.dart';

class NpkStatusScreen extends StatefulWidget {
  const NpkStatusScreen({Key? key}) : super(key: key);

  @override
  NpkStatusScreenState createState() => NpkStatusScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NpkStatusProvider(), child: NpkStatusScreen());
  }
}

class NpkStatusScreenState extends State<NpkStatusScreen> {
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
                    padding: EdgeInsets.only(top: 11.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 36.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_npk_status2".tr,
                                  style: theme.textTheme.headlineSmall),
                              SizedBox(height: 46.v),
                              _buildUserProfile(context)
                            ]))))));
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
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Consumer<NpkStatusProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 27.v);
              },
              itemCount: provider.npkStatusModelObj.userprofileItemList.length,
              itemBuilder: (context, index) {
                UserprofileItemModel model =
                    provider.npkStatusModelObj.userprofileItemList[index];
                return UserprofileItemWidget(model, onTapButtonText: () {
                  onTapButtonText(context);
                });
              });
        }));
  }

  /// Navigates to the nitrogenTabContainerScreen when the action is triggered.
  onTapButtonText(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.nitrogenTabContainerScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}

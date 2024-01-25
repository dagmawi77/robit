import 'models/logout_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/widgets/custom_elevated_button.dart';
import 'provider/logout_provider.dart';

class LogoutBottomsheet extends StatefulWidget {
  const LogoutBottomsheet({Key? key}) : super(key: key);

  @override
  LogoutBottomsheetState createState() => LogoutBottomsheetState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LogoutProvider(), child: LogoutBottomsheet());
  }
}

class LogoutBottomsheetState extends State<LogoutBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 9.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL35),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(width: 34.h, child: Divider(color: appTheme.gray50004)),
          SizedBox(height: 24.v),
          Text("lbl_logout2".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 6.v),
          Divider(color: appTheme.gray5006b.withOpacity(0.27)),
          SizedBox(height: 15.v),
          Text("msg_are_you_sure_you".tr,
              style: CustomTextStyles.bodyLargeBlack90018_1),
          SizedBox(height: 35.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 8.h, right: 20.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomElevatedButton(
                                text: "lbl_cancel".tr,
                                margin: EdgeInsets.only(right: 11.h),
                                buttonStyle: CustomButtonStyles.fillGray,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumGray50003)),
                        Expanded(
                            child: CustomElevatedButton(
                                text: "lbl_yes_logout".tr,
                                margin: EdgeInsets.only(left: 11.h),
                                buttonStyle: CustomButtonStyles.fillGray,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumRedA700,
                                onPressed: () {
                                  onTapYesLogout(context);
                                }))
                      ]))),
          SizedBox(height: 24.v)
        ]));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapYesLogout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}

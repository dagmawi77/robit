import 'models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/core/utils/validation_functions.dart';
import 'package:robit/widgets/custom_elevated_button.dart';
import 'package:robit/widgets/custom_icon_button.dart';
import 'package:robit/widgets/custom_text_form_field.dart';
import 'provider/log_in_provider.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  LogInScreenState createState() => LogInScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LogInProvider(), child: LogInScreen());
  }
}

// ignore_for_file: must_be_immutable
class LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 32.h),
                        child: Column(children: [
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgUndrawAccessAccountRe8spm,
                              height: 200.v,
                              width: 220.h),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text("lbl_log_in2".tr,
                                      style: theme.textTheme.headlineLarge))),
                          SizedBox(height: 8.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Text("msg_please_sign_in_to".tr,
                                      style: CustomTextStyles
                                          .bodyLargeGray50006))),
                          SizedBox(height: 23.v),
                          Selector<LogInProvider, TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.emailController,
                              builder: (context, emailController, child) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "lbl_email".tr,
                                    textInputType: TextInputType.emailAddress,
                                    prefix: Container(
                                        margin: EdgeInsets.only(
                                            right: 30.h, bottom: 9.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgLock,
                                            height: 24.v,
                                            width: 22.h)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 34.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_email"
                                            .tr;
                                      }
                                      return null;
                                    });
                              }),
                          SizedBox(height: 29.v),
                          Consumer<LogInProvider>(
                              builder: (context, provider, child) {
                            return CustomTextFormField(
                                controller: provider.passwordController,
                                hintText: "lbl_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    margin: EdgeInsets.only(
                                        right: 30.h, bottom: 14.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgTrophy,
                                        height: 22.v,
                                        width: 19.h)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 36.v),
                                suffix: InkWell(
                                    onTap: () {
                                      provider.changePasswordVisibility();
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 3.v, 2.h, 12.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMusicBlueGray900,
                                            height: 20.v,
                                            width: 26.h))),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 36.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: provider.isShowPassword);
                          }),
                          SizedBox(height: 16.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text("lbl_forgot_password".tr,
                                  style: CustomTextStyles.titleSmallPrimary)),
                          SizedBox(height: 30.v),
                          CustomElevatedButton(
                              text: "lbl_log_in".tr,
                              onPressed: () {
                                onTapLogIn(context);
                              }),
                          SizedBox(height: 29.v),
                          _buildLoginSection(context),
                          SizedBox(height: 22.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgFacebook2)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgGoogle2,
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    margin: EdgeInsets.only(left: 49.h))
                              ])
                        ])))),
            bottomNavigationBar: _buildSignupSection(context)));
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 10.v),
                  child: SizedBox(
                      width: 100.h, child: Divider(color: appTheme.gray50006))),
              Text("lbl_or_sign_in_with".tr,
                  style: CustomTextStyles.bodyLargePrimaryContainer),
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 10.v),
                  child: SizedBox(
                      width: 100.h, child: Divider(color: appTheme.gray50006)))
            ]));
  }

  /// Section Widget
  Widget _buildSignupSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 94.h, right: 94.h, bottom: 31.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text("msg_don_t_have_an_account".tr,
                  style: CustomTextStyles.bodyLargeGray700)),
          GestureDetector(
              onTap: () {
                onTapTxtSignUp(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text("lbl_sign_up2".tr,
                      style: CustomTextStyles.titleMedium16)))
        ]));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}

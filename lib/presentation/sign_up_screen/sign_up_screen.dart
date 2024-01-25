import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/core/utils/validation_functions.dart';
import 'package:robit/widgets/custom_elevated_button.dart';
import 'package:robit/widgets/custom_icon_button.dart';
import 'package:robit/widgets/custom_text_form_field.dart';
import 'provider/sign_up_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenState createState() => SignUpScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignUpProvider(), child: SignUpScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignUpScreenState extends State<SignUpScreen> {
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
                          SizedBox(height: 10.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text("lbl_sign_up".tr,
                                      style: theme.textTheme.headlineLarge))),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Text("msg_create_an_account".tr,
                                      style: CustomTextStyles
                                          .bodyLargeGray50006))),
                          SizedBox(height: 25.v),
                          _buildFirstName(context),
                          SizedBox(height: 29.v),
                          _buildLastName(context),
                          SizedBox(height: 29.v),
                          _buildEmail(context),
                          SizedBox(height: 29.v),
                          _buildPassword(context),
                          SizedBox(height: 29.v),
                          _buildConfirmpassword(context),
                          SizedBox(height: 45.v),
                          _buildSignUpButton(context),
                          SizedBox(height: 29.v),
                          _buildRowOne(context),
                          SizedBox(height: 23.v),
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
            bottomNavigationBar: _buildRowTwo(context)));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Selector<SignUpProvider, TextEditingController?>(
        selector: (context, provider) => provider.firstNameController,
        builder: (context, firstNameController, child) {
          return CustomTextFormField(
              controller: firstNameController,
              hintText: "lbl_first_name".tr,
              prefix: Container(
                  margin: EdgeInsets.only(top: 1.v, right: 30.h, bottom: 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGroup32,
                      height: 24.v,
                      width: 26.h)),
              prefixConstraints: BoxConstraints(maxHeight: 36.v),
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.only(right: 30.h));
        });
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Selector<SignUpProvider, TextEditingController?>(
        selector: (context, provider) => provider.lastNameController,
        builder: (context, lastNameController, child) {
          return CustomTextFormField(
              controller: lastNameController,
              hintText: "lbl_last_name".tr,
              prefix: Container(
                  margin: EdgeInsets.only(top: 1.v, right: 30.h, bottom: 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGroup32,
                      height: 24.v,
                      width: 26.h)),
              prefixConstraints: BoxConstraints(maxHeight: 36.v),
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.only(right: 30.h));
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<SignUpProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.only(top: 1.v, right: 30.h, bottom: 13.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 24.v,
                      width: 22.h)),
              prefixConstraints: BoxConstraints(maxHeight: 37.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.only(right: 30.h));
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer<SignUpProvider>(builder: (context, provider, child) {
      return CustomTextFormField(
          controller: provider.passwordController,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.only(right: 30.h, bottom: 15.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgTrophy,
                  height: 22.v,
                  width: 19.h)),
          prefixConstraints: BoxConstraints(maxHeight: 37.v),
          suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility();
              },
              child: Container(
                  margin: EdgeInsets.only(left: 30.h, top: 1.v, bottom: 14.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgMusic,
                      height: 20.v,
                      width: 26.h))),
          suffixConstraints: BoxConstraints(maxHeight: 37.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword);
    });
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Consumer<SignUpProvider>(builder: (context, provider, child) {
      return CustomTextFormField(
          controller: provider.confirmpasswordController,
          hintText: "msg_confirm_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.only(right: 30.h, bottom: 14.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgTrophy,
                  height: 22.v,
                  width: 19.h)),
          prefixConstraints: BoxConstraints(maxHeight: 37.v),
          suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility1();
              },
              child: Container(
                  margin: EdgeInsets.only(left: 30.h, top: 1.v, bottom: 14.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgMusic,
                      height: 20.v,
                      width: 26.h))),
          suffixConstraints: BoxConstraints(maxHeight: 37.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword1);
    });
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Section Widget
  Widget _buildRowOne(BuildContext context) {
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
              Text("lbl_or_sign_up_with".tr,
                  style: CustomTextStyles.bodyLargePrimaryContainer),
              Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 10.v),
                  child: SizedBox(
                      width: 100.h, child: Divider(color: appTheme.gray50006)))
            ]));
  }

  /// Section Widget
  Widget _buildRowTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 95.h, right: 95.h, bottom: 32.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("msg_already_have_an".tr,
              style: CustomTextStyles.bodyLargeGray700),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child:
                  Text("lbl_log_in".tr, style: CustomTextStyles.titleMedium16))
        ]));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageScreen,
    );
  }
}

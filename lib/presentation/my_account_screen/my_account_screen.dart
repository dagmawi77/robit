import 'models/my_account_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/core/utils/validation_functions.dart';
import 'package:robit/widgets/custom_elevated_button.dart';
import 'package:robit/widgets/custom_text_form_field.dart';
import 'provider/my_account_provider.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  MyAccountScreenState createState() => MyAccountScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyAccountProvider(), child: MyAccountScreen());
  }
}

// ignore_for_file: must_be_immutable
class MyAccountScreenState extends State<MyAccountScreen> {
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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 26.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowLeft,
                                            height: 27.v,
                                            width: 16.h,
                                            margin:
                                                EdgeInsets.only(bottom: 73.v),
                                            onTap: () {
                                              onTapImgArrowLeft(context);
                                            }),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUser07bWhiteA700,
                                            height: 98.v,
                                            width: 105.h,
                                            radius: BorderRadius.circular(49.h),
                                            margin: EdgeInsets.only(
                                                left: 113.h, top: 3.v))
                                      ])),
                              SizedBox(height: 14.v),
                              Text("lbl_change_picture".tr,
                                  style: CustomTextStyles.bodyMediumBlack900),
                              SizedBox(height: 44.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("lbl_username".tr,
                                          style: theme.textTheme.titleSmall))),
                              SizedBox(height: 4.v),
                              _buildUsernameField(context),
                              SizedBox(height: 18.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("lbl_email2".tr,
                                          style: theme.textTheme.titleSmall))),
                              SizedBox(height: 4.v),
                              _buildEmailField(context),
                              SizedBox(height: 15.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("lbl_phone_number".tr,
                                          style: theme.textTheme.titleSmall))),
                              SizedBox(height: 7.v),
                              _buildPhoneNumberField(context),
                              SizedBox(height: 18.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("lbl_password2".tr,
                                          style: theme.textTheme.titleSmall))),
                              SizedBox(height: 4.v),
                              _buildPasswordField(context),
                              SizedBox(height: 39.v),
                              _buildUpdateButton(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildUsernameField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 9.h),
        child: Selector<MyAccountProvider, TextEditingController?>(
            selector: (context, provider) => provider.usernameFieldController,
            builder: (context, usernameFieldController, child) {
              return CustomTextFormField(
                  controller: usernameFieldController,
                  hintText: "lbl_ali_mohamed".tr,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v));
            }));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 9.h),
        child: Selector<MyAccountProvider, TextEditingController?>(
            selector: (context, provider) => provider.emailFieldController,
            builder: (context, emailFieldController, child) {
              return CustomTextFormField(
                  controller: emailFieldController,
                  hintText: "msg_alimohamed_gmail_com".tr,
                  hintStyle: CustomTextStyles.bodyMediumBluegray900,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v));
            }));
  }

  /// Section Widget
  Widget _buildPhoneNumberField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 9.h),
        child: Selector<MyAccountProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.phoneNumberFieldController,
            builder: (context, phoneNumberFieldController, child) {
              return CustomTextFormField(
                  controller: phoneNumberFieldController,
                  hintText: "lbl_14987889999".tr,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v));
            }));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 9.h),
        child: Selector<MyAccountProvider, TextEditingController?>(
            selector: (context, provider) => provider.passwordFieldController,
            builder: (context, passwordFieldController, child) {
              return CustomTextFormField(
                  controller: passwordFieldController,
                  hintText: "lbl_evftbyvvcd".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v));
            }));
  }

  /// Section Widget
  Widget _buildUpdateButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_update".tr, margin: EdgeInsets.only(left: 11.h, right: 9.h));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}

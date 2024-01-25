import 'models/photassium_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'provider/photassium_provider.dart';

// ignore_for_file: must_be_immutable
class PhotassiumPage extends StatefulWidget {
  const PhotassiumPage({Key? key})
      : super(
          key: key,
        );

  @override
  PhotassiumPageState createState() => PhotassiumPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PhotassiumProvider(),
      child: PhotassiumPage(),
    );
  }
}

class PhotassiumPageState extends State<PhotassiumPage>
    with AutomaticKeepAliveClientMixin<PhotassiumPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.v),
                _buildRowWithDescription(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowWithDescription(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 45.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 6.adaptSize,
              width: 6.adaptSize,
              margin: EdgeInsets.only(
                top: 7.v,
                bottom: 134.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.black900,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 336.h,
                margin: EdgeInsets.only(left: 5.h),
                child: Text(
                  "msg_the_most_appropriate".tr,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

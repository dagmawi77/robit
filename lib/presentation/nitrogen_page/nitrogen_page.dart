import 'models/nitrogen_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'provider/nitrogen_provider.dart';

// ignore_for_file: must_be_immutable
class NitrogenPage extends StatefulWidget {
  const NitrogenPage({Key? key})
      : super(
          key: key,
        );

  @override
  NitrogenPageState createState() => NitrogenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NitrogenProvider(),
      child: NitrogenPage(),
    );
  }
}

class NitrogenPageState extends State<NitrogenPage>
    with AutomaticKeepAliveClientMixin<NitrogenPage> {
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
                _buildFrameSixtyFive(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSixtyFive(BuildContext context) {
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

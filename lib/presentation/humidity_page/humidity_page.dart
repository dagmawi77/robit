import 'models/humidity_model.dart';
import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'provider/humidity_provider.dart';

// ignore_for_file: must_be_immutable
class HumidityPage extends StatefulWidget {
  const HumidityPage({Key? key})
      : super(
          key: key,
        );

  @override
  HumidityPageState createState() => HumidityPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HumidityProvider(),
      child: HumidityPage(),
    );
  }
}

class HumidityPageState extends State<HumidityPage>
    with AutomaticKeepAliveClientMixin<HumidityPage> {
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
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 31.v),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 27.h,
                right: 40.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7.v,
                      bottom: 177.v,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 36.v),
                        Container(
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 336.h,
                      margin: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "msg_wheat_is_mainly".tr,
                        maxLines: 11,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import '../notifications_page/widgets/appointmentbookedlist1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsPageState createState() => NotificationsPageState();
}

class NotificationsPageState extends State<NotificationsPage>
    with AutomaticKeepAliveClientMixin<NotificationsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildAppointmentBookedList(context),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "8 weeks ago",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 254.h,
                              margin: EdgeInsets.only(
                                left: 61.h,
                                right: 44.h,
                              ),
                              child: Text(
                                "Alert! Hour left for service to begin. \nPlease stay home. ",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          SizedBox(height: 21.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorIndigo800,
                            height: 21.v,
                            width: 22.h,
                            margin: EdgeInsets.only(left: 22.h),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.v),
                      Divider(
                        color: appTheme.gray20001,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppointmentBookedList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 1.0.v),
          child: SizedBox(
            width: 358.h,
            child: Divider(
              height: 2.v,
              thickness: 2.v,
              color: appTheme.gray20001,
            ),
          ),
        );
      },
      itemCount: 11,
      itemBuilder: (context, index) {
        return Appointmentbookedlist1ItemWidget();
      },
    );
  }
}

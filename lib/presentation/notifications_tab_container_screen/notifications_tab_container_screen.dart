import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/presentation/notifications_one_page/notifications_one_page.dart';
import 'package:rajdeep_singh_s_application5/presentation/notifications_page/notifications_page.dart';

class NotificationsTabContainerScreen extends StatefulWidget {
  const NotificationsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsTabContainerScreenState createState() =>
      NotificationsTabContainerScreenState();
}

class NotificationsTabContainerScreenState
    extends State<NotificationsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 36.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(context),
                      SizedBox(
                        height: 717.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            NotificationsOnePage(),
                            NotificationsPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 42.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: appTheme.indigo400,
        tabs: [
          Tab(
            child: Text(
              "Local News",
            ),
          ),
          Tab(
            child: Text(
              "Global News",
            ),
          ),
        ],
      ),
    );
  }
}

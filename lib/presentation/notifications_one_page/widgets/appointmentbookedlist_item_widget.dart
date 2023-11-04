import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class AppointmentbookedlistItemWidget extends StatelessWidget {
  const AppointmentbookedlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 8.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup60,
            height: 21.adaptSize,
            width: 21.adaptSize,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 11.v,
              bottom: 8.v,
            ),
          ),
          Container(
            width: 235.h,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 6.v,
              bottom: 1.v,
            ),
            child: Text(
              "Appointment Booked! Your appointment \nfor Deep cleaning is for Oct 30, 2023 at .. ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 30.v),
            child: Text(
              "Monday",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class HealthdetailsItemWidget extends StatelessWidget {
  const HealthdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49.v,
      width: 98.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Text(
                "DD/MM/YY",
                style: CustomTextStyles.poppinsGray50001,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 14.v,
              width: 31.h,
              margin: EdgeInsets.only(left: 14.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Text(
                "DOB",
                style: CustomTextStyles.labelMediumOnError,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

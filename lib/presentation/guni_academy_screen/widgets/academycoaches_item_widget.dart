import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class AcademycoachesItemWidget extends StatelessWidget {
  const AcademycoachesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      width: 75.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle175,
            height: 54.v,
            width: 55.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 49.h,
            child: Text(
              "Manindar\nSing",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelMediumPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}

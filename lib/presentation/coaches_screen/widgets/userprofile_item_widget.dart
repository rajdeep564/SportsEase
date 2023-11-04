import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55.h,
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          decoration: AppDecoration.outlineBlack,
          child: Column(
            children: [
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
        ),
      ),
    );
  }
}

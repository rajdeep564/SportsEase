import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class DrillstutorialItemWidget extends StatelessWidget {
  const DrillstutorialItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175.v,
      width: 356.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle156,
            height: 175.v,
            width: 356.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 175.v,
              width: 356.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle157,
                    height: 175.v,
                    width: 356.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgAvatar20x20,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 11.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  "Learn Bending Free kick",
                                  style: CustomTextStyles
                                      .labelLargePoppinsPrimaryContainer,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 44.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray100,
                            height: 17.v,
                            width: 16.h,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 52.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "00:30",
                              style: CustomTextStyles
                                  .bodySmallPoppinsPrimaryContainer,
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
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class InterestsItemWidget extends StatelessWidget {
  const InterestsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 6.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Football",
          style: TextStyle(
            color: appTheme.amberA400,
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.lightGreen300,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            5.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}

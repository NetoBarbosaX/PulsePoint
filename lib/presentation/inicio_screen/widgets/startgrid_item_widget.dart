import '../models/startgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hospital_pulse_point/core/app_export.dart';

// ignore: must_be_immutable
class StartgridItemWidget extends StatelessWidget {
  StartgridItemWidget(
    this.startgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StartgridItemModel startgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillDeepOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              startgridItemModelObj.mDico!,
              style: CustomTextStyles.titleMediumUrbanistPrimaryContainer,
            ),
          ),
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: startgridItemModelObj?.mdico,
            height: 74.v,
            width: 71.h,
            margin: EdgeInsets.only(left: 1.h),
          ),
        ],
      ),
    );
  }
}

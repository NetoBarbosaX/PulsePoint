import '../inicio_screen/widgets/startgrid_item_widget.dart';
import 'bloc/inicio_bloc.dart';
import 'models/inicio_model.dart';
import 'models/startgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hospital_pulse_point/core/app_export.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioBloc>(
      create: (context) => InicioBloc(InicioState(
        inicioModelObj: InicioModel(),
      ))
        ..add(InicioInitialEvent()),
      child: InicioScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Column(
            children: [
              _buildWelcomeRow(context),
              SizedBox(height: 37.v),
              SizedBox(
                height: 431.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 373.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 19.h,
                          vertical: 26.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 234.h,
                              margin: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "msg_selecione_a_aba".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleMediumUrbanist,
                              ),
                            ),
                            SizedBox(height: 22.v),
                            _buildStartGrid(context),
                            SizedBox(height: 3.v),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25.h,
        right: 19.h,
      ),
      padding: EdgeInsets.all(7.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHospitalRemovebgPreview,
            height: 42.v,
            width: 52.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 10.v,
              bottom: 9.v,
            ),
            child: Text(
              "msg_bem_vindo_ao_pulse".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStartGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: BlocSelector<InicioBloc, InicioState, InicioModel?>(
        selector: (state) => state.inicioModelObj,
        builder: (context, inicioModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 141.v,
              crossAxisCount: 2,
              mainAxisSpacing: 31.h,
              crossAxisSpacing: 31.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: inicioModelObj?.startgridItemList.length ?? 0,
            itemBuilder: (context, index) {
              StartgridItemModel model =
                  inicioModelObj?.startgridItemList[index] ??
                      StartgridItemModel();
              return StartgridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}

import 'bloc/administra_o_bloc.dart';
import 'models/administra_o_model.dart';
import 'package:flutter/material.dart';
import 'package:hospital_pulse_point/core/app_export.dart';
import 'package:hospital_pulse_point/widgets/custom_icon_button.dart';
import 'package:hospital_pulse_point/widgets/custom_text_form_field.dart';

class AdministraOScreen extends StatelessWidget {
  const AdministraOScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AdministraOBloc>(
      create: (context) => AdministraOBloc(AdministraOState(
        administraOModelObj: AdministraOModel(),
      ))
        ..add(AdministraOInitialEvent()),
      child: AdministraOScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildNine(context),
                      SizedBox(height: 12.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 19.h,
                          vertical: 25.v,
                        ),
                        decoration: AppDecoration.fillPrimary,
                        child: Column(
                          children: [
                            SizedBox(height: 5.v),
                            Container(
                              margin: EdgeInsets.only(left: 1.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 17.h,
                                vertical: 13.v,
                              ),
                              decoration: AppDecoration.white.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder27,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 86.h),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 4.v,
                                            bottom: 69.v,
                                          ),
                                          child: CustomIconButton(
                                            height: 41.adaptSize,
                                            width: 41.adaptSize,
                                            padding: EdgeInsets.all(10.h),
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowLeft,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 45.h),
                                          child: Column(
                                            children: [
                                              Text(
                                                "lbl_farmac_utico".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeBlack900,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgMedicalDoctor,
                                                height: 90.adaptSize,
                                                width: 90.adaptSize,
                                                alignment:
                                                    Alignment.centerRight,
                                                margin: EdgeInsets.only(
                                                    right: 16.h),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 21.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "msg_informa_es_pessoais".tr,
                                      style: CustomTextStyles
                                          .titleSmallPrimaryContainer,
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      right: 2.h,
                                    ),
                                    child: BlocSelector<
                                        AdministraOBloc,
                                        AdministraOState,
                                        TextEditingController?>(
                                      selector: (state) =>
                                          state.usernameInputController,
                                      builder:
                                          (context, usernameInputController) {
                                        return CustomTextFormField(
                                          controller: usernameInputController,
                                          hintText: "lbl_nome_do_cliente".tr,
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 15.h,
                                            vertical: 19.v,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 12.v),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.h),
                                    child: BlocSelector<
                                        AdministraOBloc,
                                        AdministraOState,
                                        TextEditingController?>(
                                      selector: (state) =>
                                          state.emailInputController,
                                      builder: (context, emailInputController) {
                                        return CustomTextFormField(
                                          controller: emailInputController,
                                          hintText: "lbl_id_do_usu_rio".tr,
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 18.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "msg_informa_es_do_sistema".tr,
                                      style: CustomTextStyles
                                          .titleSmallPrimaryContainer,
                                    ),
                                  ),
                                  SizedBox(height: 17.v),
                                  Container(
                                    height: 198.v,
                                    width: 295.h,
                                    margin: EdgeInsets.only(left: 2.h),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            decoration: AppDecoration
                                                .outlineWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8,
                                            ),
                                            child: Container(
                                              height: 63.v,
                                              width: 295.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.deepOrange50,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  2.h,
                                                ),
                                                border: Border.all(
                                                  color: appTheme.indigo50,
                                                  width: 1.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 15.h,
                                              top: 15.v,
                                              right: 7.h,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 12.h),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 74.h,
                                                        child: Text(
                                                          "msg_registro_de_pacientes"
                                                              .tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .titleSmallGray70001
                                                              .copyWith(
                                                            height: 1.25,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 74.h,
                                                        margin: EdgeInsets.only(
                                                          left: 111.h,
                                                          bottom: 3.v,
                                                        ),
                                                        child: Text(
                                                          "msg_registro_de_rem_dios"
                                                              .tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .titleSmallGray70001
                                                              .copyWith(
                                                            height: 1.25,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 20.v),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text(
                                                          "lbl_username".tr,
                                                          style: theme.textTheme
                                                              .bodyMedium,
                                                        ),
                                                        SizedBox(height: 3.v),
                                                        Text(
                                                          "lbl_username2".tr,
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                        SizedBox(height: 9.v),
                                                        Text(
                                                          "lbl_username".tr,
                                                          style: theme.textTheme
                                                              .bodyMedium,
                                                        ),
                                                        SizedBox(height: 3.v),
                                                        Text(
                                                          "lbl_username2".tr,
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 6.v,
                                                        bottom: 8.v,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 72.h,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                              horizontal: 8.h,
                                                              vertical: 2.v,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .fillOnErrorContainer
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8,
                                                            ),
                                                            child: Text(
                                                              "lbl_finalizado"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height: 25.v),
                                                          BlocSelector<
                                                              AdministraOBloc,
                                                              AdministraOState,
                                                              TextEditingController?>(
                                                            selector: (state) =>
                                                                state
                                                                    .badgeController,
                                                            builder: (context,
                                                                badgeController) {
                                                              return CustomTextFormField(
                                                                width: 99.h,
                                                                controller:
                                                                    badgeController,
                                                                hintText:
                                                                    "lbl_em_andamento"
                                                                        .tr,
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .done,
                                                                contentPadding:
                                                                    EdgeInsets
                                                                        .symmetric(
                                                                  horizontal:
                                                                      8.h,
                                                                  vertical: 2.v,
                                                                ),
                                                                borderDecoration:
                                                                    TextFormFieldStyleHelper
                                                                        .fillBlueA,
                                                                fillColor:
                                                                    appTheme
                                                                        .blueA700,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 17.v),
                                ],
                              ),
                            ),
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
  Widget _buildNine(BuildContext context) {
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
}

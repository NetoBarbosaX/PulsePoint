import 'bloc/m_dicos_bloc.dart';
import 'models/m_dicos_model.dart';
import 'package:flutter/material.dart';
import 'package:hospital_pulse_point/core/app_export.dart';
import 'package:hospital_pulse_point/widgets/custom_icon_button.dart';
import 'package:hospital_pulse_point/widgets/custom_text_form_field.dart';

class MDicosScreen extends StatelessWidget {
  const MDicosScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MDicosBloc>(
      create: (context) => MDicosBloc(MDicosState(
        mDicosModelObj: MDicosModel(),
      ))
        ..add(MDicosInitialEvent()),
      child: MDicosScreen(),
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
                      _buildWelcomeSection(context),
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
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: AppDecoration.white.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder27,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 13.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 1.v,
                                              bottom: 74.v,
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
                                            padding:
                                                EdgeInsets.only(left: 53.h),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "lbl_m_dico".tr,
                                                  style: theme
                                                      .textTheme.titleLarge,
                                                ),
                                                SizedBox(height: 8.v),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRodOfAsclepius,
                                                  height: 81.v,
                                                  width: 77.h,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 19.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "msg_informa_es_pessoais".tr,
                                      style: CustomTextStyles
                                          .titleSmallPrimaryContainer,
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  _buildUsernameInputSection(context),
                                  SizedBox(height: 12.v),
                                  _buildEmailInputSection(context),
                                  SizedBox(height: 13.v),
                                  _buildEmailInputSection1(context),
                                  SizedBox(height: 12.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "lbl_pacientes".tr,
                                      style: CustomTextStyles
                                          .titleSmallPrimaryContainer,
                                    ),
                                  ),
                                  SizedBox(height: 13.v),
                                  SizedBox(
                                    height: 136.v,
                                    width: 295.h,
                                    child: Stack(
                                      alignment: Alignment.center,
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
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 92.v),
                                                Container(
                                                  height: 43.v,
                                                  width: 295.h,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        appTheme.deepOrange50,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 15.h,
                                              right: 12.h,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 23.h),
                                                  child: _buildThirtyOne(
                                                    context,
                                                    userName: "lbl_nome".tr,
                                                    userStatus: "lbl_status".tr,
                                                    userDate: "lbl_data".tr,
                                                  ),
                                                ),
                                                SizedBox(height: 15.v),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    _buildThirtySeven(
                                                      context,
                                                      username:
                                                          "lbl_username".tr,
                                                      username2:
                                                          "lbl_username2".tr,
                                                      username1:
                                                          "lbl_username".tr,
                                                      username21:
                                                          "lbl_username2".tr,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 8.v),
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 12.h),
                                                            child:
                                                                _buildThirtyTwo(
                                                              context,
                                                              badgeText:
                                                                  "lbl_finalizado"
                                                                      .tr,
                                                              dateText:
                                                                  "lbl_20_03_2001"
                                                                      .tr,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height: 23.v),
                                                          SizedBox(
                                                            width: 184.h,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                _buildBadgeInputSection(
                                                                    context),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 3
                                                                              .v),
                                                                  child: Text(
                                                                    "lbl_20_03_2001"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
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
                                  SizedBox(height: 7.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "msg_hor_rio_de_consultas".tr,
                                      style: CustomTextStyles
                                          .titleSmallPrimaryContainer,
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  SizedBox(
                                    height: 136.v,
                                    width: 295.h,
                                    child: Stack(
                                      alignment: Alignment.center,
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
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 92.v),
                                                Container(
                                                  height: 43.v,
                                                  width: 295.h,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        appTheme.deepOrange50,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 15.h,
                                              right: 12.h,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 23.h),
                                                  child: _buildThirtyOne(
                                                    context,
                                                    userName: "lbl_nome".tr,
                                                    userStatus: "lbl_status".tr,
                                                    userDate: "lbl_data".tr,
                                                  ),
                                                ),
                                                SizedBox(height: 15.v),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    _buildThirtySeven(
                                                      context,
                                                      username:
                                                          "lbl_username".tr,
                                                      username2:
                                                          "lbl_username2".tr,
                                                      username1:
                                                          "lbl_username".tr,
                                                      username21:
                                                          "lbl_username2".tr,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 8.v),
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 12.h),
                                                            child:
                                                                _buildThirtyTwo(
                                                              context,
                                                              badgeText:
                                                                  "lbl_finalizado"
                                                                      .tr,
                                                              dateText:
                                                                  "lbl_20_03_2001"
                                                                      .tr,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height: 23.v),
                                                          SizedBox(
                                                            width: 184.h,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                _buildBadgeInputSection1(
                                                                    context),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 3
                                                                              .v),
                                                                  child: Text(
                                                                    "lbl_20_03_2001"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
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
  Widget _buildWelcomeSection(BuildContext context) {
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
  Widget _buildUsernameInputSection(BuildContext context) {
    return BlocSelector<MDicosBloc, MDicosState, TextEditingController?>(
      selector: (state) => state.usernameInputSectionController,
      builder: (context, usernameInputSectionController) {
        return CustomTextFormField(
          controller: usernameInputSectionController,
          hintText: "lbl_nome_do_cliente".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 19.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailInputSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: BlocSelector<MDicosBloc, MDicosState, TextEditingController?>(
        selector: (state) => state.emailInputSectionController,
        builder: (context, emailInputSectionController) {
          return CustomTextFormField(
            controller: emailInputSectionController,
            hintText: "lbl_id_do_usu_rio".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInputSection1(BuildContext context) {
    return BlocSelector<MDicosBloc, MDicosState, TextEditingController?>(
      selector: (state) => state.emailInputSectionController1,
      builder: (context, emailInputSectionController1) {
        return CustomTextFormField(
          controller: emailInputSectionController1,
          hintText: "lbl_especializa_es".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 19.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBadgeInputSection(BuildContext context) {
    return BlocSelector<MDicosBloc, MDicosState, TextEditingController?>(
      selector: (state) => state.badgeInputSectionController,
      builder: (context, badgeInputSectionController) {
        return CustomTextFormField(
          width: 99.h,
          controller: badgeInputSectionController,
          hintText: "lbl_em_andamento".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 2.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillBlueA,
          fillColor: appTheme.blueA700,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBadgeInputSection1(BuildContext context) {
    return BlocSelector<MDicosBloc, MDicosState, TextEditingController?>(
      selector: (state) => state.badgeInputSectionController1,
      builder: (context, badgeInputSectionController1) {
        return CustomTextFormField(
          width: 99.h,
          controller: badgeInputSectionController1,
          hintText: "lbl_em_andamento".tr,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 2.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillBlueA,
          fillColor: appTheme.blueA700,
        );
      },
    );
  }

  /// Common widget
  Widget _buildThirtyOne(
    BuildContext context, {
    required String userName,
    required String userStatus,
    required String userDate,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          userName,
          style: CustomTextStyles.titleSmallGray70001.copyWith(
            color: appTheme.gray70001,
          ),
        ),
        Text(
          userStatus,
          style: CustomTextStyles.titleSmallGray70001.copyWith(
            color: appTheme.gray70001,
          ),
        ),
        Text(
          userDate,
          style: CustomTextStyles.titleSmallGray70001.copyWith(
            color: appTheme.gray70001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildThirtySeven(
    BuildContext context, {
    required String username,
    required String username2,
    required String username1,
    required String username21,
  }) {
    return Column(
      children: [
        Text(
          username,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          username2,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray700,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          username1,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          username21,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray700,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildThirtyTwo(
    BuildContext context, {
    required String badgeText,
    required String dateText,
  }) {
    return SizedBox(
      width: 172.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 72.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Text(
              badgeText,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Text(
            dateText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ],
      ),
    );
  }
}

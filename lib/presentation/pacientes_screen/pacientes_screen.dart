import 'bloc/pacientes_bloc.dart';
import 'models/pacientes_model.dart';
import 'package:flutter/material.dart';
import 'package:hospital_pulse_point/core/app_export.dart';
import 'package:hospital_pulse_point/core/utils/validation_functions.dart';
import 'package:hospital_pulse_point/widgets/custom_icon_button.dart';
import 'package:hospital_pulse_point/widgets/custom_text_form_field.dart';

class PacientesScreen extends StatelessWidget {
  PacientesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PacientesBloc>(
      create: (context) => PacientesBloc(PacientesState(
        pacientesModelObj: PacientesModel(),
      ))
        ..add(PacientesInitialEvent()),
      child: PacientesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
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
                                width: 336.h,
                                margin: EdgeInsets.only(left: 1.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.h,
                                  vertical: 10.v,
                                ),
                                decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder27,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 4.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 63.v),
                                              child: CustomIconButton(
                                                height: 41.adaptSize,
                                                width: 41.adaptSize,
                                                padding: EdgeInsets.all(10.h),
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowLeft,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 62.h),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "lbl_paciente".tr,
                                                    style: CustomTextStyles
                                                        .headlineSmallErrorContainer,
                                                  ),
                                                  SizedBox(height: 4.v),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgPill,
                                                    height: 68.v,
                                                    width: 64.h,
                                                    margin: EdgeInsets.only(
                                                        left: 11.h),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "msg_informa_es_pessoais".tr,
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 9.v),
                                    _buildUsernameInputSection(context),
                                    SizedBox(height: 10.v),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 7.h,
                                        right: 10.h,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          _buildEmailInputSection(context),
                                          _buildEmailInputSection1(context),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12.v),
                                    _buildEmailInputSection2(context),
                                    SizedBox(height: 12.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text(
                                          "msg_ltimas_atualiza_es".tr,
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer,
                                        ),
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
                                                        color:
                                                            appTheme.indigo50,
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
                                                    child: _buildSixtyThree(
                                                      context,
                                                      userName: "lbl_nome".tr,
                                                      userStatus:
                                                          "lbl_status".tr,
                                                      userDate: "lbl_data".tr,
                                                    ),
                                                  ),
                                                  SizedBox(height: 15.v),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      _buildSixtyNine(
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
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 8.v),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          12.h),
                                                              child:
                                                                  _buildSixtyFour(
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
                                                                            top:
                                                                                3.v),
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
                                    SizedBox(height: 16.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "msg_consultas_recentes".tr,
                                        style: CustomTextStyles
                                            .titleSmallPrimaryContainer,
                                      ),
                                    ),
                                    SizedBox(height: 12.v),
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
                                                        color:
                                                            appTheme.indigo50,
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
                                                    child: _buildSixtyThree(
                                                      context,
                                                      userName: "lbl_nome".tr,
                                                      userStatus:
                                                          "lbl_status".tr,
                                                      userDate: "lbl_data".tr,
                                                    ),
                                                  ),
                                                  SizedBox(height: 15.v),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      _buildSixtyNine(
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
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 8.v),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          12.h),
                                                              child:
                                                                  _buildSixtyFour(
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
                                                                            top:
                                                                                3.v),
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
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 10.h,
      ),
      child:
          BlocSelector<PacientesBloc, PacientesState, TextEditingController?>(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInputSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.v),
      child:
          BlocSelector<PacientesBloc, PacientesState, TextEditingController?>(
        selector: (state) => state.emailInputSectionController,
        builder: (context, emailInputSectionController) {
          return CustomTextFormField(
            width: 145.h,
            controller: emailInputSectionController,
            hintText: "lbl_id_do_usu_rio".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInputSection1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child:
          BlocSelector<PacientesBloc, PacientesState, TextEditingController?>(
        selector: (state) => state.emailInputSectionController1,
        builder: (context, emailInputSectionController1) {
          return CustomTextFormField(
            width: 140.h,
            controller: emailInputSectionController1,
            hintText: "lbl_cpf_do_cliente".tr,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 19.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInputSection2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 13.h,
      ),
      child:
          BlocSelector<PacientesBloc, PacientesState, TextEditingController?>(
        selector: (state) => state.emailInputSectionController2,
        builder: (context, emailInputSectionController2) {
          return CustomTextFormField(
            controller: emailInputSectionController2,
            hintText: "lbl_email".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 19.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBadgeInputSection(BuildContext context) {
    return BlocSelector<PacientesBloc, PacientesState, TextEditingController?>(
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
    return BlocSelector<PacientesBloc, PacientesState, TextEditingController?>(
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
  Widget _buildSixtyThree(
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
  Widget _buildSixtyNine(
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
  Widget _buildSixtyFour(
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

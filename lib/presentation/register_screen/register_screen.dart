import 'bloc/register_bloc.dart';
import 'models/register_model.dart';
import 'package:flutter/material.dart';
import 'package:hospital_pulse_point/core/app_export.dart';
import 'package:hospital_pulse_point/core/utils/validation_functions.dart';
import 'package:hospital_pulse_point/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hospital_pulse_point/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hospital_pulse_point/widgets/app_bar/custom_app_bar.dart';
import 'package:hospital_pulse_point/widgets/custom_elevated_button.dart';
import 'package:hospital_pulse_point/widgets/custom_outlined_button.dart';
import 'package:hospital_pulse_point/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterBloc>(
        create: (context) =>
            RegisterBloc(RegisterState(registerModelObj: RegisterModel()))
              ..add(RegisterInitialEvent()),
        child: RegisterScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 18.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 320.h,
                              margin: EdgeInsets.only(right: 10.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_vamos_fazer_seu2".tr,
                                        style: theme.textTheme.headlineSmall),
                                    TextSpan(
                                        text: "msg_por_favor_informe".tr,
                                        style: CustomTextStyles
                                            .headlineSmallRegular)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 19.v),
                      _buildUsernameInput(context),
                      SizedBox(height: 12.v),
                      _buildEmailInput(context),
                      SizedBox(height: 12.v),
                      _buildEmailInput1(context),
                      SizedBox(height: 12.v),
                      _buildEightySix(context),
                      SizedBox(height: 10.v),
                      _buildPasswordInput(context),
                      SizedBox(height: 11.v),
                      _buildPasswordInput1(context),
                      SizedBox(height: 12.v),
                      _buildConfirmPassword(context),
                      SizedBox(height: 31.v),
                      _buildRegistrar(context),
                      SizedBox(height: 19.v),
                      GestureDetector(
                          onTap: () {
                            NavigatorService.pushNamed(
                                AppRoutes.loginScreen);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_j_possui_conta2".tr,
                                    style: CustomTextStyles
                                        .titleSmallErrorContainer_1),
                                TextSpan(
                                    text: "lbl_entre_aqui".tr,
                                    style: CustomTextStyles.titleSmallPrimary_1)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 6.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 63.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 22.h, top: 8.v, bottom: 9.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHospitalRemovebgPreview,
              margin: EdgeInsets.symmetric(horizontal: 7.h))
        ]);
  }

  /// Section Widget
  Widget _buildUsernameInput(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.usernameInputController,
        builder: (context, usernameInputController) {
          return CustomTextFormField(
              controller: usernameInputController, hintText: "lbl_nome".tr);
        });
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.emailInputController,
        builder: (context, emailInputController) {
          return CustomTextFormField(
              controller: emailInputController,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEmailInput1(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.emailInputController1,
        builder: (context, emailInputController1) {
          return CustomTextFormField(
              controller: emailInputController1, hintText: "lbl_cpf".tr);
        });
  }

  /// Section Widget
  Widget _buildDataDeNascimento(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            text: "msg_data_de_nascimento".tr,
            margin: EdgeInsets.only(right: 4.h)));
  }

  /// Section Widget
  Widget _buildEmailInput2(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: BlocSelector<RegisterBloc, RegisterState,
                    TextEditingController?>(
                selector: (state) => state.emailInputController2,
                builder: (context, emailInputController2) {
                  return CustomTextFormField(
                      controller: emailInputController2,
                      hintText: "lbl_endere_o".tr,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 15.v));
                })));
  }

  /// Section Widget
  Widget _buildEightySix(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildDataDeNascimento(context),
      _buildEmailInput2(context)
    ]);
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.passwordInputController,
        builder: (context, passwordInputController) {
          return CustomTextFormField(
              controller: passwordInputController,
              hintText: "lbl_celular".tr,
              borderDecoration: TextFormFieldStyleHelper.outlineIndigoTL8,
              fillColor: appTheme.gray100);
        });
  }

  /// Section Widget
  Widget _buildPasswordInput1(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.passwordInputController1,
        builder: (context, passwordInputController1) {
          return CustomTextFormField(
              controller: passwordInputController1,
              hintText: "msg_crm_opcional_para".tr,
              borderDecoration: TextFormFieldStyleHelper.outlineIndigoTL8,
              fillColor: appTheme.gray100);
        });
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.confirmPasswordController,
        builder: (context, confirmPasswordController) {
          return CustomTextFormField(
              controller: confirmPasswordController,
              hintText: "lbl_senha".tr,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.outlineIndigoTL8,
              fillColor: appTheme.gray100);
        });
  }

  /// Section Widget
  Widget _buildRegistrar(BuildContext context) {
    return CustomElevatedButton(text: "lbl_registrar".tr);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}

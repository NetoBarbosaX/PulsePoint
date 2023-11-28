import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:hospital_pulse_point/core/app_export.dart';
import 'package:hospital_pulse_point/core/utils/validation_functions.dart';
import 'package:hospital_pulse_point/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hospital_pulse_point/widgets/app_bar/appbar_title.dart';
import 'package:hospital_pulse_point/widgets/app_bar/custom_app_bar.dart';
import 'package:hospital_pulse_point/widgets/custom_elevated_button.dart';
import 'package:hospital_pulse_point/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
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
                        EdgeInsets.symmetric(horizontal: 18.h, vertical: 22.v),
                    child: Column(children: [
                      SizedBox(height: 10.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgHospitalRemovebgPreview,
                          height: 111.v,
                          width: 129.h),
                      SizedBox(height: 30.v),
                      Container(
                          width: 324.h,
                          margin: EdgeInsets.only(left: 8.h, right: 6.h),
                          child: Text("msg_bem_vindo_de_volta".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineLarge!
                                  .copyWith(height: 1.30))),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "msg_insira_seu_email".tr,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_email"
                                            .tr;
                                      }
                                      return null;
                                    });
                              })),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: BlocBuilder<LoginBloc, LoginState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                controller: state.enterYourPasswordController,
                                hintText: "msg_insira_sua_senha".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<LoginBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 17.v, 16.h, 17.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFluenteye20filled,
                                            height: 22.adaptSize,
                                            width: 22.adaptSize))),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 56.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: state.isShowPassword,
                                contentPadding: EdgeInsets.only(
                                    left: 18.h, top: 19.v, bottom: 19.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineIndigoTL8,
                                fillColor: appTheme.gray100);
                          })),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("msg_esqueceu_a_senha".tr,
                              style:
                                  CustomTextStyles.titleSmallPrimaryContainer)),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                          text: "lbl_login".tr,
                          margin: EdgeInsets.only(left: 8.h)),
                      Spacer(),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_n_o_possui_conta2".tr,
                                style: CustomTextStyles
                                    .titleSmallErrorContainer_1),
                            TextSpan(
                                text: "lbl_crie_agora".tr,
                                style: CustomTextStyles.titleSmallPrimary)
                          ]),
                          textAlign: TextAlign.left)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 76.v,
        leadingWidth: 63.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 22.h, bottom: 23.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_pulse_point".tr,
            margin: EdgeInsets.only(left: 71.h, top: 28.v)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}

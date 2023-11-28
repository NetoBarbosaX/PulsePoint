// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.emailController,
    this.enterYourPasswordController,
    this.isShowPassword = true,
    this.loginModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? enterYourPasswordController;

  LoginModel? loginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        enterYourPasswordController,
        isShowPassword,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? emailController,
    TextEditingController? enterYourPasswordController,
    bool? isShowPassword,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailController: emailController ?? this.emailController,
      enterYourPasswordController:
          enterYourPasswordController ?? this.enterYourPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'register_bloc.dart';

/// Represents the state of Register in the application.
class RegisterState extends Equatable {
  RegisterState({
    this.usernameInputController,
    this.emailInputController,
    this.emailInputController1,
    this.emailInputController2,
    this.passwordInputController,
    this.passwordInputController1,
    this.confirmPasswordController,
    this.registerModelObj,
  });

  TextEditingController? usernameInputController;

  TextEditingController? emailInputController;

  TextEditingController? emailInputController1;

  TextEditingController? emailInputController2;

  TextEditingController? passwordInputController;

  TextEditingController? passwordInputController1;

  TextEditingController? confirmPasswordController;

  RegisterModel? registerModelObj;

  @override
  List<Object?> get props => [
        usernameInputController,
        emailInputController,
        emailInputController1,
        emailInputController2,
        passwordInputController,
        passwordInputController1,
        confirmPasswordController,
        registerModelObj,
      ];
  RegisterState copyWith({
    TextEditingController? usernameInputController,
    TextEditingController? emailInputController,
    TextEditingController? emailInputController1,
    TextEditingController? emailInputController2,
    TextEditingController? passwordInputController,
    TextEditingController? passwordInputController1,
    TextEditingController? confirmPasswordController,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      usernameInputController:
          usernameInputController ?? this.usernameInputController,
      emailInputController: emailInputController ?? this.emailInputController,
      emailInputController1:
          emailInputController1 ?? this.emailInputController1,
      emailInputController2:
          emailInputController2 ?? this.emailInputController2,
      passwordInputController:
          passwordInputController ?? this.passwordInputController,
      passwordInputController1:
          passwordInputController1 ?? this.passwordInputController1,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}

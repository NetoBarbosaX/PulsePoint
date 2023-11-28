// ignore_for_file: must_be_immutable

part of 'administra_o_bloc.dart';

/// Represents the state of AdministraO in the application.
class AdministraOState extends Equatable {
  AdministraOState({
    this.usernameInputController,
    this.emailInputController,
    this.badgeController,
    this.administraOModelObj,
  });

  TextEditingController? usernameInputController;

  TextEditingController? emailInputController;

  TextEditingController? badgeController;

  AdministraOModel? administraOModelObj;

  @override
  List<Object?> get props => [
        usernameInputController,
        emailInputController,
        badgeController,
        administraOModelObj,
      ];
  AdministraOState copyWith({
    TextEditingController? usernameInputController,
    TextEditingController? emailInputController,
    TextEditingController? badgeController,
    AdministraOModel? administraOModelObj,
  }) {
    return AdministraOState(
      usernameInputController:
          usernameInputController ?? this.usernameInputController,
      emailInputController: emailInputController ?? this.emailInputController,
      badgeController: badgeController ?? this.badgeController,
      administraOModelObj: administraOModelObj ?? this.administraOModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'administra_o_one_bloc.dart';

/// Represents the state of AdministraOOne in the application.
class AdministraOOneState extends Equatable {
  AdministraOOneState({
    this.usernameInputController,
    this.emailInputController,
    this.badgeController,
    this.administraOOneModelObj,
  });

  TextEditingController? usernameInputController;

  TextEditingController? emailInputController;

  TextEditingController? badgeController;

  AdministraOOneModel? administraOOneModelObj;

  @override
  List<Object?> get props => [
        usernameInputController,
        emailInputController,
        badgeController,
        administraOOneModelObj,
      ];
  AdministraOOneState copyWith({
    TextEditingController? usernameInputController,
    TextEditingController? emailInputController,
    TextEditingController? badgeController,
    AdministraOOneModel? administraOOneModelObj,
  }) {
    return AdministraOOneState(
      usernameInputController:
          usernameInputController ?? this.usernameInputController,
      emailInputController: emailInputController ?? this.emailInputController,
      badgeController: badgeController ?? this.badgeController,
      administraOOneModelObj:
          administraOOneModelObj ?? this.administraOOneModelObj,
    );
  }
}

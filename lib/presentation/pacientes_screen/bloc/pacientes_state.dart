// ignore_for_file: must_be_immutable

part of 'pacientes_bloc.dart';

/// Represents the state of Pacientes in the application.
class PacientesState extends Equatable {
  PacientesState({
    this.usernameInputSectionController,
    this.emailInputSectionController,
    this.emailInputSectionController1,
    this.emailInputSectionController2,
    this.badgeInputSectionController,
    this.badgeInputSectionController1,
    this.pacientesModelObj,
  });

  TextEditingController? usernameInputSectionController;

  TextEditingController? emailInputSectionController;

  TextEditingController? emailInputSectionController1;

  TextEditingController? emailInputSectionController2;

  TextEditingController? badgeInputSectionController;

  TextEditingController? badgeInputSectionController1;

  PacientesModel? pacientesModelObj;

  @override
  List<Object?> get props => [
        usernameInputSectionController,
        emailInputSectionController,
        emailInputSectionController1,
        emailInputSectionController2,
        badgeInputSectionController,
        badgeInputSectionController1,
        pacientesModelObj,
      ];
  PacientesState copyWith({
    TextEditingController? usernameInputSectionController,
    TextEditingController? emailInputSectionController,
    TextEditingController? emailInputSectionController1,
    TextEditingController? emailInputSectionController2,
    TextEditingController? badgeInputSectionController,
    TextEditingController? badgeInputSectionController1,
    PacientesModel? pacientesModelObj,
  }) {
    return PacientesState(
      usernameInputSectionController:
          usernameInputSectionController ?? this.usernameInputSectionController,
      emailInputSectionController:
          emailInputSectionController ?? this.emailInputSectionController,
      emailInputSectionController1:
          emailInputSectionController1 ?? this.emailInputSectionController1,
      emailInputSectionController2:
          emailInputSectionController2 ?? this.emailInputSectionController2,
      badgeInputSectionController:
          badgeInputSectionController ?? this.badgeInputSectionController,
      badgeInputSectionController1:
          badgeInputSectionController1 ?? this.badgeInputSectionController1,
      pacientesModelObj: pacientesModelObj ?? this.pacientesModelObj,
    );
  }
}

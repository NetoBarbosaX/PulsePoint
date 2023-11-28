// ignore_for_file: must_be_immutable

part of 'm_dicos_bloc.dart';

/// Represents the state of MDicos in the application.
class MDicosState extends Equatable {
  MDicosState({
    this.usernameInputSectionController,
    this.emailInputSectionController,
    this.emailInputSectionController1,
    this.badgeInputSectionController,
    this.badgeInputSectionController1,
    this.mDicosModelObj,
  });

  TextEditingController? usernameInputSectionController;

  TextEditingController? emailInputSectionController;

  TextEditingController? emailInputSectionController1;

  TextEditingController? badgeInputSectionController;

  TextEditingController? badgeInputSectionController1;

  MDicosModel? mDicosModelObj;

  @override
  List<Object?> get props => [
        usernameInputSectionController,
        emailInputSectionController,
        emailInputSectionController1,
        badgeInputSectionController,
        badgeInputSectionController1,
        mDicosModelObj,
      ];
  MDicosState copyWith({
    TextEditingController? usernameInputSectionController,
    TextEditingController? emailInputSectionController,
    TextEditingController? emailInputSectionController1,
    TextEditingController? badgeInputSectionController,
    TextEditingController? badgeInputSectionController1,
    MDicosModel? mDicosModelObj,
  }) {
    return MDicosState(
      usernameInputSectionController:
          usernameInputSectionController ?? this.usernameInputSectionController,
      emailInputSectionController:
          emailInputSectionController ?? this.emailInputSectionController,
      emailInputSectionController1:
          emailInputSectionController1 ?? this.emailInputSectionController1,
      badgeInputSectionController:
          badgeInputSectionController ?? this.badgeInputSectionController,
      badgeInputSectionController1:
          badgeInputSectionController1 ?? this.badgeInputSectionController1,
      mDicosModelObj: mDicosModelObj ?? this.mDicosModelObj,
    );
  }
}

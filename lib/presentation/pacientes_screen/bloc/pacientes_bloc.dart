import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hospital_pulse_point/presentation/pacientes_screen/models/pacientes_model.dart';
part 'pacientes_event.dart';
part 'pacientes_state.dart';

/// A bloc that manages the state of a Pacientes according to the event that is dispatched to it.
class PacientesBloc extends Bloc<PacientesEvent, PacientesState> {
  PacientesBloc(PacientesState initialState) : super(initialState) {
    on<PacientesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PacientesInitialEvent event,
    Emitter<PacientesState> emit,
  ) async {
    emit(state.copyWith(
      usernameInputSectionController: TextEditingController(),
      emailInputSectionController: TextEditingController(),
      emailInputSectionController1: TextEditingController(),
      emailInputSectionController2: TextEditingController(),
      badgeInputSectionController: TextEditingController(),
      badgeInputSectionController1: TextEditingController(),
    ));
  }
}

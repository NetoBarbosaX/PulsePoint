import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hospital_pulse_point/presentation/administra_o_screen/models/administra_o_model.dart';
part 'administra_o_event.dart';
part 'administra_o_state.dart';

/// A bloc that manages the state of a AdministraO according to the event that is dispatched to it.
class AdministraOBloc extends Bloc<AdministraOEvent, AdministraOState> {
  AdministraOBloc(AdministraOState initialState) : super(initialState) {
    on<AdministraOInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AdministraOInitialEvent event,
    Emitter<AdministraOState> emit,
  ) async {
    emit(state.copyWith(
      usernameInputController: TextEditingController(),
      emailInputController: TextEditingController(),
      badgeController: TextEditingController(),
    ));
  }
}

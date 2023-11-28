import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hospital_pulse_point/presentation/administra_o_one_screen/models/administra_o_one_model.dart';
part 'administra_o_one_event.dart';
part 'administra_o_one_state.dart';

/// A bloc that manages the state of a AdministraOOne according to the event that is dispatched to it.
class AdministraOOneBloc
    extends Bloc<AdministraOOneEvent, AdministraOOneState> {
  AdministraOOneBloc(AdministraOOneState initialState) : super(initialState) {
    on<AdministraOOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AdministraOOneInitialEvent event,
    Emitter<AdministraOOneState> emit,
  ) async {
    emit(state.copyWith(
      usernameInputController: TextEditingController(),
      emailInputController: TextEditingController(),
      badgeController: TextEditingController(),
    ));
  }
}

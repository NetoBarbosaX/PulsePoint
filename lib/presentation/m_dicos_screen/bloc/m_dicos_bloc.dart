import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hospital_pulse_point/presentation/m_dicos_screen/models/m_dicos_model.dart';
part 'm_dicos_event.dart';
part 'm_dicos_state.dart';

/// A bloc that manages the state of a MDicos according to the event that is dispatched to it.
class MDicosBloc extends Bloc<MDicosEvent, MDicosState> {
  MDicosBloc(MDicosState initialState) : super(initialState) {
    on<MDicosInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MDicosInitialEvent event,
    Emitter<MDicosState> emit,
  ) async {
    emit(state.copyWith(
      usernameInputSectionController: TextEditingController(),
      emailInputSectionController: TextEditingController(),
      emailInputSectionController1: TextEditingController(),
      badgeInputSectionController: TextEditingController(),
      badgeInputSectionController1: TextEditingController(),
    ));
  }
}

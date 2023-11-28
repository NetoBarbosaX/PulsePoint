import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/startgrid_item_model.dart';
import 'package:hospital_pulse_point/presentation/inicio_screen/models/inicio_model.dart';
part 'inicio_event.dart';
part 'inicio_state.dart';

/// A bloc that manages the state of a Inicio according to the event that is dispatched to it.
class InicioBloc extends Bloc<InicioEvent, InicioState> {
  InicioBloc(InicioState initialState) : super(initialState) {
    on<InicioInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioInitialEvent event,
    Emitter<InicioState> emit,
  ) async {
    emit(state.copyWith(
        inicioModelObj: state.inicioModelObj?.copyWith(
      startgridItemList: fillStartgridItemList(),
    )));
  }

  List<StartgridItemModel> fillStartgridItemList() {
    return [
      StartgridItemModel(
          mDico: "Médico", mdico: ImageConstant.imgRodOfAsclepius),
      StartgridItemModel(
          mDico: "Farmacêutico", mdico: ImageConstant.imgMedicalDoctor),
      StartgridItemModel(
          mDico: "Administração", mdico: ImageConstant.imgAdministratorMale),
      StartgridItemModel(mDico: "Paciente", mdico: ImageConstant.imgPill)
    ];
  }
}

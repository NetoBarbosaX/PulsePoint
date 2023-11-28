// ignore_for_file: must_be_immutable

part of 'inicio_bloc.dart';

/// Represents the state of Inicio in the application.
class InicioState extends Equatable {
  InicioState({this.inicioModelObj});

  InicioModel? inicioModelObj;

  @override
  List<Object?> get props => [
        inicioModelObj,
      ];
  InicioState copyWith({InicioModel? inicioModelObj}) {
    return InicioState(
      inicioModelObj: inicioModelObj ?? this.inicioModelObj,
    );
  }
}

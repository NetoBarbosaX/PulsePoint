// ignore_for_file: must_be_immutable

part of 'pacientes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Pacientes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PacientesEvent extends Equatable {}

/// Event that is dispatched when the Pacientes widget is first created.
class PacientesInitialEvent extends PacientesEvent {
  @override
  List<Object?> get props => [];
}

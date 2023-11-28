// ignore_for_file: must_be_immutable

part of 'inicio_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Inicio widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioEvent extends Equatable {}

/// Event that is dispatched when the Inicio widget is first created.
class InicioInitialEvent extends InicioEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'm_dicos_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MDicos widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MDicosEvent extends Equatable {}

/// Event that is dispatched when the MDicos widget is first created.
class MDicosInitialEvent extends MDicosEvent {
  @override
  List<Object?> get props => [];
}

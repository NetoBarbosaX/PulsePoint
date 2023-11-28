// ignore_for_file: must_be_immutable

part of 'administra_o_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AdministraO widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AdministraOEvent extends Equatable {}

/// Event that is dispatched when the AdministraO widget is first created.
class AdministraOInitialEvent extends AdministraOEvent {
  @override
  List<Object?> get props => [];
}

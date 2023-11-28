// ignore_for_file: must_be_immutable

part of 'administra_o_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AdministraOOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AdministraOOneEvent extends Equatable {}

/// Event that is dispatched when the AdministraOOne widget is first created.
class AdministraOOneInitialEvent extends AdministraOOneEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'startgrid_item_model.dart';

/// This class defines the variables used in the [inicio_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioModel extends Equatable {
  InicioModel({this.startgridItemList = const []}) {}

  List<StartgridItemModel> startgridItemList;

  InicioModel copyWith({List<StartgridItemModel>? startgridItemList}) {
    return InicioModel(
      startgridItemList: startgridItemList ?? this.startgridItemList,
    );
  }

  @override
  List<Object?> get props => [startgridItemList];
}

import '../../../core/app_export.dart';

/// This class is used in the [startgrid_item_widget] screen.
class StartgridItemModel {
  StartgridItemModel({
    this.mDico,
    this.mdico,
    this.id,
  }) {
    mDico = mDico ?? "Médico";
    mdico = mdico ?? ImageConstant.imgRodOfAsclepius;
    id = id ?? "";
  }

  String? mDico;

  String? mdico;

  String? id;
}

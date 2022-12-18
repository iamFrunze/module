import 'package:flutter/cupertino.dart';
import 'package:module/data/ui/new_project_model.dart';

enum Pages {
  setupPurposeBuilding,
  setupPeoplePlanning,
  setupArea,
  setupConfigurationBuilding,
  setupFloor
}

class CreateProjectController extends ChangeNotifier {
  var currentPage = Pages.setupPurposeBuilding;
  var newProjectModel = const NewProjectModel();

  final chips = <String>[];
  var selectedPurposeBuilding = '';

  set setupSelectedPurposeBuilding(value) {
    selectedPurposeBuilding = value;
    notifyListeners();
  }

  var selectedConfigurationBuilding = '';

  set setupConfigurationBuilding(value) {
    selectedConfigurationBuilding = value;
    notifyListeners();
  }

  final peoplePlanningController = TextEditingController(text: '100');
  final xAreaController = TextEditingController(text: '100');
  final yAreaController = TextEditingController(text: '100');
  var selectedFloor = '';

  set setupFloor(value) {
    selectedFloor = value;
    notifyListeners();
  }

  void nextPage() {
    switch (currentPage) {
      case Pages.setupPurposeBuilding:
        _setupPurposeBuilding(selectedPurposeBuilding);
        _addChip(newProjectModel.purposeBuilding);
        break;
      case Pages.setupPeoplePlanning:
        _setupPeoplePlanning(peoplePlanningController.text);
        _addChip(peoplePlanningController.text);
        break;
      case Pages.setupArea:
        _setupArea(xAreaController.text, yAreaController.text);
        _addChip('${xAreaController.text}X${yAreaController.text}');
        break;
      case Pages.setupConfigurationBuilding:
        _setupConfigurationBuilding(selectedConfigurationBuilding);
        _addChip(selectedConfigurationBuilding);
        break;
      case Pages.setupFloor:
        _setupFloors(selectedFloor);
        _addChip(selectedFloor);
        break;
    }

    currentPage = Pages.values[currentPage.index + 1];

    notifyListeners();
  }

  void onClose() {
    currentPage = Pages.setupPurposeBuilding;
    notifyListeners();
  }

  void _addChip(String value) {
    chips.add(value);
    notifyListeners();
  }

  void _setupPurposeBuilding(String value) {
    newProjectModel = newProjectModel.copyWith(purposeBuilding: value);
    notifyListeners();
  }

  void _setupPeoplePlanning(String value) {
    newProjectModel = newProjectModel.copyWith(peoplePlanning: value);

    notifyListeners();
  }

  void _setupArea(String x, String y) {
    newProjectModel = newProjectModel.copyWith(xArea: x, yArea: y);
    notifyListeners();
  }

  void _setupConfigurationBuilding(String value) {
    newProjectModel = newProjectModel.copyWith(configurationBuilding: value);
    notifyListeners();
  }

  void _setupFloors(String value) {
    newProjectModel = newProjectModel.copyWith(floors: value);
    notifyListeners();
  }

  bool get canNextPage {
    switch (currentPage) {
      case Pages.setupPurposeBuilding:
        return selectedPurposeBuilding.isNotEmpty ? true : false;
      case Pages.setupPeoplePlanning:
        return peoplePlanningController.text.isNotEmpty ? true : false;
      case Pages.setupArea:
        return xAreaController.text.isNotEmpty &&
                yAreaController.text.isNotEmpty
            ? true
            : false;
      case Pages.setupConfigurationBuilding:
        return selectedConfigurationBuilding.isNotEmpty ? true : false;
      case Pages.setupFloor:
        return selectedFloor.isNotEmpty ? true : false;
    }
  }
}

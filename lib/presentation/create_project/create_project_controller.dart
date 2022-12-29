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
  final chips = <String>[];
  final peoplePlanningController = TextEditingController(text: '100');
  final xAreaController = TextEditingController(text: '100');
  final yAreaController = TextEditingController(text: '100');
  Pages currentPage = Pages.setupPurposeBuilding;
  NewProjectModel newProjectModel = const NewProjectModel();

  String get selectedPurposeBuilding => _selectedPurposeBuilding;

  set selectedPurposeBuilding(String value) {
    _selectedPurposeBuilding = value;
    notifyListeners();
  }

  String get selectedConfigurationBuilding => _selectedConfigurationBuilding;

  set selectedFloor(String value) {
    _selectedFloor = value;
    notifyListeners();
  }

  String get selectedFloor => _selectedFloor;

  set selectedConfigurationBuilding(String value) {
    _selectedConfigurationBuilding = value;
    notifyListeners();
  }

  bool get canNextPage {
    switch (currentPage) {
      case Pages.setupPurposeBuilding:
        return selectedPurposeBuilding.isNotEmpty;
      case Pages.setupPeoplePlanning:
        return peoplePlanningController.text.isNotEmpty;
      case Pages.setupArea:
        return xAreaController.text.isNotEmpty &&
            yAreaController.text.isNotEmpty;
      case Pages.setupConfigurationBuilding:
        return selectedConfigurationBuilding.isNotEmpty;
      case Pages.setupFloor:
        return selectedFloor.isNotEmpty;
    }
  }

  String _selectedPurposeBuilding = '';
  String _selectedConfigurationBuilding = '';
  String _selectedFloor = '';

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
        _addChip('${xAreaController.text} X ${yAreaController.text}');
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
    chips.clear();
    notifyListeners();
  }

  void chipRouting(String value) {
    final index = chips.indexOf(value);
    currentPage = Pages.values[index];
    chips.removeRange(index, chips.length);
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
}

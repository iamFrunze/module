import 'package:equatable/equatable.dart';

class NewProjectModel extends Equatable {
  final String purposeBuilding;
  final String peoplePlanning;
  final String xArea;
  final String yArea;
  final String configurationBuilding;
  final String floors;

  const NewProjectModel({
    this.purposeBuilding = '',
    this.peoplePlanning = '100',
    this.xArea = '100',
    this.yArea = '100',
    this.configurationBuilding = '',
    this.floors = '',
  });

  NewProjectModel copyWith({
    String? purposeBuilding,
    String? peoplePlanning,
    String? xArea,
    String? yArea,
    String? configurationBuilding,
    String? floors,
  }) {
    return NewProjectModel(
      purposeBuilding: purposeBuilding ?? this.purposeBuilding,
      peoplePlanning: peoplePlanning ?? this.peoplePlanning,
      xArea: xArea ?? this.xArea,
      yArea: yArea ?? this.yArea,
      configurationBuilding:
          configurationBuilding ?? this.configurationBuilding,
      floors: floors ?? this.floors,
    );
  }

  @override
  List<Object?> get props => [
        purposeBuilding,
        peoplePlanning,
        xArea,
        yArea,
        configurationBuilding,
        floors,
      ];
}

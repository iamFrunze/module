import 'package:equatable/equatable.dart';

class BlockModel extends Equatable {
  final String icon;
  final String desc;

  @override
  List<Object?> get props => [icon, desc];

  const BlockModel({
    required this.icon,
    required this.desc,
  });
}

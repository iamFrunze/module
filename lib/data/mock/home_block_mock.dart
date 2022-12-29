enum BuilderConfiguration {
  bbb,
  bkb,
  bb,
  b,
}

class HomeBlockPropertiesMock {
  final bool isSunny;
  final BuilderConfiguration builderConfiguration;
  final int countPeople;
  final int countFloor;
  final int xArea;
  final int yArea;
  final double height;

  HomeBlockPropertiesMock({
    required this.isSunny,
    required this.builderConfiguration,
    required this.countPeople,
    required this.countFloor,
    required this.xArea,
    required this.yArea,
    required this.height,
  });
}

class HomeBlockMock {
  final String title;
  final int numberContract;
  final int numberCrm;
  final String date;
  final String personName;
  final HomeBlockPropertiesMock homeBlockPropertiesMock;
  final int price;

  HomeBlockMock({
    required this.title,
    required this.numberContract,
    required this.numberCrm,
    required this.date,
    required this.personName,
    required this.homeBlockPropertiesMock,
    required this.price,
  });
}

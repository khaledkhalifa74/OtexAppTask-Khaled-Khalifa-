class PlanModel {
  int? id;
  String planName;
  double planPrice;
  bool? isHealthPin;
  bool? isGlobal;
  bool? isPremium;
  int? numberOfDaysMoveUp;
  int? numberOfAdValidity;
  bool isSelected;
  int numberOfViews;
  String? flagText;

  PlanModel({
    this.id,
    required this.planName,
    required this.planPrice,
    this.isHealthPin,
    this.isGlobal,
    this.isPremium,
    this.numberOfDaysMoveUp,
    this.numberOfAdValidity,
    this.isSelected = false,
    required this.numberOfViews,
    this.flagText,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'planName' : planName,
      'planPrice' : planPrice,
      'isHealthPin' : isHealthPin,
      'isGlobal' : isGlobal,
      'isPremium' : isPremium,
      'numberOfDaysMoveUp' : numberOfDaysMoveUp,
      'numberOfAdValidity' : numberOfAdValidity,
      'isSelected' : isSelected ? 1 : 0,
      'numberOfViews' : numberOfViews,
      'flagText' : flagText,

    };
  }

  factory PlanModel.fromMap(Map<String, dynamic> map) {
    return PlanModel(
      id: map['id'],
      planName: map['planName'],
      planPrice: map['planPrice'],
      isHealthPin: map['isHealthPin'],
      isGlobal: map['isGlobal'],
      isPremium: map['isPremium'],
      numberOfDaysMoveUp: map['numberOfDaysMoveUp'],
      numberOfAdValidity: map['numberOfAdValidity'],
      isSelected: map['isSelected'] == 1,
      numberOfViews: map['numberOfViews'],
      flagText: map['flagText'],
    );
  }
}

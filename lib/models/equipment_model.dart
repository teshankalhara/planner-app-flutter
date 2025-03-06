class EquipmentModel {
  final int id;
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImgUrl;
  final int noOfMin;
  final double noOfCalories;
  final bool isHandOvered;

  EquipmentModel({
    required this.id,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImgUrl,
    required this.noOfMin,
    required this.noOfCalories,
    required this.isHandOvered,
  });
}

import 'package:planner_app/models/equipment_model.dart';

class EquipmentData {
  final List<EquipmentModel> equipmentList = [
    EquipmentModel(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImgUrl: "assets/images/equipments/calendar.png",
      noOfMin: 30,
      noOfCalories: 2,
      isHandOvered: false,
    ),
    EquipmentModel(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImgUrl: "assets/images/equipments/checklist.png",
      noOfMin: 20,
      isHandOvered: false,
      noOfCalories: 15,
    ),
    EquipmentModel(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImgUrl: "assets/images/equipments/dumbbell.png",
      noOfMin: 60,
      isHandOvered: false,
      noOfCalories: 30,
    ),
    EquipmentModel(
      id: 3,
      equipmentName: "Jump Rope",
      equipmentDescription:
          "A rope used for cardiovascular exercises and coordination training.",
      equipmentImgUrl: "assets/images/equipments/dumbbells.png",
      noOfMin: 15,
      isHandOvered: false,
      noOfCalories: 12,
    ),
    EquipmentModel(
      id: 4,
      equipmentName: "Kettlebells",
      equipmentDescription:
          "Weights with a handle used for strength, endurance, and flexibility training.",
      equipmentImgUrl: "assets/images/equipments/facial-roller.png",
      noOfMin: 45,
      isHandOvered: false,
      noOfCalories: 25,
    ),
    EquipmentModel(
      id: 5,
      equipmentName: "Exercise Ball",
      equipmentDescription:
          "A large, inflatable ball used for core and stability exercises.",
      equipmentImgUrl: "assets/images/equipments/stationary-bike.png",
      noOfMin: 25,
      isHandOvered: false,
      noOfCalories: 15,
    ),
    EquipmentModel(
      id: 6,
      equipmentName: "Pull-up Bar",
      equipmentDescription:
          "A bar mounted to a wall or doorframe for upper body strength exercises.",
      equipmentImgUrl: "assets/images/equipments/treadmill.png",
      noOfMin: 40,
      isHandOvered: false,
      noOfCalories: 20,
    ),
    EquipmentModel(
      id: 7,
      equipmentName: "Medicine Ball",
      equipmentDescription:
          "A heavy ball used for strength and coordination exercises.",
      equipmentImgUrl: "assets/images/equipments/facial-roller.png",
      noOfMin: 35,
      isHandOvered: false,
      noOfCalories: 18,
    ),
    EquipmentModel(
      id: 8,
      equipmentName: "Bench",
      equipmentDescription:
          "A stable surface for various strength training exercises.",
      equipmentImgUrl: "assets/images/equipments/dumbbells.png",
      noOfMin: 55,
      isHandOvered: false,
      noOfCalories: 28,
    ),
    EquipmentModel(
      id: 9,
      equipmentName: "Barbell",
      equipmentDescription:
          "A long metal bar with weights attached to each end, used for resistance training.",
      equipmentImgUrl: "assets/images/equipments/skipping-rope.png",
      noOfMin: 50,
      isHandOvered: false,
      noOfCalories: 27,
    ),
  ];
}

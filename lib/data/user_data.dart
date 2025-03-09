import 'package:planner_app/models/equipment_model.dart';
import 'package:planner_app/models/exercise_model.dart';
import 'package:planner_app/models/user_model.dart';

UserModel user = UserModel(
  userId: "123456",
  fullName: "John Doe",
  age: 30,
  gender: "Male",
  address: "123 Main St, City, Country",
  description: "Fitness enthusiast",
  weight: 70.0,
  height: 180.0,
  exerciseList: [
    ExerciseModel(
      exerciseName: "Push-ups",
      exerciseImgUrl: "assets/images/exercises/cobra.png",
      noOfMin: 15,
      id: 0,
      isCompleted: false,
    ),
    ExerciseModel(
      exerciseName: "Squats",
      exerciseImgUrl: "assets/images/exercises/downward-facing.png",
      noOfMin: 20,
      id: 1,
      isCompleted: false,
    ),
  ],
  equipmentList: [
    EquipmentModel(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      noOfCalories: 150,
      equipmentImgUrl: "assets/images/equipments/checklist.png",
      noOfMin: 20,
      isHandOvered: false,
    ),
    EquipmentModel(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      noOfCalories: 300,
      equipmentImgUrl: "assets/images/equipments/dumbbell.png",
      noOfMin: 60,
      isHandOvered: false,
    ),
  ],
  favExerciseList: [
    ExerciseModel(
      exerciseName: "Plank",
      exerciseImgUrl: "assets/images/equipments/dumbbell.png",
      noOfMin: 30,
      id: 2,
      isCompleted: false,
    ),
  ],
  favEquipmentList: [
    EquipmentModel(
      id: 3,
      equipmentName: "Dumbbells",
      equipmentDescription: "Weights used for strength training.",
      noOfCalories: 200,
      equipmentImgUrl: "assets/images/equipments/dumbbell.png",
      noOfMin: 30,
      isHandOvered: false,
    ),
  ],
);

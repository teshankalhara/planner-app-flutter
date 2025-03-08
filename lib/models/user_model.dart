import 'package:planner_app/models/equipment_model.dart';
import 'package:planner_app/models/exercise_model.dart';

class UserModel {
  final String userId;
  final String fullName;
  final String gender;
  final int age;
  final String address;
  final double weight;
  final double height;
  final String description;
  int totalExercisedCompleted = 0;
  int totalEquipmentHandOvered = 0;

  final List<ExerciseModel> exerciseList;
  final List<EquipmentModel> equipmentList;
  final List<ExerciseModel> favExerciseList;
  final List<EquipmentModel> favEquipmentList;

  UserModel({
    required this.userId,
    required this.fullName,
    required this.gender,
    required this.age,
    required this.address,
    required this.weight,
    required this.height,
    required this.description,
    required this.exerciseList,
    required this.equipmentList,
    required this.favExerciseList,
    required this.favEquipmentList,
  });

  //exercises
  void addExercise(ExerciseModel exercise) {
    exerciseList.add(exercise);
  }

  void removeExercise(ExerciseModel exercise) {
    exerciseList.remove(exercise);
  }

  void addFavExercise(ExerciseModel exercise) {
    favExerciseList.add(exercise);
  }

  void removeFavExercise(ExerciseModel exercise) {
    favExerciseList.remove(exercise);
  }

  //equipment
  void addEquipment(EquipmentModel equipment) {
    equipmentList.add(equipment);
  }
}

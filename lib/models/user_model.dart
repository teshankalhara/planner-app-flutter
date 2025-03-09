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

  void removeEquipment(EquipmentModel equipment) {
    equipmentList.remove(equipment);
  }

  void addFavEquipment(EquipmentModel equipment) {
    favEquipmentList.add(equipment);
  }

  void removeFavEquipment(EquipmentModel equipment) {
    favEquipmentList.remove(equipment);
  }

  void markExerciseAsCompleted(int exerciseId) {
    final ExerciseModel exercise = exerciseList.firstWhere(
      (exercise) => exercise.id == exerciseId,
    );
    exercise.isCompleted = true;
    removeExercise(exercise);
    totalExercisedCompleted++;
  }

  void markEquipmentAsHandedOver(int equipmentId) {
    final equipment = equipmentList.firstWhere(
      (equipment) => equipment.id == equipmentId,
    );
    equipment.isHandOvered = true;
    removeEquipment(equipment);
    totalEquipmentHandOvered++;
  }

  double calculateTotalCaloriesBurned() {
    double totalCaloriesBurned = 0;
    for (var exercise in exerciseList) {
      totalCaloriesBurned += exercise.noOfMin * 0.005;
    }
    for (var equipment in equipmentList) {
      totalCaloriesBurned += equipment.noOfMin * 0.005;
    }
    return totalCaloriesBurned;
  }

  int calculateTotalMinutesSpent() {
    int totalMinutesSpent = 0;
    for (var exercise in exerciseList) {
      totalMinutesSpent += exercise.noOfMin;
    }
    for (var equipment in equipmentList) {
      totalMinutesSpent += equipment.noOfMin;
    }
    return totalMinutesSpent;
  }

  int calculateTotalExercisesCompleted() {
    int totalExercisesCompleted = 0;
    for (var exercise in exerciseList) {
      if (exercise.isCompleted) {
        totalExercisesCompleted++;
      }
    }
    return totalExercisesCompleted;
  }

  int calculateTotalEquipmentHandedOver() {
    int totalEquipmentHandedOver = 0;
    for (var equipment in equipmentList) {
      if (equipment.isHandOvered) {
        totalEquipmentHandedOver++;
      }
    }
    return totalEquipmentHandedOver;
  }
}

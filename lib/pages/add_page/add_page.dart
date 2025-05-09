import 'package:flutter/material.dart';
import 'package:planner_app/constants/colors.dart';
import 'package:planner_app/constants/consant_values.dart';
import 'package:planner_app/data/equipment_data.dart';
import 'package:planner_app/data/exercise_data.dart';
import 'package:planner_app/data/user_data.dart';
import 'package:planner_app/models/equipment_model.dart';
import 'package:planner_app/models/exercise_model.dart';
import 'package:planner_app/widgets/card/add_equipments_card.dart';
import 'package:planner_app/widgets/card/add_exercise_card.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final userData = user;

  final exerciseList = ExerciseData().exerciseList;
  final equipmentList = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${userData.fullName}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Let's Add Some Workouts and Equipment for today!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: kGradientTopColor,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "All Exercises",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exerciseList.length,
                    itemBuilder: (context, index) {
                      ExerciseModel exercise = exerciseList[index];
                      return AddExerciseCard(
                        exerciseTitle: exercise.exerciseName,
                        exerciseImageUrl: exercise.exerciseImgUrl,
                        noOfMinutes: exercise.noOfMin,
                        toggleAddExercise: () {
                          setState(() {
                            if (userData.exerciseList.contains(exercise)) {
                              userData.removeExercise(exercise);
                              print(userData.exerciseList.length);
                            } else {
                              userData.addExercise(exercise);
                              print(userData.exerciseList.length);
                            }
                          });
                        },
                        isAdded: userData.exerciseList.contains(exercise),
                        toggleFavoriteExercise: () {
                          setState(() {
                            if (userData.favExerciseList.contains(exercise)) {
                              userData.removeFavExercise(exercise);
                              print(userData.favExerciseList.length);
                            } else {
                              userData.addFavExercise(exercise);
                              print(userData.favExerciseList.length);
                            }
                          });
                        },
                        isFavorite: userData.favExerciseList.contains(exercise),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "All Equipment",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: equipmentList.length,
                    itemBuilder: (context, index) {
                      EquipmentModel equipment = equipmentList[index];
                      return AddEquipmentsCard(
                        equipmentName: equipment.equipmentName,
                        equipmentDescription: equipment.equipmentDescription,
                        equipmentImgUrl: equipment.equipmentImgUrl,
                        noOfMin: equipment.noOfMin,
                        noOfCalories: equipment.noOfCalories,
                        toggleAddEquipment: () {
                          setState(() {
                            if (userData.equipmentList.contains(equipment)) {
                              userData.removeEquipment(equipment);
                              print(userData.equipmentList.length);
                            } else {
                              userData.addEquipment(equipment);
                              print(userData.equipmentList.length);
                            }
                          });
                        },
                        toggleFavoriteEquipment: () {
                          setState(() {
                            if (userData.favEquipmentList.contains(equipment)) {
                              userData.removeFavEquipment(equipment);
                              print(userData.favEquipmentList.length);
                            } else {
                              userData.addFavEquipment(equipment);
                              print(userData.favEquipmentList.length);
                            }
                          });
                        },
                        isAdded: userData.equipmentList.contains(equipment),
                        isFavorite: userData.favEquipmentList.contains(
                          equipment,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

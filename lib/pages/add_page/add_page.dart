import 'package:flutter/material.dart';
import 'package:planner_app/constants/colors.dart';
import 'package:planner_app/constants/consant_values.dart';
import 'package:planner_app/data/exercise_data.dart';
import 'package:planner_app/data/user_data.dart';
import 'package:planner_app/models/exercise_model.dart';
import 'package:planner_app/widgets/card/add_exercise_card.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final userData = user;

  final exerciseList = ExerciseData().exerciseList;

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
                    itemBuilder: (context, index) {
                      ExerciseModel exercise = exerciseList[index];
                      return AddExerciseCard(
                        exerciseTitle: exercise.exerciseName,
                        exerciseImageUrl: exercise.exerciseImgUrl,
                        noOfMinutes: exercise.noOfMin,
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

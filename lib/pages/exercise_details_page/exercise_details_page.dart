import 'package:flutter/material.dart';
import 'package:planner_app/constants/colors.dart';
import 'package:planner_app/constants/consant_values.dart';
import 'package:planner_app/models/equipment_model.dart';
import 'package:planner_app/models/exercise_model.dart';
import 'package:planner_app/widgets/custom_app_bar.dart';
import 'package:planner_app/widgets/card/exercise_card.dart';

class ExerciseDetailsPage extends StatefulWidget {
  final String title;
  final String description;
  final List<ExerciseModel> exercises;
  final List<EquipmentModel> equipments;

  final bool showEquipment;

  const ExerciseDetailsPage({
    super.key,
    required this.title,
    required this.description,
    required this.exercises,
    required this.equipments,
    required this.showEquipment,
  });

  @override
  State<ExerciseDetailsPage> createState() => _ExerciseDetailsPageState();
}

class _ExerciseDetailsPageState extends State<ExerciseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.title),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  widget.description,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                  ),
                  itemCount: widget.exercises.length,
                  itemBuilder: (context, index) {
                    ExerciseModel exercise = widget.exercises[index];
                    return ExerciseCard(
                      title: exercise.exerciseName,
                      image: exercise.exerciseImgUrl,
                      noOfMinutes: exercise.noOfMin.toString(),
                      showMore: false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

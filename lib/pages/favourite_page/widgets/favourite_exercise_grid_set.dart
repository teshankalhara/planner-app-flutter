import 'package:flutter/material.dart';
import 'package:planner_app/constants/colors.dart';
import 'package:planner_app/data/user_data.dart';
import 'package:planner_app/models/exercise_model.dart';
import 'package:planner_app/models/user_model.dart';
import '../../../constants/consant_values.dart';

class FavouriteExerciseGridSet extends StatefulWidget {
  final UserModel user;

  const FavouriteExerciseGridSet({super.key, required this.user});

  @override
  State<FavouriteExerciseGridSet> createState() =>
      _FavouriteExerciseGridSetState();
}

class _FavouriteExerciseGridSetState extends State<FavouriteExerciseGridSet> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: 16 / 17,
      ),
      itemCount: user.favExerciseList.length,
      itemBuilder: (context, index) {
        ExerciseModel favExercise = user.favExerciseList[index];
        return Card(
          // ignore: deprecated_member_use
          color: kCardBackgroundColor.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                Text(
                  favExercise.exerciseName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  favExercise.exerciseImgUrl,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 5),
                Expanded(
                  child: Text(
                    "${favExercise.noOfMin.toString()} mins",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kMainPinkColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

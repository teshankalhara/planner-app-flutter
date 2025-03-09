import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:planner_app/constants/colors.dart';
import 'package:planner_app/constants/consant_values.dart';
import 'package:planner_app/data/user_data.dart';
import 'package:planner_app/models/equipment_model.dart';
import 'package:planner_app/models/exercise_model.dart';
import 'package:planner_app/pages/favourite_page/widgets/favoruite_equipment_grid_set.dart';
import 'package:planner_app/pages/favourite_page/widgets/favourite_exercise_grid_set.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  // date format
  final DateFormat formatter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormatter = DateFormat('dd');

  //user data
  final userData = user;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formattedDay = dayFormatter.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $formattedDay",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kSubtitleColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Hello, ${userData.fullName}",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: kMainColor,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.favorite, color: Colors.pink, size: 30),
                  ],
                ),
                const SizedBox(height: 15),
                const Text(
                  "Here are all your favorited Workouts",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: kGradientTopColor,
                  ),
                ),
                const SizedBox(height: 15),
                FavouriteExerciseGridSet(user: userData),
                const SizedBox(height: 15),
                const Text(
                  "Here are all your favorited Equipments",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: kGradientTopColor,
                  ),
                ),
                const SizedBox(height: 15),
                FavoruiteEquipmentGridSet(user: userData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

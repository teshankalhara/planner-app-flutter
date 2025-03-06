import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:planner_app/constants/colors.dart';
import 'package:planner_app/constants/consant_values.dart';
import 'package:planner_app/data/user_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Text(
                  userData.fullName,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
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

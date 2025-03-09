import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:planner_app/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('EEEE , MMMM');
    final DateFormat dayFormatter = DateFormat('dd');

    String formattedDate = formatter.format(now);
    String formattedDay = dayFormatter.format(now);

    return AppBar(
      backgroundColor: Colors.transparent,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${formattedDate.toUpperCase()} $formattedDay",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: kSubtitleColor,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: kMainColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

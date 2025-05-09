import 'package:flutter/material.dart';
import 'package:planner_app/constants/colors.dart';

class ExerciseCard extends StatelessWidget {
  final String title;
  final String image;
  final String noOfMinutes;
  final bool showMore;

  const ExerciseCard({
    super.key,
    required this.title,
    required this.image,
    required this.noOfMinutes,
    required this.showMore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: kCardBackgroundColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, offset: Offset(0, 4), blurRadius: 4),
        ],
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.46,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(image, fit: BoxFit.cover, width: 100),
            ),
            const SizedBox(height: 10),
            if (!showMore)
              Text(
                "$noOfMinutes minutes",
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
            if (showMore)
              const Text(
                "see more",
                style: TextStyle(fontSize: 15, color: kGradientBottomColor),
              ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

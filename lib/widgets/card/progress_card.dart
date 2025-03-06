import 'package:flutter/material.dart';
import 'package:planner_app/constants/colors.dart';

class ProgressCard extends StatefulWidget {
  final double progressValue;
  final int total;

  const ProgressCard({
    super.key,
    required this.progressValue,
    required this.total,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.total).toInt();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [kGradientTopColor, kGradientBottomColor],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              "Proteins, Fats, Water & \nCarbohydratess",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w600,
                color: kMainWhiteColor,
              ),
            ),
          ),
          LinearProgressIndicator(
            value: widget.progressValue,
            backgroundColor: kGradientBottomColor,
            valueColor: AlwaysStoppedAnimation<Color>(kMainWhiteColor),
            minHeight: 12,
            borderRadius: BorderRadius.circular(10),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTag("Done", done.toString()),
              _buildTag("Total", widget.total.toString()),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildTag(String title, String value) {
  return Column(
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: kMainWhiteColor,
        ),
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: kMainWhiteColor,
        ),
      ),
    ],
  );
}

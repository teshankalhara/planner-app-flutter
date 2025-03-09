import 'package:flutter/material.dart';
import 'package:planner_app/constants/colors.dart';
import 'package:planner_app/constants/consant_values.dart';

class AddEquipmentsCard extends StatefulWidget {
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImgUrl;
  final int noOfMin;
  final double noOfCalories;
  final bool isAdded;
  final bool isFavorite;

  final void Function() toggleAddEquipment;
  final void Function() toggleFavoriteEquipment;

  const AddEquipmentsCard({
    super.key,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImgUrl,
    required this.noOfMin,
    required this.noOfCalories,
    required this.toggleAddEquipment,
    required this.toggleFavoriteEquipment,
    required this.isAdded,
    required this.isFavorite,
  });

  @override
  State<AddEquipmentsCard> createState() => _AddEquipmentsCardState();
}

class _AddEquipmentsCardState extends State<AddEquipmentsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(kDefaultPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: kCardBackgroundColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 2),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.equipmentName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kMainColor,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.equipmentImgUrl,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.equipmentDescription,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: kMainColor,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Time: ${widget.noOfMin} min and ${widget.noOfCalories} cal burned",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: kGradientBottomColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: kSubtitleColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.toggleAddEquipment();
                        },
                        icon: Icon(
                          widget.isAdded ? Icons.remove : Icons.add,
                          size: 30,
                          color: kGradientBottomColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: kSubtitleColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.toggleFavoriteEquipment();
                        },
                        icon: Icon(
                          widget.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: 30,
                          color: kMainPinkColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:planner_app/constants/colors.dart';
import 'package:planner_app/constants/consant_values.dart';
import 'package:planner_app/data/user_data.dart';
import 'package:planner_app/models/equipment_model.dart';
import 'package:planner_app/models/user_model.dart';

class FavoruiteEquipmentGridSet extends StatefulWidget {
  final UserModel user;

  const FavoruiteEquipmentGridSet({super.key, required this.user});

  @override
  State<FavoruiteEquipmentGridSet> createState() =>
      _FavoruiteEquipmentGridSetState();
}

class _FavoruiteEquipmentGridSetState extends State<FavoruiteEquipmentGridSet> {
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
      itemCount: user.favEquipmentList.length,
      itemBuilder: (context, index) {
        EquipmentModel favEquipment = user.favEquipmentList[index];
        return Card(
          // ignore: deprecated_member_use
          color: kCardBackgroundColor.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                Text(
                  favEquipment.equipmentName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  favEquipment.equipmentImgUrl,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 5),
                Expanded(
                  child: Text(
                    favEquipment.equipmentDescription,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kMainPinkColor,
                    ),
                    textAlign: TextAlign.justify,
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

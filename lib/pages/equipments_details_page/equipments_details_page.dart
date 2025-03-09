import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:planner_app/constants/colors.dart';
import 'package:planner_app/constants/consant_values.dart';
import 'package:planner_app/models/equipment_model.dart';
import 'package:planner_app/widgets/card/equipment_card.dart';
import 'package:planner_app/widgets/custom_app_bar.dart';

class EquipmentDetailsPage extends StatefulWidget {
  final String title;
  final String description;
  final List<EquipmentModel> equipemtList;

  const EquipmentDetailsPage({
    super.key,
    required this.title,
    required this.description,
    required this.equipemtList,
  });

  @override
  State<EquipmentDetailsPage> createState() => _EquipmentDetailsPageState();
}

class _EquipmentDetailsPageState extends State<EquipmentDetailsPage> {
  //for the date and time formats
  final DateFormat formatter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormatter = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.title),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: kMainColor,
                ),
              ),
              SizedBox(height: 20),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding,
                  childAspectRatio: 16 / 9,
                ),
                itemCount: widget.equipemtList.length,
                itemBuilder: (context, index) {
                  EquipmentModel equipment = widget.equipemtList[index];
                  return EquipmentCard(
                    equipmentName: equipment.equipmentName,
                    equipmentImageUrl: equipment.equipmentImgUrl,
                    noOfMinuites: equipment.noOfMin,
                    equipmentDescription: equipment.equipmentDescription,
                    noOfCalories: equipment.noOfCalories,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

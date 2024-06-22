import 'package:flutter/material.dart';
import 'package:flutter_dashboard/data/health_details.dart';
import 'package:flutter_dashboard/widgets/custom_card_widget.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                healthDetails.healthData[index].icon,
                size: 30,
              ),
              Text(
                healthDetails.healthData[index].value,
              ),
              Text(
                healthDetails.healthData[index].title,
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/activity_details_card.dart';
import 'package:flutter_dashboard/widgets/header_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        HeaderWidget(),
        SizedBox(height: 20),
        ActivityDetailsCard(),
      ],
    );
  }
}

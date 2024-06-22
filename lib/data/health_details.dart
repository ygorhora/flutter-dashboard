import 'package:flutter/material.dart';
import 'package:flutter_dashboard/model/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(
      icon: Icons.fireplace,
      value: "305",
      title: "Calories burned",
    ),
    HealthModel(
      icon: Icons.run_circle,
      value: "10,983",
      title: "Steps",
    ),
    HealthModel(
      icon: Icons.social_distance,
      value: "7km",
      title: "Distance",
    ),
    HealthModel(
      icon: Icons.fireplace,
      value: "7h48m",
      title: "Sleep",
    ),
  ];
}

import 'package:flutter/material.dart';
import 'reducestress_stretching.dart'; // เรียกใช้ Layout

class ReducestressDeepBreathing extends StatelessWidget {
  const ReducestressDeepBreathing({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Deep Breathing',
      icon: Icons.air_rounded,
    );
  }
}

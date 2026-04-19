import 'package:flutter/material.dart';
import 'buildstrength_pushup.dart'; // เรียกใช้ Layout จากไฟล์ pushup

class BuildstrengthSquat extends StatelessWidget {
  const BuildstrengthSquat({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Squat',
      icon: Icons.accessibility_new_rounded,
    );
  }
}
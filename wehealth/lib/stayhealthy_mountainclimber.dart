import 'package:flutter/material.dart';
// import ไฟล์ที่เก็บ ExerciseBaseLayout ไว้ (สมมติว่าอยู่ที่ stayhealthy_stretching.dart)
import 'stayhealthy_stretching.dart'; 

class StayhealthyMountainClimber extends StatelessWidget {
  const StayhealthyMountainClimber({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Mountain Climbers',
      icon: Icons.terrain_rounded, // ไอคอนที่สื่อถึงการปีนเขาตามดีไซน์
    );
  }
}
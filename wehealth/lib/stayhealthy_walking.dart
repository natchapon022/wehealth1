import 'package:flutter/material.dart';
import 'stayhealthy_stretching.dart'; 

class StayhealthyWalking extends StatelessWidget {
  const StayhealthyWalking({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Walking',
      icon: Icons.directions_walk_rounded, // ไอคอนเดินตามดีไซน์
    );
  }
}
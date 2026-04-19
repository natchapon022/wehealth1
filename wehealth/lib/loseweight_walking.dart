import 'package:flutter/material.dart';
import 'loseweight_stretching.dart'; // เรียกใช้ Layout จากไฟล์แรก

class LoseweightWalking extends StatelessWidget {
  const LoseweightWalking({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Walking',
      icon: Icons.directions_walk_rounded,
    );
  }
}

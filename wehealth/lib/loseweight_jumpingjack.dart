import 'package:flutter/material.dart';
import 'loseweight_stretching.dart'; // เรียกใช้ Layout จากไฟล์แรก

class LoseweightJumpingjack extends StatelessWidget {
  const LoseweightJumpingjack({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Jumping Jack',
      icon: Icons.bolt_rounded,
    );
  }
}

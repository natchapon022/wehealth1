import 'package:flutter/material.dart';
import 'buildstrength_pushup.dart'; // เรียกใช้ Layout จากไฟล์ pushup

class BuildstrengthSitup extends StatelessWidget {
  const BuildstrengthSitup({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Sit up',
      icon: Icons.airline_seat_flat_angled_rounded,
    );
  }
}
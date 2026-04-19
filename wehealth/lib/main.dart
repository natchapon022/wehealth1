import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wehealth/buildstrength_workout.dart';
import 'package:wehealth/buildstrength_pushup.dart';
import 'package:wehealth/goal_setup.dart';
import 'package:wehealth/homepage_buildstrenth.dart';
import 'package:wehealth/homepage_loseweight.dart';
import 'package:wehealth/homepage_reducestress.dart';
import 'package:wehealth/homepage_stayhealthy.dart';
import 'package:wehealth/login_page.dart';
import 'package:wehealth/loginemail.dart';
import 'package:wehealth/loseweight_jumpingjack.dart';
import 'package:wehealth/loseweight_workout.dart';
import 'package:wehealth/reducestress_deepbreathing.dart';
import 'package:wehealth/reducestress_meditate.dart';
import 'package:wehealth/reducestress_stretching.dart';
import 'package:wehealth/reducestress_workout.dart';
import 'package:wehealth/register.dart';
import 'package:wehealth/stayhealthy_mountainclimber.dart';
import 'package:wehealth/stayhealthy_stretching.dart';
import 'package:wehealth/stayhealthy_walking.dart';
import 'package:wehealth/stayhealthy_workout.dart';
import 'package:wehealth/summerize.dart';

void main() {
  runApp(const WEhealthApp());
}

class WEhealthApp extends StatelessWidget {
  const WEhealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WEhealth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Welcome to WEhealth',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),

              const Text(
                'Create an Account to get started on your\nHealth and Happiness life',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, height: 1.5),
              ),
              const SizedBox(height: 35),

              _buildButton('Continue With Apple'),
              const SizedBox(height: 15),

              _buildButton('Continue With Email'),
              const SizedBox(height: 30),

              Container(
                width: 140,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFD0D7FF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Image.asset(
                    'photo/google.png',
                    height: 30,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 14),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB3D4FF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      'login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 30),

              Image.asset(
                'photo/wehealthlogo.png',
                height: 140,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF9FC3E6),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

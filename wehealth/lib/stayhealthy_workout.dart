import 'package:flutter/material.dart';
import 'stayhealthy_mountainclimber.dart';
import 'stayhealthy_stretching.dart';
import 'stayhealthy_walking.dart';

class StayhealthyWorkout extends StatelessWidget {
  const StayhealthyWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          // ปรับ Gradient ให้ดูนุ่มนวลผ่อนคลาย
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFE3F2FD), Colors.white, Color(0xFFBBDEFB)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                _buildHeader(), // ส่วนหัวข้อที่มีเส้น Accent
                const SizedBox(height: 30),
                const Text(
                  'Daily Exercises',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
                ),
                const SizedBox(height: 15),
                
                // รายการ Card แบบ Glassmorphism
                Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      _buildModernCard(
                        context, 
                        'Stretching', 
                        '2 mins', 
                        Icons.accessibility_new_rounded,
                        const StayhealthyStretching()
                      ),
                      _buildModernCard(
                        context, 
                        'Mountain Climbers', 
                        '2 mins', 
                        Icons.terrain_rounded,
                        const StayhealthyMountainClimber()
                      ),
                      _buildModernCard(
                        context, 
                        'Walking', 
                        '30 mins', 
                        Icons.directions_walk_rounded,
                        const StayhealthyWalking()
                      ),
                    ],
                  ),
                ),
                
                _buildBackButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ส่วนหัวข้อที่ปรับให้ตรงธีม Modern
  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Stay Healthy',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900,
            color: Color(0xFF1976D2),
            letterSpacing: -1.0,
          ),
        ),
        Container(
          height: 4,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }

  // การ์ดสไตล์ Modern Glassmorphism
  Widget _buildModernCard(BuildContext context, String title, String duration, IconData icon, Widget nextPage) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7), // พื้นหลังโปร่งแสง
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white, width: 1.5), // เส้นขอบขาวแบบ Glass
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          leading: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFE3F2FD),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, color: Colors.blueAccent, size: 30),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(duration, style: const TextStyle(color: Colors.black45, fontSize: 16)),
          trailing: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1976D2), // ปุ่ม Play วงกลมสีเข้ม
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: const Icon(Icons.play_arrow_rounded, color: Colors.white),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => nextPage)),
            ),
          ),
        ),
      ),
    );
  }

  // ปุ่ม Back แบบ Minimal
  Widget _buildBackButton(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: TextButton(
          onPressed: () => Navigator.pop(context),
          style: TextButton.styleFrom(
            backgroundColor: Colors.black.withOpacity(0.05),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          child: const Text('Back', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
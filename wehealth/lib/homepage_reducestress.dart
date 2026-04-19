import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageReducestress extends StatelessWidget {
  const HomepageReducestress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ใช้ Container ครอบเพื่อสร้างพื้นหลังไล่เฉดสีให้ดูสบายตา
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE3F2FD), Colors.white],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),

                // --- Header Section ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Greeting User!',
                          style: GoogleFonts.nunito(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xFF1976D2),
                          ),
                        ),
                        Text(
                          'Take a deep breath and relax',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          )
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xFFB3E0FF),
                        child: Icon(Icons.spa_rounded, color: Colors.white, size: 30),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),

                // --- Today's Goal Card (ปรับเฉดสีให้ดูสงบขึ้น) ---
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF81D4FA), Color(0xFF1976D2)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF1976D2).withOpacity(0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "TODAY'S GOAL",
                        style: GoogleFonts.nunito(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Reduce stress work out",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF1976D2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          elevation: 0,
                        ),
                        child: Text(
                          'Start Journey',
                          style: GoogleFonts.nunito(fontWeight: FontWeight.w800, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 35),

                // --- Stats Row (Meditation & Calories) ---
                Row(
                  children: [
                    Expanded(
                      child: _buildStatCard(
                        'Meditation',
                        '365 mins',
                        Icons.self_improvement_rounded,
                        const Color(0xFF0288D1),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: _buildStatCard(
                        'Calories',
                        '365 kcal',
                        Icons.local_fire_department_rounded,
                        const Color(0xFFFF7043),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                // --- Streak Days Card ---
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.favorite_rounded, color: Colors.pinkAccent, size: 28),
                          const SizedBox(width: 15),
                          Text(
                            'Streak days',
                            style: GoogleFonts.nunito(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        '365 days',
                        style: GoogleFonts.nunito(
                          fontSize: 18, 
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF1976D2),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 45),

                // --- Back Button ---
                Center(
                  child: SizedBox(
                    width: 180,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE3F2FD),
                        foregroundColor: const Color(0xFF1976D2),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Color(0xFFB3E0FF), width: 1.5),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.arrow_back_ios_new_rounded, size: 18),
                          const SizedBox(width: 10),
                          Text(
                            'Back',
                            style: GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ปรับการ์ดสถิติให้ดูนุ่มนวลขึ้น
  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 30, color: color),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 14, 
              color: Colors.black54, 
              fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: GoogleFonts.nunito(
              fontSize: 17, 
              fontWeight: FontWeight.w800, 
              color: Colors.black87
            ),
          ),
        ],
      ),
    );
  }
}

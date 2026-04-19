import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoseweightStretching extends StatelessWidget {
  const LoseweightStretching({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Stretching',
      icon: Icons.accessibility_new_rounded,
    );
  }
}

// --- ExerciseBaseLayout: โครงสร้างหลักที่เน้นความสม่ำเสมอของแอป ---
class ExerciseBaseLayout extends StatelessWidget {
  final String title;
  final IconData icon;

  const ExerciseBaseLayout({
    super.key, 
    required this.title, 
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ใช้สีพื้นหลังฟ้าอ่อนที่เป็นมิตรต่อสายตา
      backgroundColor: const Color(0xFFE3F2FD), 
      body: Column(
        children: [
          const SizedBox(height: 60),
          
          // ส่วนหัวเรื่อง
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 32, 
              fontWeight: FontWeight.w800, 
              color: const Color(0xFF1976D2), // สีน้ำเงินหลักของ WEhealth
              letterSpacing: 1.2
            ),
          ),
          const SizedBox(height: 20),
          
          // Image/Icon Display Area (Glassmorphism Style)
          Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white.withOpacity(0.4), Colors.white.withOpacity(0.1)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white.withOpacity(0.5), width: 1.5),
              ),
              child: Center(
                child: Icon(icon, size: 200, color: const Color(0xFF1976D2)),
              ),
            ),
          ),
          
          // Control Panel Area
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12, 
                    blurRadius: 30, 
                    offset: Offset(0, -10)
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Timer Text
                  Text(
                    '00:00', 
                    style: GoogleFonts.nunito(
                      fontSize: 90, 
                      fontWeight: FontWeight.w200, 
                      letterSpacing: -2,
                      color: Colors.black87
                    )
                  ),
                  Text(
                    'Get Moving!', 
                    style: GoogleFonts.nunito(
                      fontSize: 20, 
                      fontWeight: FontWeight.w600, 
                      color: Colors.black38
                    )
                  ),
                  const SizedBox(height: 40),
                  
                  // Action Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildActionBtn(Icons.pause_rounded, 'Pause'),
                      _buildActionBtn(Icons.play_arrow_rounded, 'Play', isMain: true),
                      _buildActionBtn(Icons.check_rounded, 'Done', 
                        onTap: () => Navigator.pop(context)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget สำหรับสร้างปุ่มควบคุม
  Widget _buildActionBtn(IconData icon, String label, {bool isMain = false, VoidCallback? onTap}) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: isMain ? 90 : 70,
            width: isMain ? 90 : 70,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF42A5F5), Color(0xFF1976D2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF1976D2).withOpacity(0.3), 
                  blurRadius: 15, 
                  offset: const Offset(0, 8)
                ),
              ],
            ),
            child: Icon(icon, size: isMain ? 45 : 35, color: Colors.white),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          label, 
          style: GoogleFonts.nunito(
            fontSize: 16, 
            fontWeight: FontWeight.bold, 
            color: Colors.black54
          )
        ),
      ],
    );
  }
}

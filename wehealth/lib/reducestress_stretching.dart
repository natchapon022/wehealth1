import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReducestressStretching extends StatelessWidget {
  const ReducestressStretching({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Stretching',
      icon: Icons.accessibility_new_rounded,
    );
  }
}

// --- Shared Layout สำหรับ Reduce Stress (ปรับปรุงความสวยงาม) ---
class ExerciseBaseLayout extends StatelessWidget {
  final String title;
  final IconData icon;

  const ExerciseBaseLayout({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ปรับพื้นหลังให้เป็น Gradient อ่อนๆ เพื่อความละมุน
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFB3E0FF), Color(0xFFE3F2FD)],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 60),
            // หัวข้อปรับฟอนต์ให้เข้ากับ Theme หลัก
            Text(
              title,
              style: GoogleFonts.nunito(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF1976D2),
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 20),
            
            // ส่วนแสดงไอคอนพร้อม Glassmorphism
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.white.withOpacity(0.5), width: 1.5),
                ),
                child: Center(
                  child: Icon(
                    icon, 
                    size: 180, 
                    color: Colors.white.withOpacity(0.9)
                  ),
                ),
              ),
            ),
            
            // แผงควบคุมด้านล่าง
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
                      offset: Offset(0, -10),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '00:00',
                      style: GoogleFonts.nunito(
                        fontSize: 90,
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                        letterSpacing: -2,
                      ),
                    ),
                    Text(
                      title,
                      style: GoogleFonts.nunito(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 50),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildBtn(Icons.pause_rounded, 'Pause'),
                        _buildBtn(Icons.play_arrow_rounded, 'Play', isMain: true),
                        _buildBtn(Icons.check_rounded, 'Done', 
                          onTap: () => Navigator.pop(context)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBtn(IconData icon, String label, {bool isMain = false, VoidCallback? onTap}) {
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
                  offset: const Offset(0, 8),
                )
              ],
            ),
            child: Icon(icon, size: isMain ? 45 : 35, color: Colors.white),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          label,
          style: GoogleFonts.nunito(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}

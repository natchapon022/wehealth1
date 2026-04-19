import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildstrengthPushup extends StatelessWidget {
  const BuildstrengthPushup({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Push up',
      icon: Icons.fitness_center_rounded, // ไอคอนดัมเบลสื่อถึงความแข็งแรง
    );
  }
}

// --- ExerciseBaseLayout: โครงสร้างหลักสำหรับกลุ่ม Build Strength (Blue Theme) ---
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
      // พื้นหลังสีฟ้าอ่อน WEhealth
      backgroundColor: const Color(0xFFE3F2FD), 
      body: Column(
        children: [
          const SizedBox(height: 60),
          
          // หัวข้อท่าออกกำลังกาย (ใช้สีน้ำเงินหลัก 0xFF1976D2)
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 32, 
              fontWeight: FontWeight.w800, 
              color: const Color(0xFF1976D2),
              letterSpacing: 1.2
            ),
          ),
          const SizedBox(height: 20),
          
          // ส่วนแสดงไอคอนท่าทาง (Glassmorphism Style เหมือนหน้าอื่นๆ)
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
                child: Icon(
                  icon, 
                  size: 180, 
                  color: const Color(0xFF1976D2).withOpacity(0.8)
                ),
              ),
            ),
          ),
          
          // แผงควบคุมด้านล่าง (Control Panel สีขาว)
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
                  // ตัวเลขนาฬิกา
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
                    'Push it hard!', 
                    style: GoogleFonts.nunito(
                      fontSize: 18, 
                      fontWeight: FontWeight.w600, 
                      color: Colors.black38
                    )
                  ),
                  const SizedBox(height: 45),
                  
                  // ปุ่มควบคุมสีฟ้า Gradient
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

  // Widget สำหรับปุ่มควบคุม (เหมือนกับหน้าอื่นๆ ในแอป)
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // อย่าลืมเพิ่มใน pubspec.yaml

class StayhealthyStretching extends StatelessWidget {
  const StayhealthyStretching({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExerciseBaseLayout(
      title: 'Stretching',
      icon: Icons.accessibility_new_rounded,
    );
  }
}

class ExerciseBaseLayout extends StatelessWidget {
  final String title;
  final IconData icon;

  const ExerciseBaseLayout({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ใช้สีพื้นหลังที่สอดคล้องกับหน้า Homepage
      backgroundColor: const Color(0xFFE3F2FD), 
      body: Column(
        children: [
          const SizedBox(height: 60),
          // ปุ่มย้อนกลับแบบลอยด้านบน (Optional)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xFF1976D2)),
                ),
                const Spacer(),
              ],
            ),
          ),
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
          
          // ส่วนแสดงไอคอน/ภาพเคลื่อนไหว
          Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                // ไล่เฉดสีในตัวการ์ดภาพ
                gradient: LinearGradient(
                  colors: [Colors.white.withOpacity(0.5), Colors.white.withOpacity(0.2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white.withOpacity(0.6), width: 1.5),
              ),
              child: Center(
                child: Icon(icon, size: 180, color: const Color(0xFF1976D2).withOpacity(0.8)),
              ),
            ),
          ),
          
          // ส่วนควบคุม (Control Panel)
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
                  // ตัวเลขนาฬิกาจับเวลา
                  Text(
                    '00:00',
                    style: GoogleFonts.nunito(
                      fontSize: 95, 
                      fontWeight: FontWeight.w200, 
                      color: Colors.black87,
                      letterSpacing: -2
                    ),
                  ),
                  Text(
                    'Get Ready!', 
                    style: GoogleFonts.nunito(
                      fontSize: 22, 
                      fontWeight: FontWeight.w600, 
                      color: Colors.black45
                    )
                  ),
                  const SizedBox(height: 40),
                  
                  // แถวปุ่มกด
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
            fontSize: 15, 
            fontWeight: FontWeight.w700, 
            color: Colors.black54
          )
        ),
      ],
    );
  }
}

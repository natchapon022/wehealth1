import 'package:flutter/material.dart';
import 'loginemail.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE3F2FD), Colors.white],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                const Spacer(flex: 2),
                
                // ส่วน Logo ของ WEhealth
                Image.asset(
                  'photo/wehealthlogo.png', 
                  height: 200, 
                  errorBuilder: (c, e, s) => const Icon(Icons.favorite_rounded, size: 80, color: Color(0xFF1976D2))
                ),
               
                
                const Spacer(flex: 1),
                
                const Text(
                  'Welcome to WEhealth',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Create an Account to get started on your\nHealth and Happiness life',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.black54, height: 1.5),
                ),
                
                const SizedBox(height: 48),

                // ปุ่ม Apple
                _buildSocialButton(
                  text: 'Continue With Apple',
                  icon: Icons.apple,
                  onPressed: () {},
                  color: Colors.black.withOpacity(0.05),
                  textColor: Colors.black87,
                ),
                const SizedBox(height: 16),

                // ปุ่ม Email เชื่อมไปยังหน้า LoginEmailPage
                _buildSocialButton(
                  text: 'Continue With Email',
                  icon: Icons.email_rounded,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginEmailPage()),
                    );
                  },
                  color: const Color(0xFF1976D2),
                  textColor: Colors.white,
                ),
                
                const SizedBox(height: 30),
                
                // แก้ไขบัค Google โดยใช้ Image.asset แทน
                const Text('Or continue with', style: TextStyle(color: Colors.black38, fontSize: 13)),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    child: Image.asset(
                      'photo/google.png', // <<< ปรับเป็น google.png ตามที่นัทพลระบุครับ
                      height: 28,
                      errorBuilder: (c, e, s) => const Icon(Icons.g_mobiledata, size: 28, color: Colors.red),
                    ),
                  ),
                ),
                
                const Spacer(flex: 2),
                
                // ส่วนปุ่ม Login ด้านล่าง
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account? ', style: TextStyle(color: Colors.black54)),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        backgroundColor: const Color(0xFFE3F2FD),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text(
                        'Login', 
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1976D2))
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget สำหรับสร้างปุ่ม Social
  Widget _buildSocialButton({
    required String text, 
    required IconData icon,
    required VoidCallback onPressed, 
    required Color color,
    required Color textColor,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton.icon(
        icon: Icon(icon, color: textColor, size: 22),
        onPressed: onPressed,
        label: Text(
          text, 
          style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold)
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
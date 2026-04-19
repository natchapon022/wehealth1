import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // สร้าง Controller สำหรับแต่ละช่องกรอกข้อมูล
  final _firstnameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              // หัวข้อ
              const Text(
                'Welcome to WEhealth',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),

              // Logo Section
              Image.asset(
                'photo/wehealthlogo.png',
                height: 100,
                errorBuilder: (context, error, stackTrace) => 
                  const Icon(Icons.favorite, size: 60, color: Colors.purpleAccent),
              ),
              const SizedBox(height: 30),

              // ช่องกรอกข้อมูลต่างๆ
              _buildInputField(label: 'Firstname', controller: _firstnameController),
              const SizedBox(height: 15),
              _buildInputField(label: 'Surname', controller: _surnameController),
              const SizedBox(height: 15),
              _buildInputField(label: 'Email', controller: _emailController),
              const SizedBox(height: 15),
              _buildInputField(label: 'New Password', controller: _passwordController, isPassword: true),
              const SizedBox(height: 15),
              _buildInputField(label: 'Confirmed Password', controller: _confirmPasswordController, isPassword: true),

              const SizedBox(height: 40),

              // ปุ่ม Sign up
              SizedBox(
                width: 160,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Logic สำหรับการสมัครสมาชิก
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD0D7FF),
                    shape: const StadiumBorder(),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // Helper สำหรับสร้าง TextField พร้อม Label ด้านบน
  Widget _buildInputField({
    required String label,
    required TextEditingController controller,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.black87, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class SaathiLoginPage extends StatelessWidget {
  const SaathiLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            decoration: BoxDecoration(
              color: const Color(0xFF7928CA),
              borderRadius: BorderRadius.circular(30),
            ),
            width: 360,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/logo.png', width: 180, height: 180),
                const SizedBox(height: 4),
                const Text(
                  'SAATHI',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFCC70),
                  ),
                ),
                const Text(
                  'Turning fear into freedom',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFE3D8C0),
                  ),
                ),
                const SizedBox(height: 25),
                const _CustomInputField(hint: 'Phone number or email'),
                const _CustomInputField(hint: 'Password', obscure: true),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // handle login action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF321D65),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFFFFCC70),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomInputField extends StatelessWidget {
  final String hint;
  final bool obscure;

  const _CustomInputField({
    required this.hint,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      child: TextField(
        obscureText: obscure,
        style: const TextStyle(color: Colors.black87),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Color(0xFFF8EDDF),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

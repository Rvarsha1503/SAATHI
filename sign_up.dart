import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EBFA), // light pink background
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            decoration: BoxDecoration(
              color: const Color(0xFF7928CA), // purple card
              borderRadius: BorderRadius.circular(30),
            ),
            width: 360,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo
                Image.asset(
                  'assets/logo.png',
                  width: 180,
                  height: 180,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    'SAATHI',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFCC70), // goldish text
                    ),
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
                const _CustomInputField(hint: 'Full name'),
                const _CustomInputField(hint: 'Phone number or email'),
                const _CustomInputField(hint: 'Create password', obscure: true),
                const _CustomInputField(
                    hint: 'Confirm password', obscure: true),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (val) {},
                      activeColor: const Color(0xFFFFCC70),
                    ),
                    const Expanded(
                      child: Text(
                        'Enable location access',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text.rich(
                  TextSpan(
                    text: 'I agree to the ',
                    style: TextStyle(fontSize: 13, color: Color(0xFFE6DCCC)),
                    children: [
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: TextStyle(
                            color: Color(0xFFFFCC70),
                            decoration: TextDecoration.underline),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            color: Color(0xFFFFCC70),
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle signup logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF321D65),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Create account',
                      style: TextStyle(
                        color: Color(0xFFFFCC70),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Login redirection
                TextButton(
                  onPressed: () {
                    // Add navigation logic if needed (e.g., to login page)
                  },
                  child: const Text(
                    'Already have an account? Log in',
                    style: TextStyle(
                      color: Color(0xFFFFCC70),
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
          fillColor: const Color(0xFFF8EDDF),
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

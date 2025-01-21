// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:sales_app/home/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/utils.dart';
import '../components/otp_approve_text_fields.dart';

class OtpAuthScreen extends StatelessWidget {
  const OtpAuthScreen({
    super.key,
    required this.cardNumber,
  });

  final String cardNumber;

  Future<void> _login(BuildContext context) async {
    final prefs = SharedPreferencesAsync();
    await prefs.setString('cardNumber', cardNumber);

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx) => const HomeScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final containerHeight = screenHeight - statusBarHeight;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: containerHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Image.asset('assets/images/signin.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 40),
                child: Text(
                  'Təsdiqləmə kodunu daxil edin',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
              ),
              const OtpApproveTextFields(),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      await _login(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Utils.mainColor,
                    ),
                    label: const Text(
                      'Təsdiqlə',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    icon: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    iconAlignment: IconAlignment.end,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

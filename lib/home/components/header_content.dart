// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:sales_app/data/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../signin/screens/signin.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  Future<void> _logout(BuildContext context) async {
    final prefs = SharedPreferencesAsync();
    await prefs.remove('cardNumber');

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx) => SigninScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Utils.lightMainColor,
              borderRadius: BorderRadius.circular(26),
            ),
            child: Image.asset(
              'assets/images/user.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Salam!'),
                Text(
                  'Elcin Ibrahimli',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          IconButton(
            onPressed: () async {
              await _logout(context);
            },
            icon: const Icon(
              Icons.logout,
              color: Color.fromARGB(255, 34, 47, 124),
            ),
          ),
        ],
      ),
    );
  }
}

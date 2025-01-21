import 'package:flutter/material.dart';
import 'package:sales_app/data/utils.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 150,
      decoration: BoxDecoration(
        color: Utils.mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 10,
            top: 10,
            child: Text(
              'Bazarstore',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: SizedBox(
              width: 120,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 35,
                    height: 35,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '4.75 azn',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              '4168 5688 1022 3698',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 30,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.qr_code,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

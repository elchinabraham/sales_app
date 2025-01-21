import 'package:flutter/material.dart';

import 'general_discounts.dart';
import 'header_content.dart';
import 'reports/reports.dart';
import 'sales_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderContent(),
          const SizedBox(height: 5),
          const SalesCard(),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 10, bottom: 8),
            width: double.infinity,
            alignment: Alignment.topLeft,
            child: const Text(
              'Əlavə məlumatlar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Reports(),
          Container(
            padding: const EdgeInsets.only(left: 10, top: 20),
            width: double.infinity,
            alignment: Alignment.topLeft,
            child: const Text(
              'Ümumi endirimlər',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const GeneralDiscounts(),
        ],
      ),
    );
  }
}

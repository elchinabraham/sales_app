import 'package:flutter/material.dart';
import 'package:sales_app/campaigns/screens/campaigns.dart';
import 'package:sales_app/home/components/reports/sales_report_card.dart';

import 'campaigns_report_card.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: const SalesReportCard(),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const CampaignsScreen(),
                  ),
                );
              },
              child: const CampaignsReportCard(),
            ),
          ],
        ),
      ),
    );
  }
}

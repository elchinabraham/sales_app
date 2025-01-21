import 'package:flutter/material.dart';
import 'package:sales_app/home/components/reports/sales_report_card.dart';

import 'campaigns_report_card.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SalesReportCard(),
            CampaignsReportCard(),
          ],
        ),
      ),
    );
  }
}

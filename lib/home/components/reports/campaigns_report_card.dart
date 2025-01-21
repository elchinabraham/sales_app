import 'package:flutter/material.dart';

class CampaignsReportCard extends StatelessWidget {
  const CampaignsReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 220, 167),
        borderRadius: BorderRadius.circular(15),
      ),
      width: 200,
      height: 120,
      child: Stack(
        children: [
          const Positioned(
            left: 20,
            top: 20,
            child: Text(
              'Kampaniyalar',
              style: TextStyle(
                color: Color.fromARGB(255, 97, 97, 97),
                fontSize: 12,
              ),
            ),
          ),
          const Positioned(
            left: 20,
            top: 50,
            child: Text(
              'Istifade olunan: 67 azn',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Container(
              padding: const EdgeInsets.all(3),
              width: 25,
              height: 23,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 249, 169, 169),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.article,
                color: Color.fromARGB(255, 220, 48, 105),
                size: 16,
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: SizedBox(
              width: 160,
              child: LinearProgressIndicator(
                value: 0.3,
                semanticsLabel: 'Linear progress indicator',
                backgroundColor: Colors.white,
                color: Colors.orange,
                borderRadius: BorderRadius.circular(3),
                minHeight: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

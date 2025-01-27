import 'package:flutter/material.dart';
import 'package:sales_app/notifications/models/notification.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notification,
    required this.isDateRequired,
  });

  final MyNotification notification;
  final bool isDateRequired;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: notification.isSeen ? 0.6 : 1,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        child: Column(
          children: [
            if (isDateRequired)
              Container(
                padding: const EdgeInsets.only(left: 8, top: 12),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Text(
                  notification.getDate,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
              ),
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/flutter-icon.png'),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 13),
                            child: Text(
                              notification.title,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 13),
                            child: Text(
                              notification.content,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

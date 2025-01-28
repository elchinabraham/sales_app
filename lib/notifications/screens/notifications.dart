import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sales_app/notifications/components/notification_alert_dialog.dart';
import 'package:sales_app/notifications/components/notification_card.dart';
import 'package:sales_app/notifications/providers/notification_notifier.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  Future<void> _showMyDialog(
      BuildContext context, String title, String content) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return NotificationAlertDialog(title: title, content: content);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: double.infinity,
          child: Text(
            'Bildirişlər',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.check),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Consumer<NotificationNotifier>(
          builder: (context, value, child) {
            return ListView.builder(
              itemCount: value.notifications.length,
              itemBuilder: (ctx, index) {
                final notification = value.notifications[index];

                return Dismissible(
                  key: Key(notification.id),
                  direction: DismissDirection.endToStart,
                  dismissThresholds: const {DismissDirection.endToStart: 0.5},
                  confirmDismiss: (direction) async {
                    value.removeNotification(notification.id);
                    return true;
                  },
                  child: NotificationCard(
                    notification: notification,
                    isDateRequired: (index == 0 ||
                        notification.date !=
                            value.notifications[index - 1].date),
                    onSelectedItem: () async {
                      value.readNotification(notification.id);

                      await _showMyDialog(
                        context,
                        notification.title,
                        notification.content,
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

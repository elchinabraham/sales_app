import 'package:flutter/material.dart';
import 'package:sales_app/notifications/components/notification_card.dart';
import 'package:sales_app/notifications/models/notification.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (ctx, index) {
            return NotificationCard(
              notification: notifications[index],
              isDateRequired: (index == 0 ||
                  notifications[index].date != notifications[index - 1].date),
            );
          },
        ),
      ),
    );
  }
}

final notifications = [
  MyNotification(
    id: '1',
    title: 'Al Market',
    content:
        '2025.02.01 tarixindən etibarən mağazalar şəbəkəsində endirimli məhsullar üçün qazanacağınız keşbekləri ay sonunu gözləmədən istifadə edə bilərsiniz 🙂',
    date: '27.01.2025',
    time: '16:00',
    isSeen: false,
  ),
  MyNotification(
    id: '2',
    title: 'Bazarstore',
    content:
        '"Bazarstore" Əbdülvahab Salamzadə küçəsində açılan yeni mağazasını istifadəyə verdi',
    date: '27.01.2025',
    time: '10:45',
    isSeen: false,
  ),
  MyNotification(
    id: '3',
    title: 'Bazarstore',
    content:
        '"Bazarstore" Həsən Əliyev küçəsində yerləşən yeni mağazasını müştərilərin ixtiyarına verdi',
    date: '26.01.2025',
    time: '09:30',
    isSeen: false,
  ),
  MyNotification(
    id: '4',
    title: 'Bazarstore',
    content:
        'Bazarstore - da super maqazin fürsətləri. Yeni super maqazin çıxdı. Endirimlərə baxmaq üçün klikləyin. ',
    date: '26.01.2025',
    time: '09:30',
    isSeen: true,
  ),
  MyNotification(
    id: '5',
    title: 'Bazarstore Endirimləri',
    content:
        '2025.02.01 tarixindən etibarən mağazalar şəbəkəsində endirimli məhsullar üçün qazanacağınız keşbekləri ay sonunu gözləmədən istifadə edə bilərsiniz 🙂',
    date: '26.01.2025',
    time: '09:30',
    isSeen: false,
  ),
  MyNotification(
    id: '6',
    title: 'Sistem',
    content:
        '2025.02.01 tarixindən etibarən mağazalar şəbəkəsində endirimli məhsullar üçün qazanacağınız keşbekləri ay sonunu gözləmədən istifadə edə bilərsiniz 🙂',
    date: '25.01.2025',
    time: '09:30',
    isSeen: true,
  ),
];

import 'package:flutter/material.dart';

import '../models/notification.dart';

class NotificationNotifier with ChangeNotifier {
  List<MyNotification> _notifications = [
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

  List<MyNotification> get notifications => _notifications;

  void readNotification(String id) {
    final index =
        _notifications.indexWhere((notification) => notification.id == id);

    _notifications[index].isSeen = true;

    notifyListeners();
  }

  void removeNotification(String id) {
    _notifications =
        _notifications.where((notification) => notification.id != id).toList();
    notifyListeners();
  }
}

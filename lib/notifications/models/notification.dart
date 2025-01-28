import 'package:intl/intl.dart';

class MyNotification {
  final String id;
  final String title;
  final String content;
  final String date;
  final String time;
  bool isSeen;

  MyNotification({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
    required this.time,
    required this.isSeen,
  });

  String get getDate {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd.MM.yyyy').format(now);
    DateTime yesterday = now.subtract(const Duration(days: 1));
    String formattedYesterday = DateFormat('dd.MM.yyyy').format(yesterday);

    return formattedDate == date
        ? 'Bu gün'
        : formattedYesterday == date
            ? 'Dünən'
            : date;
  }
}

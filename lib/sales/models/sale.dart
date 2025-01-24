class Sale {
  final String id;
  final String storeName;
  final String address;
  final String date;
  final String price;

  Sale({
    required this.id,
    required this.storeName,
    required this.address,
    required this.date,
    required this.price,
  });

  String get getDate {
    return date.split(' ')[0];
  }

  String get getTime {
    return date.split(' ')[1];
  }
}

import 'package:flutter/material.dart';
import 'package:sales_app/sales/components/sales_report_card.dart';
import 'package:sales_app/sales/models/sale.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Satış Məlumatları'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 160,
                  child: Card(
                    color: const Color.fromARGB(250, 250, 250, 250),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    elevation: 2,
                    child: TextField(
                      readOnly: true,
                      controller: TextEditingController(text: '2025.01.01'),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.calendar_month),
                        labelText: 'Tarixdən',
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: Card(
                    elevation: 2,
                    color: const Color.fromARGB(250, 250, 250, 250),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: TextField(
                      readOnly: true,
                      controller: TextEditingController(text: '2025.01.31'),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.calendar_month),
                        labelText: 'Tarixə',
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sales.length,
              itemBuilder: (ctx, index) {
                return SalesCardTemplate(sale: sales[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

final sales = [
  Sale(
    id: '1',
    storeName: 'Bazarstore',
    address: 'Baki, Nerimanov rn., 830 Fətəli Xan Xoyski, Bakı',
    date: '2025.01.22 13:30',
    price: '142.75',
  ),
  Sale(
    id: '2',
    storeName: 'Bazarstore',
    address: '29 Sakit Qocayev, Bakı',
    date: '2024.11.17 17:00',
    price: '62.00',
  ),
  Sale(
    id: '3',
    storeName: 'Bazarstore',
    address: '9RVM+PXF, Mirəsədulla Mirgasımov, Bakı',
    date: '2024.09..07 10:45',
    price: '18.90',
  ),
  Sale(
    id: '4',
    storeName: 'Bazarstore',
    address: '22a Sarayevo, Baku',
    date: '2024.03.27 12:25',
    price: '54.50',
  ),
  Sale(
    id: '5',
    storeName: 'Bazarstore',
    address: '22b Zığ şossesi, Bakı',
    date: '2024.06.19 21:37',
    price: '11.2',
  ),
  Sale(
    id: '6',
    storeName: 'Bazarstore',
    address: 'Nəbz klinikasının yanı, 38 Tofiq Abbasov, Bakı',
    date: '2023.12.15 16:40',
    price: '46.80',
  ),
];

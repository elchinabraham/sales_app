import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../data/utils.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final _userNameController = TextEditingController(text: 'Elcin Ibrahimli');
  final _phoneNumberController = TextEditingController(text: '+994503566919');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Tənzimləmələr',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            width: double.infinity,
            child: Container(
              width: 90,
              height: 90,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                color: Utils.lightMainColor,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Image.asset(
                'assets/images/user.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: TextField(
              controller: _userNameController,
              style: const TextStyle(fontSize: 13),
              decoration: const InputDecoration(
                labelText: 'İstifadəçi adı',
                prefixIcon: Icon(
                  Icons.perm_identity_outlined,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: TextField(
              controller: _phoneNumberController,
              style: const TextStyle(fontSize: 13),
              decoration: const InputDecoration(
                labelText: 'Mobil telefon',
                prefixIcon: Icon(
                  Icons.phone,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 18),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.notifications_outlined, size: 22),
                    SizedBox(width: 5),
                    Text(
                      'Bildirişlər',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                  height: 30,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Switch(
                      value: true,
                      splashRadius: 0.5,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.black54,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.language_outlined, size: 20),
                        SizedBox(width: 5),
                        Text(
                          'Dil - Azərbaycan',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, size: 18),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 45,
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Utils.mainColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              label: const Text('Yadda saxla'),
              icon: const Icon(Icons.check),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/utils.dart';

class MyProgressBar extends StatelessWidget {
  const MyProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const Scaffold(
        body: Center(
          child: CupertinoActivityIndicator(radius: 14),
        ),
      );
    } else {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
            color: Utils.mainColor,
          ),
        ),
      );
    }
  }
}

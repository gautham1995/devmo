// ignore_for_file: avoid_print

import 'dart:io';
import 'package:flutter/material.dart';

class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  void initState() {
    super.initState();
    tempmeth();
  }

void tempmeth() async {
    List<NetworkInterface> interfaces = await NetworkInterface.list();
    for (var i in interfaces) {
      print(i.addresses);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Text("data");
  }

  
}

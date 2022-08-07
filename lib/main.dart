import 'package:ecommerce_sparepart/event/event_pref.dart';
import 'package:ecommerce_sparepart/page/login.dart';
import 'package:ecommerce_sparepart/page/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: EventPref.getUser(),
        builder: (context, snapshot) {
          if (snapshot.data == null) return Login();
          return const Dashboard();
        },
      ),
    );
  }
}

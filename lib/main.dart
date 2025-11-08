import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/booking_page.dart'; // <-- 1. Import file baru

void main() {
  runApp(MaterialApp(
    // home: HomePage(), // <-- 2. Hapus 'home'
    debugShowCheckedModeBanner: false,

    // 3. Tambahkan 'initialRoute' dan 'routes' sesuai Video 3
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/booking': (context) => BookingPage(),
    },
  ));
}
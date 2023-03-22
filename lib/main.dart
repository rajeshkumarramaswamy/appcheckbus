import 'package:busbooking/screens/book_hotel.dart';
import 'package:busbooking/screens/book_ticket.dart';
import 'package:busbooking/screens/bus_list.dart';
import 'package:busbooking/screens/profile.dart';
import 'package:busbooking/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bus booking',
      theme: ThemeData(
        fontFamily: "Montserrat",
      ),
      home: const BottomBar(),
      routes: {
        "/bookticket": (context) => const BookTicket(),
        "/bookhotel": (context) => const BookHotel(),
        "/buslist": (context) => const BusList(),
        "/profile": (context) => const Profile(),
      },
    );
  }
}

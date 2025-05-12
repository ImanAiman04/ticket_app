import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ticket_app/base/utils/app_route.dart';
import 'package:ticket_app/base/bottom_navbar.dart';
import 'package:ticket_app/screens/all_tickets.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/hotel_detail.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.allTickets: (context) => const AllTickets(),
      },
    );
  }
}

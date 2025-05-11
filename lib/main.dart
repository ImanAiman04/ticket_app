import 'package:flutter/material.dart';
import 'package:ticket_app/app_route.dart';
import 'package:ticket_app/base/bottom_navbar.dart';
import 'package:ticket_app/screens/all_tickets.dart';
import 'package:ticket_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home:
            (context) => const BottomNavbar(), // <-- Ini laluan utama
        AppRoutes.allTickets: (context) => const AllTickets(),
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
      home: const BottomNavbar(),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.allTickets: (context) => const AllTickets(),
      },
    );
  }
}

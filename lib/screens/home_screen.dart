import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/app_styles.dart';
import 'package:ticket_app/base/resources/media.dart';
import 'package:ticket_app/base/widgets/app_double_test.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            // 1/3rd Top Column (TC)
            child: Column(
              children: [
                //TC-Row 1
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween, //Horizonral Alignment in Row Widget
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.headLineStyle3),
                        const SizedBox(height: 5),
                        Text("Book Tickets", style: AppStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                // Corrected Search Icon Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(FluentSystemIcons.ic_fluent_search_regular),
                    Text("Search icon"),
                  ],
                ),

                const SizedBox(height: 40),

                // Upcoming Flights Header
                const AppDoubleText(
                  bigText: 'Upcoming flights',
                  smallText: 'View all',
                ),

                const SizedBox(height: 20),
                const TicketView(),

                // Future: Add Row for Upcoming Flights Cards
              ],
            ),
          ),

          //ADD MORE LISTVIEW CHILDREN
        ],
      ),
    );
  }
}

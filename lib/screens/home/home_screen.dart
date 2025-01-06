// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eventify_app/components/widget/appbar.dart';
import 'package:eventify_app/constants/curved_edges_widget.dart';
import 'package:eventify_app/screens/event/create_event.dart';
import 'package:eventify_app/screens/event/widget/event_form.dart';
import 'package:eventify_app/screens/home/widget/event_card.dart';
import 'package:eventify_app/screens/home/widget/upcomming_events.dart';
import 'package:eventify_app/utilis/theme/custom_themes/appbar_theme.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: EAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurvedEdgeWidget(
                child: SizedBox(
                    height: 120,
                    child: EAppbar(
                      title: Text('Eventify',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(image: AssetImage('assets/images/banner.png')),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Events",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 280,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: EventCard(
                        title: "Birthday Bash",
                        location: "Central Park",
                        date: "Dec 31, 6:00 PM",
                        imagePath: 'assets/images/event1.png',
                      ),
                    );
                  }),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF6F00),
                    side: BorderSide(color: AppColors.secondaryColor),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CreateEvent()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Create Event"),
                  ),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppColors.secondaryColor),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "View Invitations",
                        style: TextStyle(color: AppColors.secondaryColor),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 35),
            UpcommingEvents(),
          ],
        ),
      ),
    );
  }
}

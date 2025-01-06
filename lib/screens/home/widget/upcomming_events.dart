// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:eventify_app/utilis/theme/custom_themes/appbar_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UpcommingEvents extends StatelessWidget {
  const UpcommingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "UpComming Events",
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
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(186, 235, 233, 233)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage('assets/images/event1.png'),
                        width: 150,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "10 October 2024",
                          style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                        Text(
                          "Birthday Bash",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        Text("Central Park"),
                      ],
                    ),
                    Icon(
                      Iconsax.heart,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

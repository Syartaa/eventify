// ignore_for_file: sort_child_properties_last

import 'package:eventify_app/components/widget/appbar.dart';
import 'package:eventify_app/constants/curved_edges_widget.dart';
import 'package:eventify_app/utilis/theme/custom_themes/appbar_theme.dart';
import 'package:flutter/material.dart';

class InvitationScreen extends StatelessWidget {
  final List<Map<String, String>> invites = [
    {'name': 'John Doe', 'email': 'john.doe@example.com'},
    {'name': 'Jane Smith', 'email': 'jane.smith@example.com'},
    {'name': 'Alice Johnson', 'email': 'alice.johnson@example.com'},
    {'name': 'Michael Brown', 'email': 'michael.brown@example.com'},
  ];

  InvitationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // AppBar with Curved Edge
            CurvedEdgeWidget(
              child: SizedBox(
                height: 120,
                child: EAppbar(
                  title: Text(
                    'Invites',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),

            // List of Invites
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                shrinkWrap: true, // Prevents scrolling within the scroll view
                physics: const NeverScrollableScrollPhysics(),
                itemCount: invites.length,
                itemBuilder: (context, index) {
                  final invite = invites[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          invite['name']![0],
                          style: const TextStyle(color: Colors.white),
                        ),
                        backgroundColor: AppColors.primaryColor,
                      ),
                      title: Text(invite['name']!),
                      subtitle: Text(invite['email']!),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          // Logic for removing the invite
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  '${invite['name']} removed from the invite list'),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

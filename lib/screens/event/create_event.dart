import 'package:eventify_app/components/widget/appbar.dart';
import 'package:eventify_app/constants/curved_edges_widget.dart';
import 'package:eventify_app/screens/event/widget/event_form.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgeWidget(
              child: SizedBox(
                  height: 120,
                  child: EAppbar(
                    title: Text('Create Event',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: EventForm(),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:eventify_app/utilis/theme/custom_themes/appbar_theme.dart';
import 'package:flutter/material.dart';

class EventForm extends StatefulWidget {
  const EventForm({super.key});

  @override
  State<EventForm> createState() => _EventFormState();
}

class _EventFormState extends State<EventForm> {
  @override
  Widget build(BuildContext context) {
    String? selectedCategory;
    final List<String> categories = [
      "Conference",
      "Workshop",
      "Party",
      "Sports"
    ];

    String? selectedGuest;
    final List<String> guests = [
      "syarta@gmail.com",
      "test@gmail.com",
      "hana@gmail.com",
      "lume@gmail.com"
    ];

    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Event Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Date & Time",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Category",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  value: selectedCategory,
                  items: categories.map((String category) {
                    return DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCategory = newValue;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Location",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: "Invite Guests",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            value: selectedGuest,
            items: guests.map((String guest) {
              return DropdownMenuItem<String>(
                value: guest,
                child: Text(guest),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedGuest = newValue;
              });
            },
          ),

          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Number of Guests",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Rsvp Deadline",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            maxLines: 4, // This makes it a textarea
            decoration: InputDecoration(
              hintText: "Event Description",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),

          const SizedBox(height: 20.0),

          // Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: AppColors.secondaryColor,
                side: BorderSide(color: AppColors.secondaryColor),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (ctx) => HomeScreen()));
              },
              child: const Text(
                "Create Event",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (ctx) => HomeScreen()));
              },
              child: const Text(
                "Cancel",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
          ),
          // Create Account Button
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eventify_app/components/widget/appbar.dart';
import 'package:eventify_app/constants/curved_edges_widget.dart';
import 'package:eventify_app/utilis/theme/custom_themes/appbar_theme.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Example events map: DateTime -> List of Events
  final Map<DateTime, List<String>> _events = {
    DateTime.now(): ["Event 1", "Event 2"],
    DateTime.now().add(const Duration(days: 1)): ["Event 3"],
  };

  List<String> _getEventsForDay(DateTime day) {
    return _events[DateTime(day.year, day.month, day.day)] ?? [];
  }

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
                  title: Text(
                    'Event',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TableCalendar(
                focusedDay: _focusedDay,
                firstDay: DateTime.utc(2025, 1, 1),
                lastDay: DateTime.utc(2030, 1, 1),
                selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    shape: BoxShape.circle,
                  ),
                  markerDecoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                  outsideDaysVisible: false,
                ),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

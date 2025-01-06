import 'package:eventify_app/screens/event/event_screen.dart';
import 'package:eventify_app/screens/home/home_screen.dart';
import 'package:eventify_app/screens/invitations/invitation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedIndexProvider = StateProvider((ref) => 0);

class NavigationMenu extends ConsumerWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the selected index from the provider
    final selectedIndex = ref.watch(selectedIndexProvider);

    return Scaffold(
      body: _getScreenForIndex(selectedIndex),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            // Update the selected index using provider
            ref.read(selectedIndexProvider.notifier).state = index;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF4A90E2),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          showSelectedLabels: false, // Disable labels
          showUnselectedLabels: false, // Disable labels
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '', // No label
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: '', // No label
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: '', // No label
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '', // No label
            ),
          ],
        ),
      ),
    );
  }

  Widget _getScreenForIndex(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return EventScreen();
      case 2:
        return InvitationScreen();
      case 3:
        return Container();
      default:
        return const HomeScreen();
    }
  }
}

import 'package:eventify_app/providers/onboarding_provider.dart';
import 'package:eventify_app/screens/onboarding/widget/onboarding_navigation.dart';
import 'package:eventify_app/screens/onboarding/widget/onboarding_next_button.dart';
import 'package:eventify_app/screens/onboarding/widget/onbording_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(OnboardingStateProvider.notifier);

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: 'assets/logo/logo.png',
                  title: 'Welcome to Eventify!',
                  subTitle:
                      'Easily create, plan, and manage events all in one place.'),
              OnBoardingPage(
                  image: 'assets/images/1.png',
                  title: 'Invite and Track Guests Effortlessly',
                  subTitle:
                      'Send invites, track RSVPs, and stay updated on who’s attending.'),
              OnBoardingPage(
                  image: 'assets/images/2.png',
                  title: 'Make Your Event Truly Yours',
                  subTitle:
                      ' Add photos, descriptions, and locations to make each event special.'),
            ],
          ),

          // Skip Button
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => controller.skipPage(),
              child: Text("Skip"),
            ),
          ),

          // Dot Navigation
          OnBoardingNavigation(),

          // Next Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

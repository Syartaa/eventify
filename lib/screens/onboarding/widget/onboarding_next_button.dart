import 'package:eventify_app/providers/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingNextButton extends ConsumerWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardingState = ref.watch(OnboardingStateProvider);
    final controller = ref.read(OnboardingStateProvider.notifier);

    return Positioned(
      bottom: 40,
      right: 20,
      child: ElevatedButton(
        // style: ElevatedButton.styleFrom(
        //   backgroundColor: Theme.of(context).colorScheme.primary,
        // ),

        onPressed: () {
          controller
              .nextPage(); // This will update the page and move to the next one
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            onboardingState.currentPageIndex == 2 ? 'Get Started' : 'Next',
            style: const TextStyle(color: Color.fromARGB(255, 250, 249, 249)),
          ),
        ),
      ),
    );
  }
}

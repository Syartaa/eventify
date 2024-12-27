import 'package:eventify_app/providers/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingNavigation extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardingState = ref.watch(OnboardingStateProvider);

    return Positioned(
      bottom: 40,
      left: 20,
      child: Row(
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () => ref
                .read(OnboardingStateProvider.notifier)
                .dotNavigationClick(index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 10,
              width: onboardingState.currentPageIndex == index ? 20 : 10,
              decoration: BoxDecoration(
                color: onboardingState.currentPageIndex == index
                    ? Color(0xFF4A90E2)
                    : Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          );
        }),
      ),
    );
  }
}

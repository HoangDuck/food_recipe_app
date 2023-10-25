import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe_app/features/home/presentation/providers/user_state/state/user_notifier.dart';
import 'package:food_recipe_app/features/home/presentation/providers/user_state/state/user_state.dart';
import 'package:food_recipe_app/features/home/presentation/providers/user_state/user_state_provider.dart';
import 'package:mocktail/mocktail.dart';


/// A testing utility which creates a [ProviderContainer] and automatically
/// disposes it at the end of the test.
ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  // Create a ProviderContainer, and optionally allow specifying parameters.
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );

  // When the test ends, dispose the container.
  addTearDown(container.dispose);

  return container;
}


void main() {

  test('Test loading state user notifier', () async {
    // Create a ProviderContainer for this test.
    // DO NOT share ProviderContainers between tests.
    final container = createContainer();
    UserState valueTest = container.read(userNotifierProvider.notifier).state;
    expect(
      valueTest.state,
    equals(UserConcreteState.loading),
    );
  });

  test('Test user notifier empty data', () async {
    // Create a ProviderContainer for this test.
    // DO NOT share ProviderContainers between tests.
    final container = createContainer();
    UserState valueTest = container.read(userNotifierProvider.notifier).state;
    expect(
      valueTest.listMeals.isEmpty,
      equals(true),
    );
  });

  test('Test user notifier is loading', () async {
    // Create a ProviderContainer for this test.
    // DO NOT share ProviderContainers between tests.
    final container = createContainer();
    UserState valueTest = container.read(userNotifierProvider.notifier).state;
    expect(
      valueTest.isLoading,
      equals(true),
    );
  });

  test('Test user notifier fetch profile data', () async {
    // Create a ProviderContainer for this test.
    // DO NOT share ProviderContainers between tests.
    final container = createContainer();
    await container.read(userNotifierProvider.notifier).fetchUserData();
    container.listen<UserState>(
      userNotifierProvider,
          (previous, next) {
            expect(
              next.user!=null,
              equals(false),
            );
      },
    );

  });
}
// class UserNotifierMock extends StateNotifier<UserState> with Mock implements UserNotifier {}
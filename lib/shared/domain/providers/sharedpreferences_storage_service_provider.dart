
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/shared/data/local/shared_prefs_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) => throw UnimplementedError());

final storageServiceProvider = Provider((ref) {
  final preferences = ref.watch(sharedPreferencesProvider);
  return preferences;
});
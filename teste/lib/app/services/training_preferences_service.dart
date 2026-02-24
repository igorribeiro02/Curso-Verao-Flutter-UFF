import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TrainingPreferencesService extends GetxService {
  static const String _checkedExercisesKey = 'checked_exercises';

  late final SharedPreferences _preferences;

  Future<TrainingPreferencesService> init() async {
    _preferences = await SharedPreferences.getInstance();
    return this;
  }

  Set<String> getCheckedExercises() {
    final values =
        _preferences.getStringList(_checkedExercisesKey) ?? const <String>[];
    return values.toSet();
  }

  Future<void> saveCheckedExercises(Set<String> checkedExercises) async {
    await _preferences.setStringList(
      _checkedExercisesKey,
      checkedExercises.toList(),
    );
  }
}

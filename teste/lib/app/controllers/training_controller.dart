import 'package:get/get.dart';

import '../services/training_preferences_service.dart';

class TrainingController extends GetxController {
  TrainingController(this._preferencesService);

  final TrainingPreferencesService _preferencesService;

  final List<String> exercises = const <String>[
    'Aganhachamento',
    'supino',
    'remada alta',
  ];

  final RxMap<String, bool> checkedState = <String, bool>{}.obs;

  @override
  void onInit() {
    super.onInit();
    _loadCheckedState();
  }

  bool isChecked(String exercise) => checkedState[exercise] ?? false;

  Future<void> toggleExercise(String exercise, bool? value) async {
    final isNowChecked = value ?? false;
    checkedState[exercise] = isNowChecked;

    final checkedExercises = checkedState.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toSet();

    await _preferencesService.saveCheckedExercises(checkedExercises);
  }

  void _loadCheckedState() {
    final stored = _preferencesService.getCheckedExercises();
    for (final exercise in exercises) {
      checkedState[exercise] = stored.contains(exercise);
    }
  }
}

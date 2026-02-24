import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/controllers/training_controller.dart';
import 'app/services/training_preferences_service.dart';
import 'app/ui/pages/training_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync<TrainingPreferencesService>(
    () => TrainingPreferencesService().init(),
  );

  Get.put<TrainingController>(
    TrainingController(Get.find<TrainingPreferencesService>()),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Treino',
      home: const TrainingPage(),
    );
  }
}

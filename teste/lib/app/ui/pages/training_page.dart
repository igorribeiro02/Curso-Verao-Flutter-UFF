import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/training_controller.dart';

class TrainingPage extends GetView<TrainingController> {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('minha ficha de treino')),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.exercises.length,
          itemBuilder: (context, index) {
            final exercise = controller.exercises[index];
            return CheckboxListTile(
              title: Text(exercise),
              value: controller.isChecked(exercise),
              onChanged: (value) => controller.toggleExercise(exercise, value),
            );
          },
        ),
      ),
    );
  }
}

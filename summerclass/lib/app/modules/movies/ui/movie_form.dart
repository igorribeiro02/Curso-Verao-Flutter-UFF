import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:summerclass/app/modules/movies/controller/movies_controller.dart';

class MovieForm extends GetView<MoviesController> {
  MovieForm({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adicione um Novo filme "), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Título do Filme"),
                  textInputAction: TextInputAction.next,
                  validator: (v) => (v == null || v.trim().isEmpty)
                      ? "Campo obrigatório"
                      : null,
                  onSaved: (v) =>
                      controller.movieForm['title'] = v?.trim() ?? '',
                ),
                SizedBox(height: 12),

                TextFormField(
                  decoration: InputDecoration(labelText: "Descrição do Filme"),
                  textInputAction: TextInputAction.next,
                  validator: (v) => (v == null || v.trim().isEmpty)
                      ? "Campo obrigatório"
                      : null,
                  onSaved: (v) =>
                      controller.movieForm['Description'] = v?.trim() ?? '',
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(labelText: "Diretor do Filme"),
                  textInputAction: TextInputAction.next,
                  validator: (v) => (v == null || v.trim().isEmpty)
                      ? "Campo obrigatório"
                      : null,
                  onSaved: (v) =>
                      controller.movieForm['directors'] = v?.trim() ?? '',
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(labelText: "Sinopse do Filme"),
                  textInputAction: TextInputAction.next,
                  validator: (v) => (v == null || v.trim().isEmpty)
                      ? "Campo obrigatório"
                      : null,
                  onSaved: (v) =>
                      controller.movieForm['synopsis'] = v?.trim() ?? '',
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    final formState = _formKey.currentState;
                    if (formState != null && formState.validate()) {
                      formState.save();
                      print(controller.movieForm);
                      controller.imageNotifier.value = null;
                      Get.back();
                      Get.snackbar('Sucesso', 'Filme adicionado com sucesso!', snackPosition: SnackPosition.BOTTOM
                      );
                    } else{
                      Get.snackbar('Erro', 'Por favor, preencha todos os campos corretamente.', snackPosition: SnackPosition.BOTTOM
                      );
                    }
                  },
                  child: Text("Salvar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
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

                ElevatedButton(
                  onPressed: (){
                    final FormState
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

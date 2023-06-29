import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:testapp/pages/ambos/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cortes'),
        centerTitle: true,
      ),
      body: ListView.builder(
        //importar lista de models.dart
        itemCount: modelsList.length,
        itemBuilder: (context, index) {
          final model = modelsList[index];
          return ListTile(
            title: Text(model.name),
            subtitle: Text(model.description),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      model.quantity++; // Incrementar la cantidad
                    });
                  },
                ),
                Text(
                  '${model.quantity}', // Mostrar la cantidad seleccionada
                  style: const TextStyle(fontSize: 16),
                ),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (model.quantity > 0) {
                        model
                            .quantity--; // Decrementar la cantidad si es mayor a cero
                      }
                    });
                  },
                ),
              ],
            ),
            onTap: () {
              setState(() {
                model.isSelected = !model
                    .isSelected; // Alternar la selección del modelo, quitar esto
              });
            },
            tileColor: model.isSelected ? Colors.grey[300] : null,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Logica para guadar los items seleccionados en firebase con su cantidad, hay que eliminar lo de items seleccionados
          saveSelectionToFirebase(modelsList);
        },
        child: const Icon(Icons.save),
      ),
    );
  }

  void saveSelectionToFirebase(List<Models> models) {
    // Implementa aquí la lógica para guardar la selección en Firebase
    // Puedes utilizar Firebase Firestore u otro servicio de Firebase para almacenar los datos
    // Recorre la lista de modelos y guarda solo los modelos seleccionados con su cantidad correspondiente
    List<Map<String, dynamic>> selectedModels = [];
    for (var model in models) {
      if (model.isSelected && model.quantity > 0) {
        selectedModels.add({
          'name': model.name,
          'description': model.description,
          'quantity': model.quantity,
        });
      }
    }

    // Guardar los datos en Firebase
    FirebaseFirestore.instance
        .collection('selected_models')
        .doc(
            'user_id') // Cambia 'user_id' por el identificador del usuario actual
        .set({'models': selectedModels}).then((value) {
      // Éxito al guardar los datos
      print('Selección guardada en Firebase');
    }).catchError((error) {
      print('Error al guardar la selección en Firebase: $error');
    });
  }
}

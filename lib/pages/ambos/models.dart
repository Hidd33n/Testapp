class Models {
  //Variables de nombre y descripcion
  final String name;
  final String description;
  bool isSelected;
  int quantity;

  Models({
    //marcar como requerido, cambiar isselect para que no sea necesario
    required this.name,
    required this.description,
    this.isSelected = false,
    this.quantity = 0,
  });
}

//Crear lista de los modelos con nombre y descripcion
List<Models> modelsList = [
  Models(
    name: 'puta',
    description: 'Descripción del uniforme completo 1',
  ),
  Models(
    name: 'Uniforme Completo 2',
    description: 'Descripción del uniforme completo 2',
  ),
  Models(
    name: 'Chaqueta',
    description: 'Descripción de la chaqueta',
  ),
  Models(
    name: 'Pantalón',
    description: 'Descripción del pantalón',
  ),
];

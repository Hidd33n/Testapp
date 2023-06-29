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
    name: 'Chaqueta Leontina',
    description: 'Descripción del uniforme completo 1',
  ),
  Models(
    name: 'Chaqueta Grey',
    description: 'Descripción del uniforme completo 2',
  ),
  Models(
    name: 'Ambo completo',
    description: 'Descripción de la chaqueta',
  ),
  Models(
    name: 'Pantalón Grey',
    description: 'Descripción del pantalón',
  ),
];

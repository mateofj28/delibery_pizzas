class Pizza {
  final String nombre;
  final String categoria;
  final String precio;
  final List<String> ingredientes;

  Pizza({
    required this.nombre,
    required this.categoria,
    required this.precio,
    required this.ingredientes,
  });

  // Constructor that takes a map as input (for JSON deserialization)
  factory Pizza.fromJson(Map<String, dynamic> json) => Pizza(
        nombre: json['nombre'] as String,
        categoria: json['categoria'] as String,
        precio: json['precio'] as String,
        ingredientes: List<String>.from(json['ingredientes']),
      );

  // Method to convert the Pizza object to a JSON string (for serialization)
  Map<String, Object> toJson() => {
    'nombre': nombre,
    'categoria': categoria,
    'precio': precio,
    'ingredientes': ingredientes,
  };
}

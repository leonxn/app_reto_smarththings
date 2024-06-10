class EquipoModel {
  String nombre;
  String mac;
  int tipo;
  String modelo;
  bool statusEquipo = false;

  EquipoModel({
    required this.nombre,
    required this.mac,
    required this.tipo,
    required this.modelo,
    required this.statusEquipo,
  });
}

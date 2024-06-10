import 'package:flutter/material.dart';
import 'package:reto_smarththings/widgets/container_appbar.dart';
import 'package:reto_smarththings/models/equipo_model.dart';

class DetailItem extends StatelessWidget {
  List<EquipoModel> equipoList; // Parámetro para recibir la lista

  DetailItem({required this.equipoList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ContainerAppbar(),
          Text(equipoList[0].nombre),
        ],
      ),
    );
  }
}

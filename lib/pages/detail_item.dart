import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reto_smarththings/widgets/container_appbar.dart';
import 'package:reto_smarththings/models/equipo_model.dart';
import 'package:reto_smarththings/widgets/container_button.dart';

class DetailItem extends StatelessWidget {
  List<EquipoModel> equipoList; // Parámetro para recibir la lista

  DetailItem({required this.equipoList});

  @override
  Widget build(BuildContext context) {
    print(equipoList.length);
    return Scaffold(
      body: Column(
        children: [
          ContainerAppbar(),
          Expanded(
            child: ListView.builder(
              itemCount: equipoList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                    ),
                    child: Text(equipoList[index].nombre),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:reto_smarththings/constans/constans.dart';
import 'package:reto_smarththings/pages/settings_screen.dart';
import 'package:reto_smarththings/pages/detail_item.dart';
import 'package:reto_smarththings/models/equipo_model.dart';

class ContainerButton extends StatelessWidget {
  String? containtText;
  bool isIcon;
  IconData? containtIcon;
  int? tipoEquipo;
  ContainerButton({
    this.containtText,
    required this.isIcon,
    this.containtIcon,
    this.tipoEquipo,
  });

  List<EquipoModel> equipoList = [
    EquipoModel(
      nombre: 'Refrigeradora',
      modelo: 'modelo',
      mac: 'modelo',
      tipo: 1,
    ),
    EquipoModel(
      nombre: 'TV',
      modelo: 'modelo',
      mac: 'modelo',
      tipo: 2,
    ),
    EquipoModel(
      nombre: 'Puerta',
      modelo: 'modelo',
      mac: 'modelo',
      tipo: 3,
    ),
    EquipoModel(
      nombre: 'Cochera',
      modelo: 'modelo',
      mac: 'modelo',
      tipo: 4,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        List<EquipoModel> filtrarLista =
            equipoList.where((element) => element.tipo == tipoEquipo).toList();

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => isIcon == false
                ? SettingsScreen()
                : DetailItem(equipoList: filtrarLista),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(16),
        height: 180,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(-2, 6),
              blurRadius: 5,
            ),
          ],
        ),
        child: isIcon == false
            ? Text(
                containtText ?? "",
                style: TextStyle(
                  color: colorPrincipal,
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    containtIcon,
                    color: colorPrincipal,
                    size: 80,
                  ),
                  Text(
                    containtText ?? "",
                    style: TextStyle(
                      color: colorPrincipal,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
      ),
    );
  }
}

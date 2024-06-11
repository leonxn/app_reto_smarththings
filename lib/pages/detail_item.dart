import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reto_smarththings/constans/constans.dart';
import 'package:reto_smarththings/widgets/container_appbar.dart';
import 'package:reto_smarththings/models/equipo_model.dart';
import 'package:reto_smarththings/widgets/text_detail_item.dart';

class DetailItem extends StatefulWidget {
  List<EquipoModel> equipoList; // Parámetro para recibir la lista

  DetailItem({required this.equipoList});

  @override
  State<DetailItem> createState() => _DetailItemState();
}

class _DetailItemState extends State<DetailItem> {
  void _snackbar(
      BuildContext context, String textNotificacion, Color? colorNotificacion) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          textNotificacion,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: colorNotificacion,
        duration: Duration(milliseconds: 500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(widget.equipoList.length);
    return Scaffold(
      body: Column(
        children: [
          ContainerAppbar(),
          Expanded(
            child: ListView.builder(
              itemCount: widget.equipoList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 280,
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
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextDetailItem(
                              opcion: "Fabricante",
                              optValue: widget.equipoList[index].nombre),
                          TextDetailItem(
                              opcion: "Modelo",
                              optValue: widget.equipoList[index].modelo),
                          TextDetailItem(
                              opcion: "Mac",
                              optValue: widget.equipoList[index].mac),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: MaterialButton(
                              height: 60,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(
                                  color:
                                      widget.equipoList[index].statusEquipo ==
                                              false
                                          ? Color(0xff054a88)
                                          : Colors.red,
                                  width: 2.0,
                                ),
                              ),
                              onPressed: () {
                                if (widget.equipoList[index].statusEquipo ==
                                    true) {
                                  _snackbar(context, "Equipo Encendido",
                                      Colors.green);
                                  widget.equipoList[index].statusEquipo = false;
                                } else {
                                  _snackbar(
                                      context, "Equipo Apagado", Colors.red);
                                  widget.equipoList[index].statusEquipo = true;
                                }
                                setState(() {});
                              },
                              child: Text(
                                widget.equipoList[index].statusEquipo == false
                                    ? "Encender"
                                    : "Apagar",
                                style: subtitle,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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

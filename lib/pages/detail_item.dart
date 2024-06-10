import 'package:flutter/material.dart';
import 'package:reto_smarththings/constans/constans.dart';
import 'package:reto_smarththings/widgets/container_appbar.dart';
import 'package:reto_smarththings/models/equipo_model.dart';

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fabricante:",
                                style: subtitle2,
                              ),
                              Text(
                                equipoList[index].nombre,
                                style: subtitle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Modelo:",
                                style: subtitle2,
                              ),
                              Text(
                                equipoList[index].modelo,
                                style: subtitle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mac:",
                                style: subtitle2,
                              ),
                              Text(
                                equipoList[index].mac,
                                style: subtitle,
                              ),
                            ],
                          ),
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
                                  color: Color(0xff054a88),
                                  width: 2.0,
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Encender",
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

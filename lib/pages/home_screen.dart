import 'package:flutter/material.dart';
import 'package:reto_smarththings/constans/constans.dart';
import 'package:reto_smarththings/widgets/container_button.dart';
import 'package:reto_smarththings/widgets/container_appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ContainerAppbar(),
          Padding(
            padding: const EdgeInsets.only(
              left: 14.0,
              top: 50.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Espacios",
                style: subtitle,
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ContainerButton(
                  containtText: "A",
                  isIcon: false,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14.0,
              top: 20.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Equipos Conectados",
                style: subtitle,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                ContainerButton(
                  containtIcon: Icons.live_tv_outlined,
                  containtText: "Tv Cuarto",
                  isIcon: true,
                  tipoEquipo: 1,
                ),
                ContainerButton(
                  containtIcon: Icons.kitchen_outlined,
                  containtText: "Refrigeradora",
                  isIcon: true,
                  tipoEquipo: 2,
                ),
                ContainerButton(
                  containtIcon: Icons.door_front_door_outlined,
                  containtText: "Puerta Sara",
                  isIcon: true,
                  tipoEquipo: 3,
                ),
                ContainerButton(
                  containtIcon: Icons.directions_car,
                  containtText: "Cochera",
                  isIcon: true,
                  tipoEquipo: 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

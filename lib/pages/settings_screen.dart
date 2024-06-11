import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reto_smarththings/constans/constans.dart';
import 'package:reto_smarththings/widgets/container_appbar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double valor1 = 0;
  double valor2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ContainerAppbar(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  "Ajustar",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Luz"),
              ],
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: colorPrincipal,
              inactiveTrackColor: Color.fromARGB(255, 11, 126, 227),
              trackHeight: 4.0,
              thumbColor: colorPrincipal,
              overlayColor: colorPrincipal,
              valueIndicatorColor: colorPrincipal,
              valueIndicatorTextStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Slider(
              value: valor1,
              divisions: 2,
              min: 0,
              max: 100,
              label: valor1 == 0
                  ? '0'
                  : valor1 == 50
                      ? '51'
                      : '100',
              onChanged: (value) {
                setState(() {
                  valor1 = value;
                  print(valor1);
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorPrincipal,
                  ),
                ),
                Text(
                  '51',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorPrincipal,
                  ),
                ),
                Text(
                  '100',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorPrincipal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Luz"),
              ],
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: colorPrincipal,
              inactiveTrackColor: Color.fromARGB(255, 11, 126, 227),
              trackHeight: 4.0,
              thumbColor: colorPrincipal,
              overlayColor: colorPrincipal,
              valueIndicatorColor: colorPrincipal,
              valueIndicatorTextStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Slider(
              value: valor2,
              divisions: 2,
              min: 0,
              max: 100,
              label: valor2 == 0
                  ? '0'
                  : valor2 == 50
                      ? '51'
                      : '100',
              onChanged: (value) {
                setState(() {
                  valor2 = value;
                  print(valor2);
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorPrincipal,
                  ),
                ),
                Text(
                  '51',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorPrincipal,
                  ),
                ),
                Text(
                  '100',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorPrincipal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

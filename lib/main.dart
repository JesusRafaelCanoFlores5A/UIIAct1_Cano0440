import 'package:flutter/material.dart';
import 'package:cano_uii_act1_0440/pantallas0440.dart/panel0440/panel_pantalla0440.dart';

void main() => runApp(MiAppComex());

class MiAppComex extends StatelessWidget {
  const MiAppComex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cano Comex0440",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: PanelPantalla0440(),
    );
  }
}

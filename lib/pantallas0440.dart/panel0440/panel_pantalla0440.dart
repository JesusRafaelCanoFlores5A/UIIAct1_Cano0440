import 'package:flutter/material.dart';
import 'package:cano_uii_act1_0440/pantallas0440.dart/panel0440/widgets0440/item_pinturas0440.dart';

class PanelPantalla0440 extends StatelessWidget {
  const PanelPantalla0440({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2273ff),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/JesusRafaelCanoFlores5A/Img_FlutterFlow_IOS_6J/main/UII%20Act1/Icono1.png")),
          )
        ],
        title: Text(
          'Panel Cano 0440',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff5e7ea8),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "¿Qué quieres ver?",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/JesusRafaelCanoFlores5A/Img_FlutterFlow_IOS_6J/main/Act12NavBar_FlutterFlow/Banner-Comex-2.png"))),
          ),
          ListTile(
            title: Text("Nuestros Colores"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const ItemPintura()],
          ))
        ],
      ),
    );
  }
}

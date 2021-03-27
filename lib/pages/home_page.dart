import 'package:flutter/material.dart';
import 'package:pet_app_ui/constant.dart';
import 'package:pet_app_ui/widgets/dog_card.dart';
import 'package:pet_app_ui/widgets/walk_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Text("Hola, Renato", style: appTitle),
                SizedBox(height: 10),
                Text(
                    "Dale un vistazo a los nuevos productos, grupos, eventos, lugares y más",
                    style: contentBlack),
                SizedBox(height: 50),
                DogCard(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Grupos de Caminata".toUpperCase(),
                      style: TextStyle(fontSize: 17),
                    ),
                    Text("Ver Todos", style: TextStyle(fontSize: 17)),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      WalkCard(
                        imgScr: "assets/images/card_dog_1.png",
                        title: "Conoce a nuestros perros paseando con ellos",
                        location: "San Isidro, Lima",
                        member: "8 miembros",
                        orgBy: "Laura",
                      ),
                      WalkCard(
                        imgScr: "assets/images/card_dog_2.png",
                        title: "Ven a pasar una divertida tarde con tu amigo",
                        location: "Barranco, Lima",
                        member: "7 members",
                        orgBy: "Renzo",
                      ),
                    ],
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

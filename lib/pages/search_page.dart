import 'package:flutter/material.dart';
import 'package:pet_app_ui/constant.dart';
import 'package:pet_app_ui/widgets/search_card.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Encuentralo todo para tus mascotas",
                  style: appSubTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              SearchCard(
                itemOneTitle: "Veterinarias",
                itemOneImg: "assets/images/card_1.png",
                itemOneBg: card1,
                itemOneColor: textWhite,
                itemTwoTitle: "Lugares \npara comer",
                itemTwoImg: "assets/images/card_2.png",
                itemTwoBg: card2,
                itemTwoColor: textBlack,
              ),
              SearchCard(
                itemOneTitle: "Lugares \npara pasear",
                itemOneImg: "assets/images/card_3.png",
                itemOneBg: card3,
                itemOneColor: textWhite,
                itemTwoTitle: "Spas \n& Salones",
                itemTwoImg: "assets/images/card_4.png",
                itemTwoBg: card4,
                itemTwoColor: textBlack,
              ),
              SearchCard(
                itemOneTitle: "Tiendas \n& Productos",
                itemOneImg: "assets/images/card_5.png",
                itemOneBg: card5,
                itemOneColor: textBlack,
                itemTwoTitle: "Paseos \ngrupales",
                itemTwoImg: "assets/images/card_6.png",
                itemTwoBg: card6,
                itemTwoColor: textWhite,
              ),
              SearchCard(
                itemOneTitle: "Animales",
                itemOneImg: "assets/images/card_7.png",
                itemOneBg: card7,
                itemOneColor: textBlack,
                itemTwoTitle: "Otros",
                itemTwoImg: "assets/images/card_8.png",
                itemTwoBg: card8,
                itemTwoColor: textWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

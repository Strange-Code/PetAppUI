import 'package:flutter/material.dart';
import 'package:pet_app_ui/constant.dart';

class DogCard extends StatelessWidget {
  const DogCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Stack(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: primary, blurRadius: 0.5)],
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 10),
                child: Text(
                  "Lola se a perdido en tu vecindario! Ayudanos a encontrarla!",
                  style: contentWhite,
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Image.asset("assets/images/lolo_dog.png"),
        )
      ]),
    );
  }
}

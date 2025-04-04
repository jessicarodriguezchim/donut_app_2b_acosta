import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutMark;
  final String donutPrice;
  //Dynamic porque será de tipo COLOR
  final dynamic donutColor;
  final dynamic imageName;
  final VoidCallback onAddToCart;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutMark,
    required this.donutPrice,
    this.donutColor,
    this.imageName,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            //PriceTag

            Row(
              //Alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: donutColor[800]),
                  ),
                )
              ],
            ),
            //Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),

            //Donut Flavor Text
            Text(
              donutFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            //Espacio entre texto
            SizedBox(
              height: 4,
            ),
            Text(
              donutMark,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10),
            ),

            //Iconos
            Padding(
              padding: const EdgeInsets.only(bottom: 15, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Lógica para favoritos
                    },
                    child: Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: onAddToCart,
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            )

            //todo:
            //buttons
          ],
        ),
      ),
    );
  }
}

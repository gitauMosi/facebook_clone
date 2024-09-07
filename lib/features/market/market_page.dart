import 'package:facebook_app/models/product.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today's picks"),
                  Text("Moi's Bridge.65km")
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget customProductCard(Product product){
    return Container(
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(product.img))
            ),
          )
        ],
      ),
    );
  }
}
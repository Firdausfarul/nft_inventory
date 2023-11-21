import 'package:flutter/material.dart';

class NFTCard extends StatelessWidget {
  final String? name;
  final String? description;
  final String? imgUrl;
  final int? price;
  final int? amount;
  final int id;
  const NFTCard(this.name, this.description, this.imgUrl, this.price,
      this.amount, this.id,
      {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: InkWell(
        // Area responsive terhadap sentuhan
        // Area responsif terhadap sentuhan
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //placeholder
                Image.network("${imgUrl}"),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  '(Image masih placeholder)\n'
                  'Name: ${name}\n'
                  'Description: ${description}\n'
                  'Image URL: ${imgUrl}\n'
                  'Price: ${price}\n'
                  'Amount: ${amount}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nft_inventory/globals.dart';

class NFTCard extends StatelessWidget {
  final NFT item;
  const NFTCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: InkWell(
        // Area responsive terhadap sentuhan
        // Area responsif terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Gacor ${item.name}!")));
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //placeholder
                Image.asset('assets/images/eva.jpg'),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  '(Image masih placeholder)\n'
                  'Name: ${item.name}\n'
                  'Description: ${item.description}\n'
                  'Image URL: ${item.imgUrl}\n'
                  'Price: ${item.price}\n'
                  'Amount: ${item.amount}',
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


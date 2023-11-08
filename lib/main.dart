import 'package:flutter/material.dart';
import 'package:nft_inventory/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFT Inventory',
      home: MenuPage(),
    );
  }
}

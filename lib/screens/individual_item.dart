import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:nft_inventory/models/Product.dart';
import 'package:nft_inventory/widgets/left_drawer.dart';
import 'package:nft_inventory/widgets/nft_card.dart';

class SingleProductPage extends StatefulWidget {
  const SingleProductPage(this.id, {Key? key}) : super(key: key);
  final int id;
  @override
  _SingleProductPageState createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage> {
  Future<Product> fetchSingleProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse(
        'https://muhammad-fachrudin-tugas.pbp.cs.ui.ac.id/json/' +
            widget.id.toString() +
            '/');
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object SingleProduct
    Product singleProduct = Product.fromJson(data[0]);

    return singleProduct;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SingleProduct'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchSingleProduct(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                //agak susah ngubah jadi grid
                return NFTCard(
                    snapshot.data!.fields.name,
                    snapshot.data!.fields.description,
                    snapshot.data!.fields.img,
                    snapshot.data!.fields.price,
                    snapshot.data!.fields.amount,
                    snapshot.data!.pk);
              }
            }));
  }
}

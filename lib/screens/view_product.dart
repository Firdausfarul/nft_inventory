// import 'package:flutter/material.dart';
// import 'package:nft_inventory/widgets/left_drawer.dart';
// import 'package:nft_inventory/globals.dart' as globals;
// import 'package:nft_inventory/widgets/nft_card.dart';

// class ViewProduct extends StatelessWidget {
//     ViewProduct({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       drawer: const LeftDrawer(),
//       appBar: AppBar(
//         title: const Text(
//           'Shopping List',
//         ),
//         backgroundColor: Colors.indigo,
//       ),
//       body: SingleChildScrollView(
//         // Widget wrapper yang dapat discroll
//         child: Padding(
//           padding: const EdgeInsets.all(10.0), // Set padding dari halaman
//           child: Column(
//             // Widget untuk menampilkan children secara vertikal
//             children: <Widget>[
//               const Padding(
//                 padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
//                 // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
//                 child: Text(
//                   'PBP Shop', // Text yang menandakan toko
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               // Grid layout
//               GridView.count(
//                 // Container pada card kita.
//                 primary: true,
//                 padding: const EdgeInsets.all(20),
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 crossAxisCount: 3,
//                 shrinkWrap: true,
//                 children: globals.globalNFTList.map((globals.NFT item) {
//                   // Iterasi untuk setiap item
//                   return NFTCard(item);
//                 }).toList(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

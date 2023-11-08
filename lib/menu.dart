import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NFT Inventory'), backgroundColor: Colors.purple),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              icon: Icon(Icons.view_list),
              label: Text('Lihat Item'),
              onPressed: () => _showSnackBar(context, 'Kamu telah menekan tombol Lihat Item'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                //shape square
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //size
                minimumSize: Size(150, 100),
                //padding
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.add),
              label: Text('Tambah Item'),
              onPressed: () => _showSnackBar(context, 'Kamu telah menekan tombol Tambah Item'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                //shape square
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //size
                minimumSize: Size(150, 100),
                //padding
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.logout),
              label: Text('Logout'),
              onPressed: () => _showSnackBar(context, 'Kamu telah menekan tombol Logout'),
              //add color to button
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                //shape square
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //size
                minimumSize: Size(150, 100),
                //padding
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

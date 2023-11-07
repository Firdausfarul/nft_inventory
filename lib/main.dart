import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventory App',
      home: InventoryPage(),
    );
  }
}

class InventoryPage extends StatelessWidget {
  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inventory App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              icon: Icon(Icons.view_list),
              label: Text('Lihat Item'),
              onPressed: () => _showSnackBar(context, 'Kamu telah menekan tombol Lihat Item'),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.add),
              label: Text('Tambah Item'),
              onPressed: () => _showSnackBar(context, 'Kamu telah menekan tombol Tambah Item'),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.logout),
              label: Text('Logout'),
              onPressed: () => _showSnackBar(context, 'Kamu telah menekan tombol Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

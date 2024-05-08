import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      home: ShoesList(),
    );
  }
}

class ShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes List'),
      ),
      body: ListView(
        children: [
          ShoeCard(
            imageUrl: 'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
            shoeName: 'Nike SB Zoom Blazer',
            shoePrice: 'US 8.795',
          ),
          ShoeCard(
            imageUrl: 'https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png',
            shoeName: 'Adidas Ultraboost',
            shoePrice: 'US 9.999',
          ),
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String shoeName;
  final String shoePrice;

  ShoeCard({
    required this.imageUrl,
    required this.shoeName,
    required this.shoePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          // Kolom pertama: Gambar
          Column(
            children: [
              Image.network(
                imageUrl,
                width: 100,
                height: 100,
              ),
            ],
          ),
          SizedBox(width: 16.0), // Jarak antara kolom
          // Kolom kedua: Nama dan harga
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shoeName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                shoePrice,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
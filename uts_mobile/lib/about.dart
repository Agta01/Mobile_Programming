import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Page')),
      body: const Center(
        child: Text(
          'Aplikasi ini berisi tentang : \n \n'
          'Penjualan Makanan yang berada di \n'
          'Politeknik Negeri Malang\n',
          
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

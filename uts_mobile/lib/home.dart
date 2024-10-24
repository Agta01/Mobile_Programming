import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/homepage.jpg', height: 150), // Gambar
            const SizedBox(height: 20),
            Text('Welcome, $username!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: const Text('About'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile', arguments: username);
              },
              child: const Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

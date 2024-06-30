import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppBar(
            title: const Text('Home'),
          ),
          const Text('Home'),
        ],
      ),
    );
  }
}
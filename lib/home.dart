import 'package:flutter/material.dart';
import 'ui/home/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: header(),
    );
  }
}

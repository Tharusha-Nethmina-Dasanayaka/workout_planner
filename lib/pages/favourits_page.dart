import 'package:flutter/material.dart';

class FavourtisPage extends StatefulWidget {
  const FavourtisPage({super.key});

  @override
  State<FavourtisPage> createState() => _FavourtisPageState();
}

class _FavourtisPageState extends State<FavourtisPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child:  Text("favourites Page"),
        ),
      ),
    );
  }
}
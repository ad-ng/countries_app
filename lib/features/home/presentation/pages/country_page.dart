import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key, required this.name, required this.cca2});
  final String name;
  final String cca2;

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
        ),
      ),
    );
  }
}

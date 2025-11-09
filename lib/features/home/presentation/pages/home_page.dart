import 'package:countries_app/features/home/presentation/components/my_custom_search.dart';
import 'package:countries_app/shared/components/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchQuery = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Countries', style: TextStyle(fontWeight: FontWeight.w500)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(children: [MyCustomSearch(searchQuery: searchQuery)]),
      bottomNavigationBar: customBottomNav(context, 0),
    );
  }
}

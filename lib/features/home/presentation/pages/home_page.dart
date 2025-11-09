import 'package:countries_app/features/home/data/datasources/remote/country_api_service.dart';
import 'package:countries_app/features/home/presentation/components/home_country_card.dart';
import 'package:countries_app/features/home/presentation/components/my_custom_search.dart';
import 'package:countries_app/features/home/presentation/components/my_schimmer.dart';
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
      body: Column(
        children: [
          MyCustomSearch(searchQuery: searchQuery),
          SizedBox(height: 10),
          Expanded(
            child: FutureBuilder(
              future: CountryApiService().fetchAllCountries(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return MyShimmer();
                }
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) =>
                        homeCountryCard(context, snapshot.data![index]),
                  );
                }
                if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                }
                return SizedBox();
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: customBottomNav(context, 0),
    );
  }
}

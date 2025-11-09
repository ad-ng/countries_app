import 'package:countries_app/features/home/presentation/bloc/country_cubit.dart';
import 'package:countries_app/features/home/presentation/components/home_country_card.dart';
import 'package:countries_app/features/home/presentation/components/my_custom_search.dart';
import 'package:countries_app/features/home/presentation/components/my_schimmer.dart';
import 'package:countries_app/shared/components/custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchQuery = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<CountryCubit>().loadCountries();
  }

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
            child: BlocBuilder<CountryCubit, CountryState>(
              builder: (context, state) {
                return state.when(
                  loading: () => MyShimmer(),
                  success: (countries) => ListView.builder(
                    itemCount: countries.length,
                    itemBuilder: (context, index) =>
                        homeCountryCard(context, countries[index]),
                  ),
                  error: (msg) => Text(msg),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: customBottomNav(context, 0),
    );
  }
}

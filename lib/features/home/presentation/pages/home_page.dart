import 'dart:async';
import 'package:countries_app/features/home/presentation/bloc/country_cubit.dart';
import 'package:countries_app/features/home/presentation/components/home_country_card.dart';
import 'package:countries_app/features/home/presentation/components/my_custom_search.dart';
import 'package:countries_app/features/home/presentation/components/my_schimmer.dart';
import 'package:countries_app/features/home/presentation/components/search_country_card.dart';
import 'package:countries_app/shared/components/custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchQuery = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    // Load all countries initially
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CountryCubit>().loadCountries();
    });

    // Listen to search field changes with debounce
    searchQuery.addListener(() {
      if (_debounce?.isActive ?? false) _debounce!.cancel();
      _debounce = Timer(const Duration(milliseconds: 400), () {
        final query = searchQuery.text.trim();
        if (query.isEmpty) {
          context.read<CountryCubit>().loadCountries();
        } else {
          context.read<CountryCubit>().searchCountries(query);
        }
        setState(() {}); // Rebuild AnimatedSwitcher
      });
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    searchQuery.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSearching = searchQuery.text.isNotEmpty;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Countries',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          MyCustomSearch(searchQuery: searchQuery),
          const SizedBox(height: 10),
          Expanded(
            child: BlocBuilder<CountryCubit, CountryState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const MyShimmer(),
                  success: (countries) {
                    if (countries.isEmpty) {
                      return const Center(child: Text("No countries found."));
                    }

                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: ListView.builder(
                        key: ValueKey<bool>(isSearching),
                        itemCount: countries.length,
                        itemBuilder: (context, index) {
                          final country = countries[index];
                          return isSearching
                              ? searchCountryCard(context, country)
                              : homeCountryCard(context, country);
                        },
                      ),
                    );
                  },
                  error: (msg) => Center(child: Text(msg)),
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

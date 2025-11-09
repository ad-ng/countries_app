import 'package:countries_app/features/home/presentation/bloc/country_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCustomSearch extends StatefulWidget {
  const MyCustomSearch({super.key, required this.searchQuery});
  final TextEditingController searchQuery;

  @override
  State<MyCustomSearch> createState() => _MyCustomSearchState();
}

class _MyCustomSearchState extends State<MyCustomSearch> {
  @override
  void initState() {
    super.initState();
    widget.searchQuery.addListener(() {
      print(widget.searchQuery.text);
      BlocProvider.of<CountryCubit>(context).searchCountries('rw');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 50,
        child: TextField(
          cursorColor: Colors.black,
          style: TextStyle(fontSize: 18),
          controller: widget.searchQuery,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade300,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            prefixIcon: Icon(Icons.search, size: 30),
            hint: Text(
              'Search for a country',
              style: TextStyle(fontSize: 18, color: Colors.black38),
            ),
            isDense: true,
            suffixIcon: IconButton(
              onPressed: () => widget.searchQuery.clear(),
              icon: Icon(Icons.cancel),
            ),
          ),
        ),
      ),
    );
  }
}

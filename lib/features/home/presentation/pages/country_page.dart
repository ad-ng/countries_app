import 'package:countries_app/features/home/data/datasources/remote/country_api_service.dart';
import 'package:countries_app/features/home/domain/usecases/number_formatter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key, required this.name, required this.cca2});
  final String name;
  final String cca2;

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  final formatter = NumberFormat('#,###');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.name,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: CountryApiService().fetchOneCountryByCca2(widget.cca2),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(8),
                      child: Image.network(
                        snapshot.data!.flags.png!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 15,
                      bottom: 20,
                    ),
                    child: Text(
                      'Key Statistics',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  eachStatistic(
                    context,
                    'Area',
                    '${formatter.format(snapshot.data!.area!)} sq km',
                  ),
                  eachStatistic(
                    context,
                    'Population',
                    customNumberFormatFull(snapshot.data!.population!),
                  ),
                  eachStatistic(context, 'Region', snapshot.data!.region!),
                  eachStatistic(
                    context,
                    'Sub Region',
                    snapshot.data!.subregion!,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 15,
                      bottom: 20,
                    ),
                    child: Text(
                      'Time Zone',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Wrap(
                      children: snapshot.data!.timezones!
                          .map(
                            (e) => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              margin: EdgeInsets.only(right: 15, bottom: 15),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                e,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              );
            }
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}

Widget eachStatistic(BuildContext context, String title, String value) {
  return ListTile(
    minTileHeight: 20,
    title: Text(
      title,
      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
    ),
    trailing: Text(value, style: TextStyle(fontSize: 15)),
  );
}

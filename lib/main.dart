import 'package:flutter/material.dart';
import 'package:sdg_example/src/feature/state_picker/view/page.dart';

import 'src/feature/state_picker/data/api/city_picker_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CityPickerPage(
        //in real app this would be injected via some di framework/inherited widget etc
        countrySource: CityPickerApi(),
        stateSource: CityPickerApi(),
      ),
    );
  }
}

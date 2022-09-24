import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ListSearch.dart';
import 'Provider.dart';
import 'ProviderCount.dart';
import 'Slider.dart';
import 'Testing.dart';
import 'ThemeProvider.dart';

void main() {
  runApp(
     MyApp(),
    
     );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

      return
   MaterialApp(
  
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.blue),
        home: SliderApp()
  
   );
   
  }
}






ThemeData darkTheme = ThemeData(
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
);

ThemeData lightTheme = ThemeData(
  accentColor: Colors.pink,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.blue,
);



 
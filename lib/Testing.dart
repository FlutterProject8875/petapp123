import 'package:flutter/material.dart';
import 'package:flutter_demo/ListSearch.dart';


class Demmmo extends StatefulWidget {
  const Demmmo({super.key});

  @override
  State<Demmmo> createState() => _DemmmoState();
}

class _DemmmoState extends State<Demmmo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

        
          child: Center(child: GestureDetector(
            onTap: (){

                _Dialog(context);

            },
            child: Text("Show Dialog"))),

        ),
      ],
    );
  }
}

                    void _Dialog(BuildContext fff){
                           showDialog(
                          context: fff,
                          builder: (context) {
                            Future.delayed(Duration(seconds: 5), () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                            });
                            return AlertDialog(
                              title: Text('Title'),
                            );
                          });
}
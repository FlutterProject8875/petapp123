
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';
import 'Provider.dart';


String title = "Flutter is best of future =>";


class Count extends StatefulWidget {
  const Count({Key? key}) : super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {

  int count = 0;

   increment( int i){

    count++;
    
  }

  decrement(int a){
    count--;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title + "$count")),
      floatingActionButton: 
      
      
      
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            setState(() {
              
              increment(count);

              print(count);
            });
          },
          child: Icon(Icons.add),
          ),

          SizedBox(
            height: 20,
          ),

              FloatingActionButton(onPressed: (){
            setState(() {
              
              decrement(count);
              print(count);
            });
          },
          child: Icon(Icons.remove),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
        child: Container(
          child: Text("$count",style: TextStyle(fontSize: 25),
),
         ),
      ),
    );
    
  }
}
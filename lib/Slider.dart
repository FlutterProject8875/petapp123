import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProviderCount.dart';
class SliderApp extends StatefulWidget {
  const SliderApp({Key? key}) : super(key: key);

  @override
  State<SliderApp> createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp> {

var a = 5;
var b = 5;



bool isSelect= false;

  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Slider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Slider(
            label: "Select Age",
            value: age.toDouble(),
            onChanged: (value) {
              setState(() {
                age = value.toInt();
              });
            },
            min: 5,
            max: 100,
          ),
          Text(
            "Your Age: " + age.toString(),
            style: const TextStyle(
              fontSize: 32.0,
            ),
          ),


          Text( (age>=50)?"BhimSingh":"Surendra",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),

        (age>50)?
          MaterialButton(
            color: Colors.purple,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: (){
              setState(() {
                
              age>60?Navigator.push(context, MaterialPageRoute(builder: (context)=>Count())):SizedBox();
              });

            },child: Text("Surendra Kumar",style: TextStyle(color: Colors.white),),):SizedBox(),



      
         

        ],


     


      ),
    );
}
}









class ProviderSlioder  extends ChangeNotifier{

  int age = 10;

  bool isChangeAge = false;


  // int get Agee => age;

  // bool  get ChangeAgee =>isChangeAge;
   
  void changeAge(){
   isChangeAge;
   notifyListeners();
  }

}



class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
    bool isChangeAge = false;
      int age = 10;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderSlioder>(create: (context) => ProviderSlioder(),child: Builder(builder:(context){
      return Scaffold(
        appBar: AppBar(title: Text("Age Counter"+age.toString() ),),

        body: Consumer<ProviderSlioder>(
          builder: (BuildContext context, value, Widget? child) { 
            return
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              Text("Your Age "),
        
        
              SizedBox(
                height: 100,
              ),
        
        
          //     Slider(
             
          //       label: "Select Age",
          //       value:age.toDouble(),onChanged:(value){
          //         age!=value;
          //       },
          //          min: 15,
          //       max: 100,
          // )
            ]
          );
          }
        ),

      );

    }));
    
  }
}





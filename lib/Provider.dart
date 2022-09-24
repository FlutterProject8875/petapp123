import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


  final ageCantroller = TextEditingController();

class EligibilityScreen extends StatefulWidget {
  const EligibilityScreen({Key? key}) : super(key: key);

  @override
  State<EligibilityScreen> createState() => _EligibilityScreenState();
}

class _EligibilityScreenState extends State<EligibilityScreen> {
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child:
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [


               SizedBox(
                height: 150,
               ),
                TextFormField(
                  controller: ageCantroller,
                  decoration: InputDecoration(
                    hintText: " Give your input"
                  ),
                ),
    
               SizedBox(height: 50,),

                Container(
                  width: 350,
                  height: 45,
                  child: MaterialButton(
                    onPressed: () {},
                  
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.grey,
                    child: Text("check"),
                  ),
                ),

                 SizedBox(
                  height: 50,
                 ),

                Text("You have not given any input")



              ],
            ),
          ),
        ),
      ),
    );
  }
}






class CheckEligilibity extends  ChangeNotifier {

  String  _eligilibityMessege = "";

  bool  _isEligibility = false;





  void checkEligibility(int age){

    if(age >=18){
      _eligilibityMessege = "You are eligible to Apply for Driviling Licence";
      _isEligibility = true;
      notifyListeners();
    } 

    else{

      _eligilibityMessege  ="You are not eligible to apply for Drivilng Licence";

      _isEligibility = false;
      notifyListeners();

    }

  }


  String get EligiblityMessage => _eligilibityMessege;
  bool get isEligible => _isEligibility;





    
  }




  class EligibilityScreen1 extends StatefulWidget {
  const EligibilityScreen1({Key? key}) : super(key: key);

  @override
  State<EligibilityScreen1> createState() => _EligibilityScreen1State();
}

class _EligibilityScreen1State extends State<EligibilityScreen1> {
  
  final ageCantroller = TextEditingController();
 

  
  
  @override
  Widget build(BuildContext context) {

       return ChangeNotifierProvider <CheckEligilibity>(create: (context)=>CheckEligilibity(),
       child: Builder(builder: (context){
        
       

    return Scaffold(
      body: Form(
        child:
        
        Consumer<CheckEligilibity>(
          builder: (context,provider,child){
return
          
     Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
        
        
                 SizedBox(
                  height: 100,
                 ),


                 Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
             color: (provider.isEligible==null)?Colors.grey:provider.isEligible==true?Colors.green:Colors.redAccent,

                 )
                 ),
                  TextFormField(
                    controller: ageCantroller,
                    onChanged: (value){
                      provider.checkEligibility(int.parse(value));
                    },
                    decoration: InputDecoration(
                      hintText: " Give your input"
                    ),
                  ),
            
                 SizedBox(height: 50,),
        
                  Container(
                    width: 350,
                    height: 45,
                    child: MaterialButton(
                      onPressed: () {
                       var age = int.parse(ageCantroller.text.toString());


                     provider.checkEligibility(age);
                      },
                    
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      color: (provider.isEligible==null)?Colors.grey:provider.isEligible?Colors.green:Colors.redAccent,
                      child: Text("check"),
                    ),
                  ),
        
                   SizedBox(
                    height: 50,
                   ),
        
                  Text(provider.EligiblityMessage.toString())
        
        
        
                ],
              ),
            ),
          );
          },
        ),
      ),
    );
     }));
  }
}




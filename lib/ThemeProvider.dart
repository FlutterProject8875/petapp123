import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Theme1 extends StatefulWidget {
  const Theme1({Key? key}) : super(key: key);

  @override
  State<Theme1> createState() => _Theme1State();
}
class _Theme1State extends State<Theme1> {

//   if( _isThemeDark==false){
//     setState(() {
//       _isThemeDark=true;
//         textvalue ="ON";
//     });
//   }
//   else{
//     setState(() {
//       _isThemeDark=false;    
//       textvalue = "OFF";
//     });
//   }
//  }
 String title = "Theme Provider";

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(create: (context)=>ThemeProvider(),child: Builder(builder: (context){
      return
    Scaffold(
      appBar: AppBar(
        title: Text(title), actions: [
        
        Consumer<ThemeProvider>(
          builder: (context, value, child) { 
            return
           Padding(
            padding: const EdgeInsets.only(right: 15),
            child:  IconButton(
                  icon: context.read<ThemeProvider>().isThemeDark == true                                                              
                      ? Icon(Icons.light_mode)
                      : Icon(Icons.dark_mode),
                  onPressed: () {
                        value.changeTheme();
                        print("tap");
                  },
            )
           );
          }
        )

      ],
      ),
      body: Center(
        child: Container(
          // child: Text(textvalue,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,),
        ),
      ),
    );
      },));  
  }
}




  

  // var textvalue = "Toggle off";

class ThemeProvider extends ChangeNotifier {

  bool _isThemeDark = false;
  
  bool get isThemeDark => _isThemeDark;

      changeTheme() {
      _isThemeDark = false;
      notifyListeners();

// if( _isThemeDark==false){
//       _isThemeDark=true;
//         textvalue ="ON";

//         notifyListeners();
//   }

//   else{
//       _isThemeDark=false;
//       textvalue = "OFF";
//       notifyListeners();
  
//   } 
     }
}
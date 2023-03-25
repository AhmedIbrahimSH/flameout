import 'package:flameout/Screens/ApprovalScreen.dart';
import 'package:flameout/Screens/ConfirmedScreen.dart';
import 'package:flameout/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flameout/Screens/FaqPage.dart';
import 'package:geolocator/geolocator.dart';

class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // This widget is the root of your application.
  int NumeberOfFireExtinguishers = 1;
  int CostPerOne = 100;
  int ShipppingCost = 30;


  Position? currentPosition;

  Future<void> getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied) {
      // Handle location permission denied
    }

    if (permission == LocationPermission.deniedForever) {
      // Handle location permission denied forever
    }

    // Get the user's current position
    currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
  late int TotalCost;
  late int res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("FlameOut"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_important)),
          IconButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FaqPage()));
          }, icon:Icon(Icons.question_mark_rounded)),
        ],
        backgroundColor: Colors.red ,


      ),


      body:

      Padding(
        padding: EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
                children: [

                  Text(
                    'Help in saving your house',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Number of Fire extinguishers to recycle',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),

                  Text(
                    '$NumeberOfFireExtinguishers',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center
                  (
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(

                            onPressed: (){

                          setState(() {
                            if(NumeberOfFireExtinguishers < 5)
                              NumeberOfFireExtinguishers++;
                            else{
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Error"),
                                    content: Text("No more than 5 please"),
                                    actions: <Widget>[
                                      TextButton (
                                        child: Text("OK"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }

                          });
                        }

                        ,
                            heroTag: 'add',
                            mini: true,
                            backgroundColor: Colors.red,
                        child:
                         Icon(
                           Icons.add,

                         )
                        ),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                            if(NumeberOfFireExtinguishers > 1)
                              NumeberOfFireExtinguishers--;
                            else{
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Error"),
                                    content: Text("Minimum is 1"),
                                    actions: <Widget>[
                                      TextButton (
                                        child: Text("OK"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                            print(NumeberOfFireExtinguishers);
                          });
                        },
                          heroTag: 'minus',
                          mini: true,
                          backgroundColor: Colors.red,

                          child:
                            Icon(
                                Icons.remove,
                            ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                  ),



                  SizedBox(

                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10 , left: 10),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color : Colors.red,
                        borderRadius: BorderRadius.circular(15),

                      ),
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: MaterialButton(
                        onPressed: () async {
                          getLocation();

                        } ,
                        child: Text(
                          'Get your location',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color : Colors.white,
                          ),
                        ),

                      ),
                    ),
                  ),

                  SizedBox(

                    height: 50,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 10 , left: 10),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color : Colors.red,
                        borderRadius: BorderRadius.circular(15),

                      ),
                      // clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: MaterialButton(

                        onPressed: (){
                          int total = (NumeberOfFireExtinguishers * 100) + 30;
                          Navigator.push(
                              context ,
                              MaterialPageRoute(builder: (context) => ApprovalScreen(
                                cost: total,
                              ) ));
                        } ,
                        child: Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color : Colors.white,
                          ),
                        ),

                      ),
                    ),
                  ),
                  SizedBox(

                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10 , left: 10),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color : Colors.red,
                        borderRadius: BorderRadius.circular(15),

                      ),
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: MaterialButton(
                        onPressed: (){} ,
                        child: Text(
                          'Review my Orders',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color : Colors.white,
                          ),
                        ),

                      ),
                    ),
                  )
                ]
            ),
          ),
        ),
      ),



    );


  }
}



void MenuPressed(){

  print("hello");

}

void ChangeLanguage(){

}

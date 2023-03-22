import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("FlameOut"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_important)),
          IconButton(onPressed: MenuPressed, icon:Icon(Icons.question_mark_rounded)),
        ],
        backgroundColor: Colors.red ,


      ),


      body:

      Padding(
        padding: EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
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
                  height: 150,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Number of Fire Extinguishers to recycle ? ',
                    prefixIcon: Icon(
                      Icons.numbers_outlined,
                    ),


                  ),



                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Drop your location here',
                    suffixIcon: Icon(
                      Icons.location_on,
                    ),
                    prefixIcon: Icon(
                      Icons.numbers_outlined,
                    ),


                  ),






                ),

                SizedBox(

                  height: 150,
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


    );


  }
}



void MenuPressed(){

  print("hello");

}

void ChangeLanguage(){

}

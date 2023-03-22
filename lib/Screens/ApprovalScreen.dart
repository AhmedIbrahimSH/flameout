import 'package:flutter/material.dart';

class ApprovalScreen extends StatelessWidget {

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
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(

                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),
                        'Your refrence ID is : '
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                SizedBox(
                  height: 5,
                ),

                Text(
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  'The order is expected to take from 3 to 5 days'
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
                        'Confirm',
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

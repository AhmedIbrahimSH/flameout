import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'ConfirmedScreen.dart';
import 'MainScreen.dart';


String generateRefId() {
  var random = Random();
  const String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  String result = '';
  for (int i = 0; i < 10; i++) {
    result += chars[random.nextInt(chars.length)];
  }
  return result;
}

class ApprovalScreen extends StatelessWidget {

  String temp = generateRefId();
  final int cost;
  ApprovalScreen({
    required this.cost,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title:
          Text(
            'OrderConfirmation',
            style: TextStyle(

            ),


        ),
        centerTitle : true,
        backgroundColor: Colors.red,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(

              'Total Cost is : ' + '$cost',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,

              ),
            ),

          SizedBox(
            height: 20,
          ),

            Text(
                'Your Ref ID :  ' + '$temp' ,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),

            ),

        SizedBox(
          height: 250,
        ),


<<<<<<< HEAD


=======
>>>>>>> origin/master
           Column(
             children: [
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
<<<<<<< HEAD
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("ORDER RECEIVED"),
                              content: Text("Successfull order ! Check your mail for Order Details"),
                              actions: <Widget>[
                                TextButton (
                                  child: Text("OK"),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => ConfirmedScreen()));
                                  },
                                ),
                              ],
                            );
                          },
                        );

=======
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ConfirmedScreen()));
>>>>>>> origin/master

                      } ,
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
                ),
             ],
           ),

          SizedBox(
            height: 20,
          ),

        ],



      ),

    );
  }
}




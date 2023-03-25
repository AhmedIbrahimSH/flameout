import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'ConfirmedScreen.dart';
import 'MainScreen.dart';




class ConfirmedScreen extends StatelessWidget {




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
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 40,
              ),
              child: Image(image: NetworkImage(
                'https://icons.veryicon.com/png/o/miscellaneous/t3-linear-icon/confirm-16.png',

              ),
                width: 200,
                height: 150,

              ),
            ),
          ],
        ),

          SizedBox(
            height: 100,
          ),

          Text(
            'Your Order has been received',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),

          ),

          SizedBox(
            height: 50,
          ),
          Text(
            '2 to 3 days until order is totally done',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),

          ),

          SizedBox(
            height: 150,
          ),


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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainScreen()));

                    } ,
                    child: Text(
                      'Return back to home',
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




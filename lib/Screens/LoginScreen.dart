import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
          ),
          title: Text("FlameOut"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notification_important)),
            IconButton(onPressed: MenuPressed, icon:Icon(Icons.question_mark_rounded)),

          ],
          backgroundColor: Colors.redAccent,

        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  children: [

                    Center(
                      child: Text(
                        'Fire extinguisher recycler' ,
                        style: TextStyle(

                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'email',
                        prefixIcon: Icon(
                            Icons.email_outlined
                        ),
                        suffixIcon: Icon(
                          Icons.person,
                        ),

                      ),



                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                          )
                      ),
                    ),
                    SizedBox(

                      height: 50,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color : Colors.redAccent,
                        borderRadius: BorderRadius.circular(15),

                      ),
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: MaterialButton(
                        onPressed: (){} ,
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color : Colors.white,
                          ),
                        ),


                      ),

                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Text(
                      'No account ? ' ,
                      style: TextStyle(

                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),

                    SizedBox(
                      height : 15 ,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color : Colors.redAccent,
                        borderRadius: BorderRadius.circular(15),

                      ),
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: MaterialButton(
                        onPressed: (){} ,
                        child: Text(
                          'Register a new account ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color : Colors.white,
                          ),
                        ),


                      ),

                    ),

                  ]
              ),
            ),
          ),
        )


    );


  }
}



void MenuPressed(){

  print("hello");

}

void ChangeLanguage(){

}

import 'package:flameout/Screens/LoginScreen.dart';
import 'package:flameout/Screens/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flameout/Screens/LoginScreen.dart';

class RegisterScreen extends StatelessWidget {

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
          backgroundColor: Colors.red,

        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          labelText: 'Name',
                          prefixIcon: Icon(
                            Icons.account_circle_rounded
                          ),

                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Location',
                        prefixIcon: Icon(
                            Icons.location_on,
                        ),

                      ),
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'email',
                        prefixIcon: Icon(
                            Icons.email_outlined
                        ),


                      ),



                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,

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
                        onPressed: (){
<<<<<<< HEAD

=======
                          InsertIntoDatabase(
                            email : emailController.text,
                            name : nameController.text,
                            password: passwordController.text,
                          ).then((value) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MainScreen()));
                          });
>>>>>>> origin/master
                        } ,
                        child: Text(
                          'Submit',
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

                    SizedBox(
                      height : 15 ,
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

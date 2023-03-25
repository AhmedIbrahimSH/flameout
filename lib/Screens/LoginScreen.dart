import 'package:flameout/Screens/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
late Database mydatabase;

class _LoginScreenState extends State<LoginScreen> {
  // This widget is the root of your application.
  bool _obscureText = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CreateDatabase();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("FlameOut"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notification_important)),

          ],
          backgroundColor: Colors.red,

        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  children: [

                    Center(
                      child: Text(
                        'Fire Extinguisher Recycler' ,
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
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
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
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => RegisterScreen()));
                        } ,
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





void CreateDatabase() async{
    mydatabase = await openDatabase(
        'myDB',
        version : 1,
      onCreate : (database,version) async {
        print('databasecreated');

        await database.execute('CREATE TABLE user (email TEXT PRIMARY KEY , name TEXT , password TEXT)').then((value){
            print('databaseexecuted');

          });
        await database.execute('CREATE TABLE order (id TEXT PRIMARY KEY , number INTEGER , name TEXT)').then((value){
          print('seconddatabaseexecuted');

        });
      print('finished');

        },
      onOpen: (database){

      }
    );
}

Future InsertIntoDatabase( {
  required String email,
  required String name,
  required String password,

})

async {
  try {
    return await mydatabase.transaction((txn) async {
      await txn.rawInsert(
        'INSERT INTO user(email, name, password) VALUES ($email, $name , $password)',
        ['example.com', 'ahmed', '123456'],
      );
      print('INSERTED SUCCESSFULLY');
    });
  } catch (e) {
    print('Error inserting data into database: $e');
    // Handle the error here, such as displaying an error message to the user
  }
}


void GetFromDatabase(){

}

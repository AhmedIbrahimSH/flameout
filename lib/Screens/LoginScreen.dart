import 'package:flameout/Screens/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'FaqPage.dart';
import 'MainScreen.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}
late Database mydatabase;

class _LoginScreenState extends State<LoginScreen> {
  // This widget is the root of your application.
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<Database> _openDatabase() async {
    // Get a path to the location for storing the database
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'myDB.db');

    // Open the database or create it if it doesn't exist
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Create the 'users' table
        await db.execute('CREATE TABLE users ('
            'email TEXT PRIMARY KEY, '
            'password TEXT, '
            'name TEXT'
            ')');

        // Create the 'clients' table
        await db.execute('CREATE TABLE clients ('
            'id INTEGER PRIMARY KEY, '
            'name TEXT, '
            'num_of_extinguishers INTEGER, '
            'cost INTEGER'
            ')');
      },
    );

    return database;
  }

  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    createDatabase();
    insertUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: Icon(
              Icons.chevron_left_outlined,
            ),
          ),
          title: Text("FlameOut"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FaqPage()));
            }, icon:Icon(Icons.question_mark_rounded)),

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
                      controller: _emailController,
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
                controller: _passwordController ,
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
                        color : Colors.red,
                        borderRadius: BorderRadius.circular(15),

                      ),
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: MaterialButton(
                        onPressed: () async {
                          // Get the email and password entered by the user
                          String email = _emailController.text.trim();
                          String password = _passwordController.text.trim();

                          // Open the database
                          Database database = await _openDatabase();

                          // Check if the user with the given email and password exists in the database
                          List<Map<String, dynamic>> result = await database.rawQuery(
                            'SELECT * FROM users WHERE email = ? AND password = ?',
                            [email, password],
                          );

                          if (result.length > 0) {
                            // Navigate to the MainScreen widget if the login is successful
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => MainScreen()),
                            );
                          } else {
                            // Display an error message if the login fails
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Error'),
                                  content: Text('Incorrect email or password.'),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('OK'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }

                          // Close the database
                          await database.close();
                        },
                        child: Text(
                            'Login' ,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      )
                      ,

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





Future<Database> createDatabase() async {
  // Get a path to the location for storing the database
  String databasePath = await getDatabasesPath();
  String path = join(databasePath, 'myDB.db');

  // Open the database or create it if it doesn't exist
  Database database = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      // Create the 'users' table
      await db.execute('CREATE TABLE users ('
          'email TEXT PRIMARY KEY, '
          'password TEXT, '
          'name TEXT'
          ')');

      // Create the 'clients' table
      await db.execute('CREATE TABLE clients ('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'num_of_extinguishers INTEGER, '
          'cost INTEGER'
          ')');
    },
  );

  return database;
}

Future<void> insertUser() async {
  // Open the database
  Database database = await createDatabase();

  // Insert a new user into the 'users' table
  await database.insert(
    'users',
    {
      'email': 'ahmed@example.com',
      'password': 'mypass12345',
      'name': 'Ahmed',
    },
    conflictAlgorithm: ConflictAlgorithm.replace,
  );

  // Close the database
  await database.close();
}


void GetFromDatabase(){

}

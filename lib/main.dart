import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo,
              width: 1.5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo,
              width: 1.5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          labelStyle: TextStyle(
            color: Colors.indigo,
            fontFamily: "Merriweather-Black",
            fontWeight: FontWeight.bold,
          ),
          helperStyle: TextStyle(
            color: Colors.indigo,
            fontFamily: "Merriweather-Black",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailCtrlr = TextEditingController();
  final TextEditingController firstNameCtrlr = TextEditingController();
  final TextEditingController lastNameCtrlr = TextEditingController();
  final TextEditingController phoneNumberCtrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Sign Up",
          style: TextStyle(
            fontFamily: "Merriweather-Black",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFFE1FCFF),
                Color(0xFF81F2FD),
                Color(0xFF81F2FD),
                Color(0xFF81F2FD),
              ],
            ),
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 180.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(
                            color: Colors.indigo,
                            width: 3.0,
                          ),
                          right: BorderSide(
                            color: Colors.indigo,
                            width: 3.0,
                          ),
                          left: BorderSide(
                            color: Colors.indigo,
                            width: 3.0,
                          ),
                          bottom: BorderSide(
                            color: Colors.indigo,
                            width: 3.0,
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 160.0,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      labelText: "Email Address",
                      helperText: "Your email address",
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.contacts,
                        color: Colors.black,
                      ),
                      labelText: "First Name",
                      helperText: "Your first name",
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.contacts,
                        color: Colors.black,
                      ),
                      labelText: "Last Name",
                      helperText: "Your Last Name",
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.call,
                        color: Colors.black,
                      ),
                      prefixText: "+94",
                      prefixStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      labelText: "Telephone Number",
                      helperText: "Your Telephone number",
                    ),
                    maxLines: 1,
                  ),
                  //const SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//on Tuesday

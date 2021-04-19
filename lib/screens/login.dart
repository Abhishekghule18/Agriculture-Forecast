import 'package:agri/screens/homepage.dart';
import 'package:agri/screens/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String email, password;
  bool isLoading = false;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    //main widget
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Stack(
          children: [
            // BackgroundImage(
            //   image: 'assets/images/Bg.png',
            // ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/agri.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          // Image.asset('assets/agri.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Form(
                      key: _formKey,
                      child: Container(
                        padding: EdgeInsets.all(21),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextFormField(
                              controller: _emailController,
                              decoration: new InputDecoration(
                                labelText: "Enter Email",
                                fillColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 2.0, 20.0, 2.0),
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Email cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (val) {
                                email = val;
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: new InputDecoration(
                                labelText: "Password",
                                fillColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 2.0, 20.0, 2.0),
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(),
                                ),
                                //fillColor: Colors.green
                              ),
                              // ignore: missing_return
                              validator: (String value) {
                                if (value.trim().isEmpty) {
                                  return 'Password is required';
                                }
                              },
                              onSaved: (val) {
                                password = val;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.green[900],
                                ),
                                child: FlatButton(
                                  onPressed: () {
                                    if (isLoading) {
                                      return;
                                    }
                                    if (_emailController.text.isEmpty ||
                                        _passwordController.text.isEmpty) {
                                      // ignore: deprecated_member_use
                                      _scaffoldKey.currentState.showSnackBar(
                                          SnackBar(
                                              content: Text(
                                                  "Please Fill all fileds")));
                                      return;
                                    }
                                    // login(_emailController.text,
                                    //     _passwordController.text);
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MyHomePage()));
                                    setState(() {
                                      isLoading = true;
                                    });
                                  },
                                  child: isLoading
                                      ? Visibility(
                                          visible: isLoading,
                                          child: Container(
                                              child:
                                                  CircularProgressIndicator()))
                                      : Text(
                                          "Continue",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.green[900],
                                ),
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                null));
                                  },
                                  child: Text(
                                    "Forgot Password",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            GestureDetector(
                              onTap: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignUpScreen())),
                              child: Container(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Don't have an account ?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "SIGNUP",
                                        style: TextStyle(
                                          color: Colors.green[900],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

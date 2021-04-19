import 'package:agri/screens/homepage.dart';
import 'package:agri/screens/login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'sign_up_screen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String email, password, username;
  bool isLoading = false;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _usernameController = new TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  var reg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  // Future userSignUp() async {
  //   setState(() {
  //     isLoading = true;
  //   });

  //   String username = _usernameController.text;
  //   String email = _emailController.text;
  //   String password = _passwordController.text;
  //   // SERVER SIGNUP API URL
  //   var url = 'https://vrdesignsolutions.com/khushi_apps/Login/login';
  //   // Store all data with Param Name.
  //   var data = {'username': username, 'email': email, 'password': password};
  //   // Starting Web API Call.
  //   var response = await http.post(url, body: json.encode(data));
  //   // Getting Server response into variable.
  //   var message = jsonDecode(response.body);
  // }

  @override
  Widget build(BuildContext context) {
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
                          // Image.asset('assets/images/mello_logo.png'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(21),
                      decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage("assets/images/signupBG.png"),
                        //   fit: BoxFit.cover,
                        // ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.1),
                            TextFormField(
                              controller: _usernameController,
                              decoration: new InputDecoration(
                                labelText: "Username",
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
                                  return "Username cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                              onSaved: (val) {
                                username = val;
                              },
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              controller: _emailController,
                              decoration: new InputDecoration(
                                labelText: "Email",
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
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                              onSaved: (val) {
                                email = val;
                              },
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
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
                                  // ignore: deprecated_member_use
                                  _scaffoldKey.currentState.showSnackBar(
                                      SnackBar(
                                          content:
                                              Text("Password is Required")));
                                }
                              },
                              keyboardType: TextInputType.visiblePassword,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                              controller: _passwordController,
                              onSaved: (val) {
                                password = val;
                              },
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black,
                                ),
                                child: FlatButton(
                                  onPressed: () {
                                    if (isLoading) {
                                      return;
                                    }
                                    if (_usernameController.text.isEmpty) {
                                      // ignore: deprecated_member_use
                                      _scaffoldKey.currentState.showSnackBar(
                                          SnackBar(
                                              content:
                                                  Text("Please Enter Name")));
                                      return;
                                    }
                                    if (!reg.hasMatch(_emailController.text)) {
                                      // ignore: deprecated_member_use
                                      _scaffoldKey.currentState.showSnackBar(
                                          SnackBar(
                                              content:
                                                  Text("Enter Valid Email")));
                                      return;
                                    }
                                    if (_passwordController.text.isEmpty) {
                                      // ignore: deprecated_member_use
                                      _scaffoldKey.currentState.showSnackBar(
                                          SnackBar(
                                              content: Text(
                                                  "Password should be min 6 characters")));
                                      return;
                                    }
                                    // signup(
                                    //     _usernameController.text,
                                    //     _emailController.text,
                                    //     _passwordController.text);
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MyHomePage()));
                                  },
                                  child: isLoading
                                      ? Visibility(
                                          visible: isLoading,
                                          child: Container(
                                              child:
                                                  CircularProgressIndicator()))
                                      : Text(
                                          "Signup",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginScreen())),
                              child: Container(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Already have an account ?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "LOGIN",
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

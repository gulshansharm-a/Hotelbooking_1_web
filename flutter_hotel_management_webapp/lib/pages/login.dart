import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              _screenSize.width * 0.05,
              _screenSize.height * 0.01,
              _screenSize.width * 0.05,
              _screenSize.height * 0.01),
          child: Column(
            children: [
              _titleBar(_screenSize),
              Container(
                height: _screenSize.height * 0.8,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sign in to your account",
                        style: TextStyle(
                          fontFamily: 'Satoshi Variable',
                          fontSize: _screenSize.width * 0.024,
                          fontWeight: FontWeight.w700,
                          height: 1.19,
                          letterSpacing: 0,
                        ),
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.012,
                      ),
                      Container(
                        width: _screenSize.width * 0.3,
                        child: AutoSizeText(
                          "Easyatra provides easy hotel bookings with great discounts and offers",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.012,
                      ),
                      Container(
                        width: _screenSize.width*0.3,
                        padding: EdgeInsets.all(_screenSize.width * 0.02),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 0,
                            color: Color(0xFF000000).withOpacity(0.1),
                          )
                        ]),
                        child: Column(children: [
                          _input(_screenSize, inputTitle: "Email Address"),
                          SizedBox(
                            height: _screenSize.height * 0.012,
                          ),
                          _input(_screenSize, inputTitle: "Create Password"),
                          Container(
                            width: _screenSize.width * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: false, onChanged: (e) {}),
                                    Text("Remember me")
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text("Forgot password?")),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.012,
                          ),
                          TextButton(
                            style: ButtonStyle(backgroundColor:
                                MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.white;
                              else
                                return Colors.blue;
                            }), foregroundColor:
                                MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.blue;
                              else
                                return Colors.white;
                            })),
                            onPressed: () {},
                            child: Container(
                                padding:
                                    EdgeInsets.all(_screenSize.width * 0.007),
                                width: _screenSize.width * 0.3,
                                child: Center(
                                  child: Text("Sign In",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: _screenSize.width * 0.013,
                                        fontWeight: FontWeight.w600,
                                        height: 1.75,
                                        letterSpacing: -0.2,
                                      )),
                                )),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.012,
                          ),
                          TextButton(
                            style: ButtonStyle(backgroundColor:
                                MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.blue;
                              else
                                return Colors.blueGrey.shade50;
                            }), foregroundColor:
                                MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.white;
                              else
                                return Colors.black;
                            })),
                            onPressed: () {},
                            child: Container(
                                padding:
                                    EdgeInsets.all(_screenSize.width * 0.007),
                                width: _screenSize.width * 0.3,
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/google.png"),
                                    SizedBox(
                                      width: _screenSize.width * 0.01,
                                    ),
                                    Text("Sign In with Google",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: _screenSize.width * 0.013,
                                          fontWeight: FontWeight.w600,
                                          height: 1.75,
                                          letterSpacing: -0.2,
                                        )),
                                  ],
                                ))),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.012,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Do you have an account? ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: _screenSize.width * 0.01,
                                    height: 1.571,
                                  )),
                              Text(
                                "Create Account",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: _screenSize.width * 0.01,
                                    height: 1.571,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                        ]),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _input(Size _screenSize, {required String inputTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: _screenSize.width * 0.3,
          height: _screenSize.height * 0.06,
          decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              hintText: inputTitle,
            ),
          ),
        ),
        SizedBox(
          height: _screenSize.height * 0.02,
        )
      ],
    );
  }

  Column _titleBar(Size _screenSize) {
    ButtonStyle mainActionButtonsStyle = ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Set the border radius here
          ),
        ),
        backgroundColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) return Color(0xFF3D99EE);
          return Colors.transparent;
        }),
        foregroundColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) return Colors.white;
          return Color(0xFF5E5E5E);
        }));
    TextStyle txtStyle = TextStyle(
      fontSize: _screenSize.width * 0.013,
      fontWeight: FontWeight.w400,
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 50,
              child: Image.asset('/images/Easyatra.png'),
            ),
            Container(
              width: _screenSize.width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.fromLTRB(6, 9, 6, 9),
                        child: Text('Host your property', style: txtStyle),
                      ),
                      style: mainActionButtonsStyle),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(6, 9, 6, 9),
                      child: Text('Log In', style: txtStyle),
                    ),
                    style: mainActionButtonsStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(6, 9, 6, 9),
                      child: Text('Sign Up', style: txtStyle),
                    ),
                    style: mainActionButtonsStyle,
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: _screenSize.height * 0.03,
        )
      ],
    );
  }
}


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              _screenSize.width * 0.05,
              _screenSize.height * 0.01,
              _screenSize.width * 0.05,
              _screenSize.height * 0.01),
          child: Column(
            children: [
              _titleBar(_screenSize),
              Container(
                height: _screenSize.height * 0.8,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Create Free Account",
                        style: TextStyle(
                          fontFamily: 'Satoshi Variable',
                          fontSize: _screenSize.width * 0.024,
                          fontWeight: FontWeight.w700,
                          height: 1.19,
                          letterSpacing: 0,
                        ),
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.012,
                      ),
                      Container(
                        width: _screenSize.width * 0.3,
                        child: AutoSizeText(
                          "Easyatra provides easy hotel bookings with great discounts and offers",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.012,
                      ),
                      Container(
                        width: _screenSize.width*0.3,
                        padding: EdgeInsets.all(_screenSize.width * 0.02),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 0,
                            color: Color(0xFF000000).withOpacity(0.1),
                          )
                        ]),
                        child: Column(children: [
                          _input(_screenSize, inputTitle: "First & Last Name"),
                          SizedBox(
                            height: _screenSize.height * 0.012,
                          ),
                          
                          _input(_screenSize, inputTitle: "Email Address"),
                          SizedBox(
                            height: _screenSize.height * 0.012,
                          ),
                          
                          _input(_screenSize, inputTitle: "Create Password"),
                          Container(
                            width: _screenSize.width * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: false, onChanged: (e) {}),
                                    Text("I agree with"),
                                    TextButton(
                                    onPressed: () {},
                                    child: Text("Terms & Conditions")),
                                    Text("of Easyatra"),
                                  ],
                                ),
                                
                              ],
                            ),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.012,
                          ),
                          TextButton(
                            style: ButtonStyle(backgroundColor:
                                MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.white;
                              else
                                return Colors.blue;
                            }), foregroundColor:
                                MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.blue;
                              else
                                return Colors.white;
                            })),
                            onPressed: () {},
                            child: Container(
                                padding:
                                    EdgeInsets.all(_screenSize.width * 0.007),
                                width: _screenSize.width * 0.3,
                                child: Center(
                                  child: Text("Sign Un",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: _screenSize.width * 0.013,
                                        fontWeight: FontWeight.w600,
                                        height: 1.75,
                                        letterSpacing: -0.2,
                                      )),
                                )),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.012,
                          ),
                          TextButton(
                            style: ButtonStyle(backgroundColor:
                                MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.blue;
                              else
                                return Colors.blueGrey.shade50;
                            }), foregroundColor:
                                MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.white;
                              else
                                return Colors.black;
                            })),
                            onPressed: () {},
                            child: Container(
                                padding:
                                    EdgeInsets.all(_screenSize.width * 0.007),
                                width: _screenSize.width * 0.3,
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/google.png"),
                                    SizedBox(
                                      width: _screenSize.width * 0.01,
                                    ),
                                    Text("Sign Un with Google",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: _screenSize.width * 0.013,
                                          fontWeight: FontWeight.w600,
                                          height: 1.75,
                                          letterSpacing: -0.2,
                                        )),
                                  ],
                                ))),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.012,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't hava an accoount?",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: _screenSize.width * 0.01,
                                    height: 1.571,
                                  )),
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: _screenSize.width * 0.01,
                                    height: 1.571,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                        ]),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _input(Size _screenSize, {required String inputTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: _screenSize.width * 0.3,
          height: _screenSize.height * 0.06,
          decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              hintText: inputTitle,
            ),
          ),
        ),
        SizedBox(
          height: _screenSize.height * 0.02,
        )
      ],
    );
  }

  Column _titleBar(Size _screenSize) {
    ButtonStyle mainActionButtonsStyle = ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Set the border radius here
          ),
        ),
        backgroundColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) return Color(0xFF3D99EE);
          return Colors.transparent;
        }),
        foregroundColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) return Colors.white;
          return Color(0xFF5E5E5E);
        }));
    TextStyle txtStyle = TextStyle(
      fontSize: _screenSize.width * 0.013,
      fontWeight: FontWeight.w400,
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 50,
              child: Image.asset('/images/Easyatra.png'),
            ),
            Container(
              width: _screenSize.width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.fromLTRB(6, 9, 6, 9),
                        child: Text('Host your property', style: txtStyle),
                      ),
                      style: mainActionButtonsStyle),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(6, 9, 6, 9),
                      child: Text('Log In', style: txtStyle),
                    ),
                    style: mainActionButtonsStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(6, 9, 6, 9),
                      child: Text('Sign Up', style: txtStyle),
                    ),
                    style: mainActionButtonsStyle,
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: _screenSize.height * 0.03,
        )
      ],
    );
  }
}

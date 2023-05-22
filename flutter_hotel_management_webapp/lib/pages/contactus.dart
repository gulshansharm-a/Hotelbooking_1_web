import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
                  height: _screenSize.height * 0.9,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: _screenSize.width * 0.3,
                          child: AutoSizeText(
                            "Contact us",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blue,
  fontFamily: 'Satoshi Variable',
  fontSize: _screenSize.width*0.012,
  fontWeight: FontWeight.w700,
  height: 1.5, // equivalent to line-height: 24px
  letterSpacing: 0.0,
  
),
                          ),
                        ),
                        SizedBox(
                          height: _screenSize.height * 0.012,
                        ),
                        Text(
                          "Get in touch",
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
                            "we'd love to hear from you. Please fill out this form",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: _screenSize.height * 0.012,
                        ),
                        Container(
                          width: _screenSize.width * 0.3,
                          padding: EdgeInsets.all(_screenSize.width * 0.02),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 0,
                              color: Color(0xFF000000).withOpacity(0.1),
                            )
                          ]),
                          child: Column(children: [
                            Container(
                              width: _screenSize.width * 0.3,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _input(_screenSize,
                                      inputTitle: "Alan",
                                      width: _screenSize.width * 0.128,
                                      title: "first name"),
                                  SizedBox(
                                    height: _screenSize.height * 0.012,
                                  ),
                                  _input(_screenSize,
                                      inputTitle: "Skywalker",
                                      width: _screenSize.width * 0.128,
                                      title: "last name"),
                                  SizedBox(
                                    height: _screenSize.height * 0.012,
                                  ),
                                ],
                              ),
                            ),
                            _input(_screenSize,
                                inputTitle: "Skywalker@gmail.com",
                                width: _screenSize.width * 0.3,
                                title: "Email"),
                            SizedBox(
                              height: _screenSize.height * 0.012,
                            ),
                            _input(_screenSize,
                                inputTitle: "+91 555 000-0000",
                                width: _screenSize.width * 0.3,
                                title: "Phone number"),
                                SizedBox(
                              height: _screenSize.height * 0.012,
                            ),
                            TextField(
                              minLines: 5,
                                    maxLines: null,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                      hintText: 'message',
                                      border: OutlineInputBorder(),
                                    ),
                                    onChanged: (value) {
                                      print('Text changed: $value');
                                    },
                                  ),
                                SizedBox(
                              height: _screenSize.height * 0.012,
                            ),
                            Container(
                              width: _screenSize.width * 0.3,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(value: false, onChanged: (e) {}),
                                      Text("You agree to our friendly"),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text("privacy policy")),
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
                                    child: Text("Send message",
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
                          ]),
                        )
                      ]),)
                ),
              
            ],
          ),
        ),
      ),
    );
  }

  Column _input(Size _screenSize,
      {required String inputTitle,
      required double width,
      required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: _screenSize.width * 0.012,
            fontWeight: FontWeight.w500,
            height: 1.25, // equivalent to line-height: 20px
            letterSpacing: 0.0,
          ),
        ),
        Container(
          width: width,
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

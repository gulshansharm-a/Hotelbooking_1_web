import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotel_management_webapp/utilityWidgets/review_and_book.dart';

class ShowUtility extends StatefulWidget {
  const ShowUtility({super.key});

  @override
  State<ShowUtility> createState() => _ShowUtilityState();
}

class _ShowUtilityState extends State<ShowUtility> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              _screenSize.width * 0.05, 20, _screenSize.width * 0.05, 20),
          child: Column(
            children: [
              // pricepage(_screenSize),
              // _alertMessage(_screenSize)
              
            ],
          ),
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  Container _alertMessage(Size _screenSize) {
    return Container(
              width: _screenSize.width * 0.4,
              padding: EdgeInsets.all(_screenSize.width * 0.02),
              child: Column(children: [
                Image.asset("/images/alert.png"),
                SizedBox(
                  height: _screenSize.height * 0.015,
                ),
                Text(
                  "Something went wrong...",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: _screenSize.width * 0.015,
                    fontWeight: FontWeight.w600,
                    height: 1.33, // equivalent to line-height: 24px
                    letterSpacing: 0.0,
                  ),
                ),
                SizedBox(
                  height: _screenSize.height * 0.015,
                ),
                AutoSizeText(
                  "We had some trouble loading this page. Please refresh the page to try again or get in touch if the problem sticks around!",
                  style: TextStyle(
                    fontFamily: 'Satoshi Variable',
                    fontSize: _screenSize.width * 0.012,
                    fontWeight: FontWeight.w400,
                    height: 1.25, // equivalent to line-height: 20px
                    letterSpacing: 0.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: _screenSize.height * 0.015,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateColor.resolveWith((states) {
                                  if (states.contains(MaterialState.hovered))
                                    return Colors.blue;
                                  return Colors.white;
                                }),
                                foregroundColor:
                                    MaterialStateColor.resolveWith((states) {
                                  if (states.contains(MaterialState.hovered))
                                    return Colors.white;
                                  return Colors.blue;
                                }),
                                shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Set the desired border radius
                                  ),
                                )),
                            onPressed: () {},
                            child: Container(
                              padding:
                                  EdgeInsets.all(_screenSize.width * 0.01),
                              width: _screenSize.width * 0.15,
                              child: Center(
                                  child: Text(
                                "Contact support",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.25, // equivalent to line-height: 20px
                                  letterSpacing: 0.0,
                                ),
                              )),
                            )),
                        TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Set the desired border radius
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateColor.resolveWith((states) {
                                  if (states.contains(MaterialState.hovered))
                                    return Colors.white;
                                  return Colors.blue;
                                }),
                                foregroundColor:
                                    MaterialStateColor.resolveWith((states) {
                                  if (states.contains(MaterialState.hovered))
                                    return Colors.blue;
                                  return Colors.white;
                                })),
                            onPressed: () {},
                            child: Container(
                                padding:
                                    EdgeInsets.all(_screenSize.width * 0.01),
                                width: _screenSize.width * 0.15,
                                child: Center(
                                  child: Text(
                                    "Refresh Page",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      height:
                                          1.25, // equivalent to line-height: 20px
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                )))
                      ]),
                ),
              ]),
            );
  }

  // Container pricepage(Size _screenSize) {
  //   return ;
  // }

  
  
}

class PricePage extends StatefulWidget {
  const PricePage({super.key});

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(_screenSize.width * 0.03),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _priceDetails(_screenSize),
          SizedBox(
            height: _screenSize.height * 0.03,
          ),
          _paymentMethods(_screenSize),
        ],
      ),
      )
    );
  }

  Container _paymentMethods(Size _screenSize) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
      ),
      padding: EdgeInsets.all(_screenSize.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(_screenSize.width * 0.005),
            child: Text(
              "Payment Method",
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.015,
                fontWeight: FontWeight.w700,
                height: 1.33, // line-height equivalent: 57px / 42px = 1.33
                letterSpacing:
                    -0.408, // -0.40799999237060547px rounded to three decimal places
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(_screenSize.width * 0.02),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Radio(
                    value: false,
                    groupValue: false,
                    onChanged: (e) {},
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.blue),
                  ),
                  Text(
                    "Debit / Credit card",
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: _screenSize.width * 0.013,
                      fontWeight: FontWeight.w500,
                      height:
                          1.36, // line-height equivalent: 49px / 36px = 1.36
                      letterSpacing:
                          -0.408, // -0.40799999237060547px rounded to three decimal places
                    ),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      _screenSize.width * 0.04,
                      _screenSize.width * 0.01,
                      _screenSize.width * 0.08,
                      _screenSize.width * 0.01),
                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF0F0F0),
                      ),
                      padding: EdgeInsets.fromLTRB(
                          _screenSize.width * 0.01,
                          _screenSize.width * 0.005,
                          _screenSize.width * 0.1,
                          _screenSize.width * 0.005),
                      child: DropdownButton(
                        dropdownColor: Color(0xFFF0F0F0),
                        underline: Container(),
                        value: 1,
                        items: [
                          DropdownMenuItem(
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Color(0xFFF0F0F0)),
                              width: _screenSize.width * 0.4,
                              child: Text("card 1",
                                  style: TextStyle(
                                    fontFamily: 'Satoshi Variable',
                                    fontSize: _screenSize.width * 0.013,
                                    fontWeight: FontWeight.w600,
                                    height:
                                        1.36, // line-height equivalent: 49px / 36px = 1.36
                                    letterSpacing:
                                        -0.408, // -0.40799999237060547px rounded to three decimal places
                                  )),
                            ),
                            value: 1,
                          )
                        ],
                        onChanged: (e) {},
                      ),
                    ),
                  )),
              Row(
                children: [
                  Radio(
                    value: false,
                    groupValue: false,
                    onChanged: (e) {},
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.blue),
                  ),
                  Text(
                    "Net Banking",
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: _screenSize.width * 0.013,
                      fontWeight: FontWeight.w500,
                      height:
                          1.36, // line-height equivalent: 49px / 36px = 1.36
                      letterSpacing:
                          -0.408, // -0.40799999237060547px rounded to three decimal places
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: false,
                    groupValue: false,
                    onChanged: (e) {},
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.blue),
                  ),
                  Text(
                    "UPI ( PhonePay, Amazon Pay Google Pay etc)",
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: _screenSize.width * 0.013,
                      fontWeight: FontWeight.w500,
                      height:
                          1.36, // line-height equivalent: 49px / 36px = 1.36
                      letterSpacing:
                          -0.408, // -0.40799999237060547px rounded to three decimal places
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: false,
                    groupValue: false,
                    onChanged: (e) {},
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.blue),
                  ),
                  Text(
                    "Wallets",
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: _screenSize.width * 0.013,
                      fontWeight: FontWeight.w500,
                      height:
                          1.36, // line-height equivalent: 49px / 36px = 1.36
                      letterSpacing:
                          -0.408, // -0.40799999237060547px rounded to three decimal places
                    ),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }


  Container _priceDetails(Size _screenSize) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
      ),
      padding: EdgeInsets.all(_screenSize.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(_screenSize.width * 0.005),
            child: Text(
              "Price Details",
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.015,
                fontWeight: FontWeight.w700,
                height: 1.33, // line-height equivalent: 57px / 42px = 1.33
                letterSpacing:
                    -0.408, // -0.40799999237060547px rounded to three decimal places
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(_screenSize.width * 0.005),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1 room x 1 night",
                      style: TextStyle(
                        fontFamily: 'Satoshi Variable',
                        fontSize: _screenSize.width * 0.015,
                        fontWeight: FontWeight.w500,
                        height:
                            1.33, // line-height equivalent: 57px / 42px = 1.33
                        letterSpacing:
                            -0.408, // -0.40799999237060547px rounded to three decimal places
                      ),
                    ),
                    Text(
                      "₹14,800",
                      style: TextStyle(
                        fontFamily: 'Satoshi Variable',
                        fontSize: _screenSize.width * 0.015,
                        fontWeight: FontWeight.w500,
                        height:
                            1.33, // line-height equivalent: 57px / 42px = 1.33
                        letterSpacing:
                            -0.408, // -0.40799999237060547px rounded to three decimal places
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Taxes",
                      style: TextStyle(
                        fontFamily: 'Satoshi Variable',
                        fontSize: _screenSize.width * 0.015,
                        fontWeight: FontWeight.w500,
                        height:
                            1.33, // line-height equivalent: 57px / 42px = 1.33
                        letterSpacing:
                            -0.408, // -0.40799999237060547px rounded to three decimal places
                      ),
                    ),
                    Text(
                      "₹1,800",
                      style: TextStyle(
                        fontFamily: 'Satoshi Variable',
                        fontSize: _screenSize.width * 0.015,
                        fontWeight: FontWeight.w500,
                        height:
                            1.33, // line-height equivalent: 57px / 42px = 1.33
                        letterSpacing:
                            -0.408, // -0.40799999237060547px rounded to three decimal places
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(_screenSize.width * 0.005),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontFamily: 'Satoshi Variable',
                    fontSize: _screenSize.width * 0.014,
                    fontWeight: FontWeight.w700,
                    height: 1.33, // line-height equivalent: 57px / 42px = 1.33
                    letterSpacing:
                        -0.408, // -0.40799999237060547px rounded to three decimal places
                  ),
                ),
                Text(
                  "₹16,600",
                  style: TextStyle(
                    fontFamily: 'Satoshi Variable',
                    fontSize: _screenSize.width * 0.014,
                    fontWeight: FontWeight.w700,
                    height: 1.33, // line-height equivalent: 57px / 42px = 1.33
                    letterSpacing:
                        -0.408, // -0.40799999237060547px rounded to three decimal places
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

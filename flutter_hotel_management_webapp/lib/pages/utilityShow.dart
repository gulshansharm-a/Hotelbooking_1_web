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
              ReviewBook(),
              Container(
                padding: EdgeInsets.all(_screenSize.width * 0.03),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                                height:
                                    1.33, // line-height equivalent: 57px / 42px = 1.33
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    height:
                                        1.33, // line-height equivalent: 57px / 42px = 1.33
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
                                    height:
                                        1.33, // line-height equivalent: 57px / 42px = 1.33
                                    letterSpacing:
                                        -0.408, // -0.40799999237060547px rounded to three decimal places
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: _screenSize.height * 0.03,
                    ),
                    Container(
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
                                height:
                                    1.33, // line-height equivalent: 57px / 42px = 1.33
                                letterSpacing:
                                    -0.408, // -0.40799999237060547px rounded to three decimal places
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(_screenSize.width * 0.02),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        groupValue: false,
                                        onChanged: (e) {},
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.blue),
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
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFF0F0F0)),
                                                  width:
                                                      _screenSize.width * 0.4,
                                                  child: Text("card 1",
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'Satoshi Variable',
                                                        fontSize: _screenSize.width*0.013,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.blue),
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
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.blue),
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
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.blue),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

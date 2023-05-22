import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:flutter_hotel_management_webapp/pages/utilityShow.dart';

class ReviewBook extends StatefulWidget {
  const ReviewBook({super.key});

  @override
  State<ReviewBook> createState() => _ReviewBookState();
}

class _ReviewBookState extends State<ReviewBook> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(_screenSize.width*0.03),
      decoration: BoxDecoration(color: Color(0xFFFAFAFA), borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Review and Book",
            style: TextStyle(
              fontFamily: 'Satoshi Variable',
              fontSize: _screenSize.width * 0.02,
              fontWeight: FontWeight.w700,
              height: 1.333,
              letterSpacing: -0.40799999237060547,
            ),
          ),
          SizedBox(height: _screenSize.height*0.02,),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.all(_screenSize.width*0.03),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Room 1",
                        style: TextStyle(
                          fontFamily: 'Satoshi Variable',
                          fontSize: _screenSize.width * 0.015,
                          fontWeight: FontWeight.w700,
                          height: 1.333,
                          letterSpacing: -0.40799999237060547,
                        ),
                      ),
                      Text(": 2 Adults, 1 Queen Bed, Non-smoking",
                          style: TextStyle(
                            fontFamily: 'Satoshi Variable',
                            fontWeight: FontWeight.w500,
                            fontSize: _screenSize.width * 0.015,
                            height: 1.35,
                            letterSpacing: -0.9,
                          )),
                    ],
                  ),
                  SizedBox(height: _screenSize.height*0.01,),
                  Row(
                    children: [
                      Text(
                        "Free Parking",
                        style: TextStyle(
                          fontFamily: 'Satoshi Variable',
                          fontSize: _screenSize.width * 0.011,
                          fontWeight: FontWeight.w500,
                          height: 1.346,
                          letterSpacing: -0.9034286141395569,
                          color: Color(0xFF12B347)
                        ),
                      ),
                      SizedBox(width: _screenSize.width*0.006,),
                      Text(
                        "Free Wifi",
                        style: TextStyle(
                          color: Color(0xFF12B347),
                          fontFamily: 'Satoshi Variable',
                          fontSize: _screenSize.width * 0.011,
                          fontWeight: FontWeight.w500,
                          height: 1.346,
                          letterSpacing: -0.9034286141395569,
                        ),
                      ),
                    ],
                  ),
                  _input(_screenSize, inputTitle: "First name"),
                  _input(_screenSize, inputTitle: "Last name"),
                  _input(_screenSize, inputTitle: "Mobile number"),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (e) {}),
                      Text("Receive text alerts about this booking",
                          style: TextStyle(
                            color: Color(0xFF12B347),
                            fontFamily: 'Satoshi Variable',
                            fontSize: _screenSize.width * 0.012,
                            fontWeight: FontWeight.w500,
                            height: 1.333,
                            letterSpacing: -0.40799999237060547,
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: _screenSize.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _roomCard(_screenSize),
                  SizedBox(
                    height: _screenSize.height * 0.01,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        shape:  MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0), // Set the desired border radius
    ),),
                        backgroundColor:
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
                      onPressed: () {
                       showPlatformDialog(context: context, builder: (_) => _pricePop());
                      },
                      child: Container(
                        height: _screenSize.height*0.07,
                        width: _screenSize.width * 0.285,
                        child: Center(child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Satoshi Variable',
                            fontSize: _screenSize.width * 0.02,
                            fontWeight: FontWeight.w700,
                            height: 1.361,
                            letterSpacing: -0.8015938997268677,
                          ),
                        ),)
                      ))
                ],
              )
            ]),
          )
        ],
      ),
    );
  }

  AlertDialog _pricePop () {
    return AlertDialog(
      content: PricePage(),
    );
  }

  Column _input(Size _screenSize, {required String inputTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(inputTitle,
            style: TextStyle(
              fontFamily: 'Satoshi Variable',
              fontSize: _screenSize.width * 0.012,
              fontWeight: FontWeight.w500,
              height: 1.364,
              letterSpacing: -0.9034286141395569,
            )),
        SizedBox(
          height: _screenSize.height * 0.01,
        ),
        Container(
          width: _screenSize.width * 0.4,
          height: _screenSize.height * 0.06,
          decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            
            decoration: InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 10)),
          ),
        ),
        SizedBox(
          height: _screenSize.height * 0.02,
        )
      ],
    );
  }

  Container _roomCard(Size _screenSize) {
    return Container(
      padding: EdgeInsets.only(
          bottom: _screenSize.width * 0.025,
          right: _screenSize.width * 0.05,
          left: 0),
      child: Container(
        width: _screenSize.width * 0.3,
        padding: EdgeInsets.only(
            left: _screenSize.width * 0.02,
            right: _screenSize.width * 0.02,
            top: _screenSize.width * 0.02,
            bottom: _screenSize.width * 0.02),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(_screenSize.width * 0.01)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _headingText(_screenSize),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _roomDetails(_screenSize),
                _priceDetails(_screenSize),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column _headingText(Size _screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Luxe Double Room",
          style: TextStyle(
            fontSize: _screenSize.width * 0.016,
            decoration: TextDecoration.none,
            color: Colors.black,
            fontFamily: 'Satoshi Variable',

            fontWeight: FontWeight.w700,
            height: 43 / 32, // line-height / font-size
            letterSpacing: -0.9034286141395569,
          ),
        ),
        Row(
          children: [
            Icon(Icons.group_outlined,
                color: Colors.black, size: _screenSize.width * 0.02),
            SizedBox(
              width: _screenSize.width * 0.004,
            ),
            Text(
              "For 2 Adults",
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: _screenSize.width * 0.014,
                fontWeight: FontWeight.w400,
                height: 35 / 26, // line-height / font-size
                letterSpacing: -0.8015938997268677,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container _priceDetails(Size _screenSize) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Starting from',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.none,

                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.012,
                fontWeight: FontWeight.w700,
                height: 32 /
                    24, // Line height calculated by dividing line height by font size
                letterSpacing: -0.408,
              )),
          Text('₹ 4,433',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.012,
                fontWeight: FontWeight.w500,
                height: 32 /
                    24, // Line height calculated by dividing line height by font size
                letterSpacing: -0.802,
              )),
          Text('₹ 3,493',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.02,
                fontWeight: FontWeight.w700,
                height: 48 /
                    35, // Line height calculated by dividing line height by font size
                letterSpacing: -0.802,
              )),
          Text(
            '+ ₹ 594 taxes and fee',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
              fontFamily: 'Satoshi Variable',
              fontSize: _screenSize.width * 0.01,
              fontWeight: FontWeight.w500,
              height: 27 /
                  20, // Line height calculated by dividing line height by font size
              letterSpacing: -0.802,
            ),
          ),
          Text("Per night",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.01,
                fontWeight: FontWeight.w500,
                height: 27 /
                    20, // Line height calculated by dividing line height by font size
                letterSpacing: -0.802,
              )),
        ],
      ),
    );
  }

  Column _roomDetails(Size _screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: _screenSize.width * 0.004,
            ),
            SizedBox(
              width: _screenSize.width * 0.004,
            ),
            Text(
              "Room Only",
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: _screenSize.width * 0.014,
                fontWeight: FontWeight.w400,
                height: 35 / 26, // line-height / font-size
                letterSpacing: -0.8015938997268677,
              ),
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: _screenSize.width * 0.004,
            ),
            SizedBox(
              width: _screenSize.width * 0.004,
            ),
            Text(
              "Non Refundable",
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: _screenSize.width * 0.014,
                fontWeight: FontWeight.w400,
                height: 35 / 26, // line-height / font-size
                letterSpacing: -0.8015938997268677,
              ),
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: _screenSize.width * 0.004,
            ),
            SizedBox(
              width: _screenSize.width * 0.004,
            ),
            Text(
              "Breakfast",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.014,
                fontWeight: FontWeight.w400,
                height: 35 / 26, // line-height / font-size
                letterSpacing: -0.8015938997268677,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

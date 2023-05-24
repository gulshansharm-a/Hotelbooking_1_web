import 'package:flutter/material.dart';
import 'package:flutter_hotel_management_webapp/model/hotel.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HotelSearchPage extends StatefulWidget {
  const HotelSearchPage({super.key});

  @override
  State<HotelSearchPage> createState() => _HotelSearchPageState();
}

class _HotelSearchPageState extends State<HotelSearchPage> {
  Color _primaryColor = Color(0xFFE1F3FF);
  final List<String> _filterByList = [
    "BreakFast",
    "BreakFast",
    "BreakFast",
    "BreakFast",
    "BreakFast",
    "BreakFast",
  ];

  final List<String> _SortByList = [
    "High to low",
    "Low to high",
    "High customer ratings",
    "New",
    "ole",
  ];

  final List<String> _propertyClassList = [
    "1 Star",
    "2 Star",
    "3 Star",
    "4 Star",
    "5 Star",
  ];
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            _screenSize.width * 0.05,
            _screenSize.height * 0.01,
            _screenSize.width * 0.05,
            _screenSize.height * 0.01),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _titleBar(_screenSize),
              _searchFunctions(_screenSize),
              _locationRoute(_screenSize),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _filterOptions(_screenSize),
                      _filterHotels(_screenSize),
                    ],
                  ),
                ],
              ),
              _pageFooter(_screenSize),
            ],
          ),
        ),
      ),
    );
  }

  Stack _pageFooter(Size _screenSize) {
    return Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("images/BG1.jpg"),
                Container(
                  width: _screenSize.width * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              height: 50,
                              child: Image.asset('/images/Easyatra.png'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Easyatra provides good deals on'),
                                Text('hotel booking and provides you'),
                                Text('great and awesome offers.'),
                              ],
                            ),
                            SizedBox(
                              height: _screenSize.height * 0.02,
                            ),
                            Container(
                              width: _screenSize.width * 0.11,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(width: _screenSize.width*0.01,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("/images/1.png"))),),
                                  Image.asset('/images/2.png'),
                                  Image.asset('/images/3.png'),
                                  Image.asset('/images/4.png'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: _screenSize.height * 0.3,
                        width: _screenSize.width * 0.1,
                        child: Image.asset("images/playstore.png"),
                      ),
                      Container(
                        height: _screenSize.height * 0.3,
                        width: _screenSize.width * 0.1,
                        child: Image.asset("images/appstore.png"),
                      ),
                      Container(
                        height: 180,
                        padding: EdgeInsets.fromLTRB(
                            0,
                            _screenSize.height * 0.015,
                            0,
                            _screenSize.height * 0.015),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Help',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text('Customer Support'),
                            Text('Booking Details'),
                            Text('Terms & Conditions'),
                            Text('Privacy Policy'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
  }

  InkWell _hotelDetail(Hotel hotel, Size _screenSize) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/detail');
      },
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 2), // Shadow offset in x and y direction
                blurRadius: 4, // Spread radius of the shadow
                spreadRadius: 0, // Additional spreading of the shadow
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: _screenSize.width * 0.65,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: _screenSize.height * 0.4,
                        width: _screenSize.width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            image: DecorationImage(
                                image: NetworkImage(hotel.hotelimages ?? ""),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: _screenSize.width * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Container(
                          width: _screenSize.width * 0.3,
                          child: _hotelData(hotel, _screenSize),
                        ),
                      )
                    ]),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Starting from',
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Satoshi Variable',
                          fontSize: _screenSize.width * 0.012,
                          fontWeight: FontWeight.w700,
                          height: 32 /
                              24, // Line height calculated by dividing line height by font size
                          letterSpacing: -0.408,
                        )),
                    Text('₹ 4,433',
                        style: TextStyle(
                          fontFamily: 'Satoshi Variable',
                          fontSize: _screenSize.width * 0.012,
                          fontWeight: FontWeight.w500,
                          height: 32 /
                              24, // Line height calculated by dividing line height by font size
                          letterSpacing: -0.802,
                        )),
                    Text('₹ 3,493',
                        style: TextStyle(
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
                          fontFamily: 'Satoshi Variable',
                          fontSize: _screenSize.width * 0.01,
                          fontWeight: FontWeight.w500,
                          height: 27 /
                              20, // Line height calculated by dividing line height by font size
                          letterSpacing: -0.802,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: _screenSize.height * 0.05,
        )
      ],
    ),
    );
  }

  Column _hotelData(Hotel hotel, Size _screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          hotel.name,
          style: TextStyle(
            fontFamily: 'Satoshi Variable',
            fontSize: _screenSize.width * 0.02,
            fontWeight: FontWeight.w700,
            height: 43 /
                32, // Line height calculated by dividing line height by font size
            letterSpacing: -0.408,
          ),
        ),
        Text(hotel.place,
            style: TextStyle(
              fontFamily: 'Satoshi Variable',
              fontSize: _screenSize.width * 0.013,
              fontWeight: FontWeight.w400,
              height: 32 /
                  24, // Line height calculated by dividing line height by font size
              letterSpacing: -0.408,
            )),
        Container(
          width: _screenSize.width * 0.23,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.star,
                      color: Colors.yellow, size: _screenSize.width * 0.02),
                  Icon(Icons.star,
                      color: Colors.yellow, size: _screenSize.width * 0.02),
                  Icon(Icons.star,
                      color: Colors.yellow, size: _screenSize.width * 0.02),
                  Icon(Icons.star,
                      color: Colors.yellow, size: _screenSize.width * 0.02),
                  Icon(Icons.star_border,
                      color: Colors.yellow, size: _screenSize.width * 0.02)
                ],
              ),
              SizedBox(
                width: _screenSize.width * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFFDA4167),
                ),
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                child: Text((hotel.rating as String) + "/5",
                    style: TextStyle(
                        fontFamily: 'Satoshi Variable',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        height: 24 /
                            18, // Line height calculated by dividing line height by font size
                        letterSpacing: -0.903,
                        color: Colors.white)),
              ),
              SizedBox(
                width: _screenSize.width * 0.01,
              ),
              Text("Guest ratings",
                  style: TextStyle(
                    fontFamily: 'Satoshi Variable',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 24 /
                        18, // Line height calculated by dividing line height by font size
                    letterSpacing: -0.903,
                  ))
            ],
          ),
        ),
        Container(
          width: _screenSize.width * 0.4,
          child: AutoSizeText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
            maxFontSize: 20,
            style: TextStyle(
              fontSize: _screenSize.width * 0.012,
            ),
          ),
        ),
      ],
    );
  }

  Container _filterOptions(Size _screenSize) {
    return Container(
      width: _screenSize.width * 0.22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _searchSection(_screenSize),
          Container(
            // height: _screenSize.height * 0.47,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _filterBy(_screenSize),
                  _sortBy(_screenSize),
                  _propertyClass(_screenSize),
                ]),
          ),
        ],
      ),
    );
  }

  Column _propertyClass(Size _screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: _screenSize.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(left: _screenSize.width * 0.006),
          child: Text('Property Class',
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.0145,
                fontWeight: FontWeight.w600,
                height: 1.4210526315789473,
                letterSpacing: -0.40799999237060547,
              )),
        ),
        SizedBox(height: _screenSize.height * 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: _propertyClassList.map((e) {
            return Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Row(
                children: [
                  Checkbox(
                    onChanged: (e) {},
                    value: false,
                  ),
                  Text(
                    e,
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: _screenSize.width * 0.0117,
                      fontWeight: FontWeight.w400,
                      height:
                          1.3333333333333333, // To convert line-height (32px) to height
                      letterSpacing:
                          -0.408, // Letter spacing in Flutter uses logical pixels
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Column _sortBy(Size _screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: _screenSize.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(left: _screenSize.width * 0.006),
          child: Text('Sort By',
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.0145,
                fontWeight: FontWeight.w600,
                height: 1.4210526315789473,
                letterSpacing: -0.40799999237060547,
              )),
        ),
        SizedBox(height: _screenSize.height * 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: _SortByList.map((e) {
            return Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Row(
                children: [
                  Checkbox(
                    onChanged: (e) {},
                    value: false,
                  ),
                  Text(
                    e,
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: _screenSize.width * 0.0117,
                      fontWeight: FontWeight.w400,
                      height:
                          1.3333333333333333, // To convert line-height (32px) to height
                      letterSpacing:
                          -0.408, // Letter spacing in Flutter uses logical pixels
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Column _filterBy(Size _screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: _screenSize.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(left: _screenSize.width * 0.006),
          child: Text('Filter By',
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.0145,
                fontWeight: FontWeight.w600,
                height: 1.4210526315789473,
                letterSpacing: -0.40799999237060547,
              )),
        ),
        SizedBox(height: _screenSize.height * 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: _filterByList.map((e) {
            return Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Row(
                children: [
                  Checkbox(
                    onChanged: (e) {},
                    value: false,
                  ),
                  Text(
                    e,
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: _screenSize.width * 0.0117,
                      fontWeight: FontWeight.w400,
                      height:
                          1.3333333333333333, // To convert line-height (32px) to height
                      letterSpacing:
                          -0.408, // Letter spacing in Flutter uses logical pixels
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Column _searchSection(Size _screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search Property by name',
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height:
                    1.4210526315789473, // To convert line-height (38px) to height
                letterSpacing:
                    -0.408, // Letter spacing in Flutter uses logical pixels
              ),
            ),
            SizedBox(
              height: _screenSize.height * 0.01,
            ),
            Container(
              width: _screenSize.width * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue, width: 0.5)),
              child: TextField(
                cursorHeight: 20,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 5)),
              ),
            )
          ],
        ),
        SizedBox(
          height: _screenSize.height * 0.035,
        ),
        Container(
          width: _screenSize.width * 0.25,
          child: Divider(
            height: 1,
            thickness: 0.5,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Container _filterHotels(Size _screenSize) {
    int selectedType = 1;
    return Container(
      width: _screenSize.width * 0.68,
      child: Column(children: [
        __dropDown(_screenSize, selectedType),
        SizedBox(
          height: _screenSize.height * 0.05,
        ),
        Container(
          // height: _screenSize.height * 0.45,
          child: Container(
            padding: EdgeInsets.fromLTRB(
                _screenSize.width * 0.03, 0, _screenSize.width * 0.03, 0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              _hotelDetail(Hotel(
  id: 1,
  name: "Grand Hotel",
  place: "New York",
  rating: 4.5,
  popularamenities: "Swimming pool, Gym, Spa",
  hotelimages: "hotel_image.jpg",
  availableroomtype: ["Single", "Double", "Suite"],
  description: "The Grand Hotel offers luxurious accommodations...",
  cancellationpolicy: "Free cancellation up to 24 hours before check-in.",
  rulesandregulations: "No smoking, No pets allowed.",
  reviews: [
    {"user": "John", "rating": 4.8, "comment": "Great hotel with excellent service."},
    {"user": "Sarah", "rating": 4.2, "comment": "Comfortable rooms and friendly staff."}
  ],
), _screenSize)
            ]),
          ),
        ),
      ]),
    );
  }

  Column __dropDown(Size _screenSize, int selectedType) {
    return Column(
      children: [
        Container(
          width: _screenSize.width * 0.68,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(_screenSize.width * 0.02, 0, 0, 0),
                child: Text("234 Properties",
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 49 /
                          36, // Line height calculated by dividing line height by font size
                      letterSpacing: -0.408,
                    )),
              ),
              Container(
                width: _screenSize.width * 0.3,
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(20),
                  value: selectedType,
                  items: [
                    DropdownMenuItem(
                      value: 1,
                      child: Container(
                        child: Text(
                          "Latest",
                          style: TextStyle(
                            fontFamily: 'Satoshi Variable',
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            height: 49 /
                                36, // Line height calculated by dividing line height by font size
                            letterSpacing: -0.408,
                          ),
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Container(
                        child: Text(
                          "Recommended",
                          style: TextStyle(
                            fontFamily: 'Satoshi Variable',
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            height: 49 /
                                36, // Line height calculated by dividing line height by font size
                            letterSpacing: -0.408,
                          ),
                        ),
                      ),
                    ),
                  ],
                  onChanged: (e) {},
                  underline: Container(),
                  isExpanded: true,
                  padding: EdgeInsets.only(
                      left: _screenSize.width * 0.02,
                      right: _screenSize.width * 0.02),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Column _locationRoute(Size _screenSize) {
    return Column(
      children: [
        Row(
          children: [
            Text("Home",
                style: TextStyle(
                  fontFamily: 'Satoshi Variable',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 35 / 26,
                  letterSpacing: -0.40799999237060547,
                )),
            SizedBox(
              width: _screenSize.width * 0.005,
            ),
            Text(">",
                style: TextStyle(
                  fontFamily: 'Satoshi Variable',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 35 / 26,
                  letterSpacing: -0.40799999237060547,
                )),
            SizedBox(
              width: _screenSize.width * 0.005,
            ),
            Text("Delhi",
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Satoshi Variable',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 35 / 26,
                  letterSpacing: -0.40799999237060547,
                )),
          ],
        ),
        SizedBox(
          height: _screenSize.height * 0.03,
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
                      onPressed: () {
                        setState() {
                          _primaryColor = Colors.red;
                        }
                      },
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

  Column _searchFunctions(Size _screenSize) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10)),
              width: _screenSize.width * 0.27,
              child: ListTile(
                leading: Icon(
                  Icons.location_on_outlined,
                  color: Color(0xFF222221),
                ),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter a city or hotel',
                      border: InputBorder.none),
                ),
              ),
            ),
            // SizedBox(width: _screenSize.width*0.007,),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10)),
                  width: _screenSize.width * 0.15,
                  child: ListTile(
                    leading: Icon(
                      Icons.calendar_month,
                      size: 20,
                      color: Color(0xFF222221),
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                          hintText: 'Thu 16 Nov', border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10)),
                  width: _screenSize.width * 0.15,
                  child: ListTile(
                    leading: Icon(
                      Icons.calendar_month,
                      size: 20,
                      color: Colors.transparent,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                          hintText: 'Fri 17 Nov', border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(width: _screenSize.width*0.007,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10)),
              width: _screenSize.width * 0.27,
              child: ListTile(
                leading: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xFF222221),
                ),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: '1 room, 2 guests', border: InputBorder.none),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: _primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              width: _screenSize.width * 0.04,
              child: TextButton(
                onPressed: () {},
                child: Container(
                  height: 60,
                  child: Icon(
                    Icons.search,
                    color: Color(0xFF222221),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: _screenSize.height * 0.03,
        )
      ],
    );
  }
}

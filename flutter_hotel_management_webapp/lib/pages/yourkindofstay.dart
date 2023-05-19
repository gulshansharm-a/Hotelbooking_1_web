import 'package:flutter/material.dart';
import 'package:flutter_hotel_management_webapp/model/hotel.dart';

class YourKindOfStay extends StatefulWidget {
  const YourKindOfStay({super.key});

  @override
  State<YourKindOfStay> createState() => _YourKindOfStayState();
}

class _YourKindOfStayState extends State<YourKindOfStay> {
  final List<Hotel> _hotelsList = [
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
  ];
  final List<Hotel> _trendinghotelsList = [
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1528105817752-5c47696eef04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1484&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1528105817752-5c47696eef04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1484&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1528105817752-5c47696eef04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1484&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1528105817752-5c47696eef04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1484&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1528105817752-5c47696eef04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1484&q=80"),
    Hotel(
        name: "Sunset Inn",
        cost: "3,493",
        place: "Delhi",
        rating: "4.5",
        coverPage:
            "https://images.unsplash.com/photo-1528105817752-5c47696eef04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1484&q=80"),
  ];
  final Color _primaryColor = Color(0xFFE1F3FF);
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                _screenSize.width * 0.05, 20, _screenSize.width * 0.05, 10),
            child: _titleBar(_screenSize),
          ),
          _searchBanner(_screenSize),
          _listHeading(_screenSize),
          _lastMinuteHotels(_screenSize),
          _trendingHotels(_screenSize),
          _moreAccomodations(_screenSize),
          _pageFooter(_screenSize),
        ],
      )),
    );
  }

  Padding _pageFooter(Size _screenSize) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
                _screenSize.width * 0.05, 20, _screenSize.width * 0.05, 10),
      child: Stack(
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
                          Text(
                            'Easyatra provides good deals on',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: _screenSize.width * 0.01,
                              fontWeight: FontWeight.w400,
                              height: 1.3, // equivalent to line-height in CSS
                              letterSpacing:
                                  0, // equivalent to letter-spacing in CSS
                            ),
                          ),
                          Text(
                            'hotel booking and provides you',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: _screenSize.width * 0.01,
                              fontWeight: FontWeight.w400,
                              height: 1.3, // equivalent to line-height in CSS
                              letterSpacing:
                                  0, // equivalent to letter-spacing in CSS
                            ),
                          ),
                          Text(
                            'great and awesome offers.',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: _screenSize.width * 0.01,
                              fontWeight: FontWeight.w400,
                              height: 1.3, // equivalent to line-height in CSS
                              letterSpacing:
                                  0, // equivalent to letter-spacing in CSS
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.02,
                      ),
                      Container(
                        width: _screenSize.width * 0.11,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('/images/1.png'),
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
                  padding: EdgeInsets.fromLTRB(0, _screenSize.height * 0.015, 0,
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
                      Text(
                        'Customer Support',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: _screenSize.width * 0.01,
                          fontWeight: FontWeight.w400,
                          height: 1.3, // equivalent to line-height in CSS
                          letterSpacing: 0, // equivalent to letter-spacing in CSS
                        ),
                      ),
                      Text(
                        'Booking Details',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: _screenSize.width * 0.01,
                          fontWeight: FontWeight.w400,
                          height: 1.3, // equivalent to line-height in CSS
                          letterSpacing: 0, // equivalent to letter-spacing in CSS
                        ),
                      ),
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: _screenSize.width * 0.01,
                          fontWeight: FontWeight.w400,
                          height: 1.3, // equivalent to line-height in CSS
                          letterSpacing: 0, // equivalent to letter-spacing in CSS
                        ),
                      ),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: _screenSize.width * 0.01,
                          fontWeight: FontWeight.w400,
                          height: 1.3, // equivalent to line-height in CSS
                          letterSpacing: 0, // equivalent to letter-spacing in CSS
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Padding _moreAccomodations(Size _screenSize) {
    return Padding(
              padding: EdgeInsets.fromLTRB(
                _screenSize.width * 0.05, 20, _screenSize.width * 0.05, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Popular Locations",
                      style: TextStyle(
                        fontFamily: 'Satoshi Variable',
                        fontSize: _screenSize.width * 0.02,
                        fontWeight: FontWeight.w700,
                        height: 1.357,
                        letterSpacing: -0.1850000023841858,
                      )),
                  SizedBox(
                    height: _screenSize.height * 0.03,
                  ),
                  Container(
                    height: _screenSize.height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            _moreAccomodationCard(_screenSize),
                            _moreAccomodationCard(_screenSize),
                            _moreAccomodationCard(_screenSize),
                            _moreAccomodationCard(_screenSize),
                            _moreAccomodationCard(_screenSize),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }

  Container _moreAccomodationCard(Size _screenSize) {
    return Container(
      height: _screenSize.height * 0.48,
      width: _screenSize.width * 0.25,
      padding: EdgeInsets.fromLTRB(0, 0, _screenSize.width * 0.016, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: _screenSize.height * 0.43,
            width: (_screenSize.width * 0.945) / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(_screenSize.width * 0.02),
            ),
          ),
          Text(
            "Hotels",
            style: TextStyle(
              fontFamily: 'Satoshi Variable',
              fontSize: _screenSize.width * 0.016,
              fontWeight: FontWeight.w500,
              height: 1.33,
              letterSpacing: -1.319239854812622,
            ),
          ),
        ],
      ),
    );
  }


  Column _trendingHotels(Size _screenSize) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(_screenSize.width * 0.05, 20, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trending Hotel Desitinations",
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      height: 57 / 42,
                      letterSpacing: -0.9034286141395569,
                    ),
                  ),
                  Text(
                    "Get best deals on hotels",
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 30 / 22,
                      letterSpacing: -0.9034286141395569,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: _screenSize.height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: _trendinghotelsList.map((e) {
                  return Row(
                    children: [
                      Container(
                        height: 550,
                        width: _screenSize.width * 0.267,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        e.coverPage ?? "",
                                      ),
                                      fit: BoxFit.cover)),
                              height: 450,
                            ),
                            SizedBox(
                              height: _screenSize.height * 0.02,
                            ),
                            Text(
                              e.place,
                              style: TextStyle(
                                fontFamily: 'Satoshi Variable',
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                                height: 49 /
                                    36, // Calculate line height by dividing line-height by font-size
                                letterSpacing: -0.40799999237060547,
                              ),
                            ),
                            Text(
                              "More than 143+ Booked hotels us with in Delhi",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: _screenSize.width * 0.05,
                      )
                    ],
                  );
                }).toList()),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding _lastMinuteHotelCard(Size _screenSize, Hotel hotel) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, _screenSize.height * 0.02,
          _screenSize.width * 0.01, _screenSize.width * 0.03),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_screenSize.width * 0.01),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, 2),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
            border: Border.all(color: Colors.black, width: 0.2)),
        height: _screenSize.height * 0.4,
        width: _screenSize.width * 0.43,
        child: Row(
          children: [
            Container(
              width: _screenSize.width * 0.2,
              height: _screenSize.height * 0.4,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"),
                      fit: BoxFit.cover)),
            ),
            Column(
              children: [
                Container(
                  width: _screenSize.width * 0.22,
                  child: Padding(
                    padding: EdgeInsets.all(_screenSize.width * 0.01),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: _screenSize.height * 0.35,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    hotel.name,
                                    style: TextStyle(
                                      fontFamily: 'Satoshi Variable',
                                      fontSize: _screenSize.width * 0.018,
                                      fontWeight: FontWeight.w600,
                                      height: 1.357,
                                      letterSpacing: -0.40799999237060547,
                                    ),
                                  ),
                                  Text(hotel.place,
                                      style: TextStyle(
                                        fontFamily: 'Satoshi Variable',
                                        fontSize: _screenSize.width * 0.012,
                                        fontWeight: FontWeight.w500,
                                        height: 1.333,
                                        letterSpacing: -0.40799999237060547,
                                      ))
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xFFDA4167),
                                ),
                                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                child: Text(hotel.rating + "/5",
                                    style: TextStyle(
                                        fontFamily: 'Satoshi Variable',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        height: 24 /
                                            18, // Line height calculated by dividing line height by font size
                                        letterSpacing: -0.903,
                                        color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                        _priceDetails(_screenSize),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
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

  Container _lastMinuteHotels(Size _screenSize) {
    return Container(
        padding: EdgeInsets.fromLTRB(
            _screenSize.width * 0.05, 10, _screenSize.width * 0.05, 10),
        child: Column(
          children: [
            Row(
              children: [
                _lastMinuteHotelCard(_screenSize, _hotelsList[0]),
                _lastMinuteHotelCard(_screenSize, _hotelsList[1]),
              ],
            ),
            Row(
              children: [
                _lastMinuteHotelCard(_screenSize, _hotelsList[0]),
                _lastMinuteHotelCard(_screenSize, _hotelsList[0]),
              ],
            ),
            Row(
              children: [
                _lastMinuteHotelCard(_screenSize, _hotelsList[0]),
                _lastMinuteHotelCard(_screenSize, _hotelsList[0]),
              ],
            ),
          ],
        ));
  }

  Column _listHeading(Size _screenSize) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              _screenSize.width * 0.05, 20, _screenSize.width * 0.05, 10),
          child: Column(children: [
            Container(
              height: _screenSize.height * 0.15,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Last minute hotel near you",
                          style: TextStyle(
                            fontFamily: 'Satoshi Variable',
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            height: 57 / 42,
                            letterSpacing: -0.9034286141395569,
                          ),
                        ),
                        Text(
                          "Find deals for hotels tonight or upcoming dates",
                          style: TextStyle(
                            fontFamily: 'Satoshi Variable',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 30 / 22,
                            letterSpacing: -0.9034286141395569,
                          ),
                        ),
                      ],
                    ),
                  ]),
            )
          ]),
        ),
        SizedBox(
          height: _screenSize.height * 0.0,
        )
      ],
    );
  }

  Column _searchBanner(Size _screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Color(0xFFF8FAFC),
          height: _screenSize.height * 0.27,
          padding: EdgeInsets.fromLTRB(_screenSize.width * 0.05,
              _screenSize.height * 0.04, _screenSize.width * 0.05, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find perfect Hotels near you',
                  style: TextStyle(
                    fontFamily: 'Satoshi Variable',
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    height: 76 / 56,
                    letterSpacing: -0.1850000023841858,
                  ),
                ),
                _searchFunctions(_screenSize),
              ]),
        ),
      ],
    );
  }

  Column _titleBar(Size _screenSize) {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(6, 9, 6, 9),
                      child: Text('Host your property', style: txtStyle),
                    ),
                    style: ButtonStyle(foregroundColor:
                        MaterialStateColor.resolveWith((states) {
                      return Colors.blue;
                    })),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                    onPressed: () {},
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
          height: _screenSize.height * 0.04,
        )
      ],
    );
  }
}

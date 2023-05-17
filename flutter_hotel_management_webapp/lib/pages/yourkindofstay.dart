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
        ],
      )),
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

  Card _lastMinuteHotelCard(Size _screenSize, Hotel hotel) {
    return Card(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        height: _screenSize.height * 0.4,
        width: _screenSize.width * 0.44,
        child: Row(
          
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: NetworkImage(hotel.coverPage ?? ""),
                        fit: BoxFit.cover)),
                height: _screenSize.height * 0.4,
                width: _screenSize.width * 0.2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(child: Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(hotel.name),
                        Text(hotel.place),
                      ],
                    ),
                    Text(hotel.rating + "/5"),
                  ],
                ),),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(children: [
                      Text("Starting From"),
                    Text(hotel.cost),
                    Text("per night"),
                    ],)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _lastMinuteHotels(Size _screenSize) {
    return Container(
        padding: EdgeInsets.fromLTRB(
            _screenSize.width * 0.05, 20, _screenSize.width * 0.05, 10),
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
          height: _screenSize.height * 0.04,
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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:flutter_hotel_management_webapp/pages/login.dart';
import 'package:flutter_hotel_management_webapp/utilityWidgets/hostproperty.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   Color _primaryColor = Color(0xFFE1F3FF);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              _screenSize.width * 0.05,
              _screenSize.height * 0.01,
              _screenSize.width * 0.05,
              _screenSize.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleBar(_screenSize),
              _mainBanner(_screenSize),
              _searchFunctions(_screenSize),
              _yourKindOfStays(_screenSize),
              _offersSection(_screenSize),
              _popularLocations(_screenSize),
              _pageFooter(_screenSize),
            ],
          ),
        ),
      ),
    );
  }

  Padding _popularLocations(Size _screenSize) {
    return Padding(
      padding: EdgeInsets.only(top: _screenSize.height * 0.05),
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
                    _popularLocationCard(_screenSize),
                    _popularLocationCard(_screenSize),
                    _popularLocationCard(_screenSize),
                    _popularLocationCard(_screenSize),
                    _popularLocationCard(_screenSize),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _popularLocationCard(Size _screenSize) {
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
                      "https://images.unsplash.com/photo-1546412414-e1885259563a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
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

  Padding _offersSection(Size _screenSize) {
    return Padding(
      padding: EdgeInsets.only(top: _screenSize.height * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Offers",
              style: TextStyle(
                fontFamily: 'Satoshi Variable',
                fontSize: _screenSize.width * 0.02,
                fontWeight: FontWeight.w700,
                height: 1.357,
                letterSpacing: -0.1850000023841858,
              )),
          Divider(),
          Container(
            height: _screenSize.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    _offerCard(_screenSize),
                    _offerCard(_screenSize),
                    _offerCard(_screenSize),
                    _offerCard(_screenSize),
                    _offerCard(_screenSize),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    _offerCard(_screenSize),
                    _offerCard(_screenSize),
                    _offerCard(_screenSize),
                    _offerCard(_screenSize),
                    _offerCard(_screenSize),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
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
                onPressed: () {
                   Navigator.of(context).pushNamed('/search');
                },
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
          height: _screenSize.height * 0.07,
        )
      ],
    );
  }

  Padding _offerCard(Size _screenSize) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, _screenSize.height * 0.02,
          _screenSize.width * 0.02, _screenSize.height * 0.02),
      child: Container(
        padding: EdgeInsets.all(_screenSize.width * 0.01),
        width: _screenSize.width * 0.31,
        height: _screenSize.height * 0.251,
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
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: _screenSize.height * 0.16,
                      width: _screenSize.width * 0.08,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(_screenSize.width * 0.01),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1517840901100-8179e982acb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: _screenSize.height * 0.16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("10% Instant savings",
                              style: TextStyle(
                                fontFamily: 'Satoshi Variable',
                                fontSize: _screenSize.width * 0.015,
                                fontWeight: FontWeight.w700,
                                height: 1.357,
                                letterSpacing: -0.40799999237060547,
                              )),
                          Container(
                            height: _screenSize.height * 0.008,
                            width: _screenSize.width * 0.05,
                            color: Colors.orange,
                          ),
                          Container(
                            width: _screenSize.width * 0.2,
                            child: AutoSizeText(
                              "Save more than 10% on booking with Easyatra.Save more than 10% on booking with Easyatra.",
                              style: TextStyle(
                                fontFamily: 'Satoshi Variable',
                                fontSize: _screenSize.width * 0.01,
                                fontWeight: FontWeight.w400,
                                height: 1.375,
                                letterSpacing: -0.40799999237060547,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("T&C's Apply",
                    style: TextStyle(
                      fontFamily: 'Satoshi Variable',
                      fontSize: _screenSize.width * 0.01,
                      fontWeight: FontWeight.w400,
                      height: 1.333,
                      letterSpacing: -0.40799999237060547,
                    )),
                TextButton(
                  child: Text("View Details",
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Satoshi Variable',
                        fontSize: _screenSize.width * 0.012,
                        fontWeight: FontWeight.w700,
                        height: 1.375,
                        letterSpacing: -0.40799999237060547,
                      )),
                  onPressed: () {},
                ),
              ],
            )
          ],
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: _screenSize.width * 0.01,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("/images/1.png"))),
                          ),
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

  Container _yourKindOfStays(Size _screenSize) {
    return Container(
      height: _screenSize.height * 0.42,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your Kind of Stays",
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              _kindOfStayCard(_screenSize, onClick: () {
                Navigator.of(context).pushNamed('/search');
              }, title: "Search Page"),
              _kindOfStayCard(_screenSize, onClick: () {
                Navigator.of(context).pushNamed('/detail');
              }, title: "Detail Page"),
              _kindOfStayCard(_screenSize, onClick: () {
                Navigator.of(context).pushNamed('/yourkindofstay');
              }, title: "Your Stay"),
              _kindOfStayCard(_screenSize, onClick: () {
                Navigator.of(context).pushNamed('/about');
              }, title: "About"),
              _kindOfStayCard(_screenSize, onClick: () {
                Navigator.of(context).pushNamed('/utility');
              }, title: "utility"),
              _kindOfStayCard(_screenSize, onClick: () {
                Navigator.of(context).pushNamed('/bookingstrips');
              }, title: "Booking and Trips"),
              _kindOfStayCard(_screenSize, onClick: () {
                Navigator.of(context).pushNamed('/login');
              }, title: "Login"),
              _kindOfStayCard(_screenSize, onClick: () {
                Navigator.of(context).pushNamed('/signup');
              }, title: "Sign Up"),
              _kindOfStayCard(_screenSize, onClick: () {
                Navigator.of(context).pushNamed('/contactus');
              }, title: "Contact Us"),
            ]),
          ),
          SizedBox(
            height: _screenSize.height * 0.025,
          )
        ],
      ),
    );
  }

  Container _kindOfStayCard(Size _screenSize,
      {void Function()? onClick, String? title}) {
    return Container(
        height: _screenSize.height * 0.3,
        width: _screenSize.width * 0.21,
        padding: EdgeInsets.fromLTRB(0, 0, _screenSize.width * 0.016, 0),
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: _screenSize.height * 0.25,
                width: _screenSize.width * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(_screenSize.width * 0.02),
                ),
              ),
              Text(
                title ?? "Hotel",
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
          onTap: onClick,
        ));
  }

  Column _mainBanner(Size _screenSize) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: _screenSize.width * 0.95,
              height: _screenSize.height * 0.4,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(_screenSize.width * 0.02),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1581609836630-9007630f7a7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: _screenSize.height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All you need is Easyatra",
                      style: TextStyle(
                        color: Color(0xFFFFE297),
                        fontFamily: 'Satoshi Variable',
                        fontSize: _screenSize.width * 0.02,
                        fontWeight: FontWeight.w700,
                        height: 1.35,
                        letterSpacing: -1.319239854812622,
                      )),
                  Text("Find Awesome Stays",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Satoshi Variable',
                        fontSize: _screenSize.width * 0.05,
                        fontWeight: FontWeight.w700,
                        height: 1.35,
                        letterSpacing: -1.319239854812622,
                      ))
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: _screenSize.height * 0.1,
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
                        showPlatformDialog(context: context, builder: (_) => HostProperty());
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(6, 9, 6, 9),
                        child: Text('Host your property', style: txtStyle),
                      ),
                      style: mainActionButtonsStyle),
                  TextButton(
                    onPressed: () {
                      showPlatformDialog(context: context, builder: (_) => Login());
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(6, 9, 6, 9),
                      child: Text('Log In', style: txtStyle),
                    ),
                    style: mainActionButtonsStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      showPlatformDialog(context: context, builder: (_) => SignUp());
                    },
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

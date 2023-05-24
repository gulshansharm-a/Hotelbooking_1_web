import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_hotel_management_webapp/pages/login.dart';
import 'package:flutter_hotel_management_webapp/utilityWidgets/hostproperty.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

 Color _primaryColor = Color(0xFFE1F3FF);

Column commonTitleBar(Size _screenSize) {
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
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );
    return Column(
      children: [
        ResponsiveBuilder(builder: (context, sizingInformation) {
          var loginActions = [
            TextButton(
                onPressed: () {
                  showPlatformDialog(
                      context: context, builder: (_) => HostProperty());
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
          ];
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  child: Image.asset('/images/Easyatra.png'),
                ),
                Container(
                  width: 400,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: loginActions),
                )
              ],
            );
          else
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  child: Image.asset('/images/Easyatra.png'),
                ),
                Container(
                  width: _screenSize.width * 0.3,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: loginActions),
                )
              ],
            );
        }),
        SizedBox(
          height: _screenSize.height * 0.03,
        )
      ],
    );
  }

  Column commonSearchFunctions(Size _screenSize) {
    return Column(
      children: [
        ResponsiveBuilder(builder: (context, screensize) {
          var searchActions = [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10)),
              width: 350,
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
            DeviceScreenType.desktop == screensize.deviceScreenType
                ? SizedBox(
                    width: 15,
                  )
                : SizedBox(
                    height: 15,
                  ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10)),
                  width: 200,
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
                DeviceScreenType.desktop == screensize.deviceScreenType
                    ? SizedBox(
                        width: 0,
                      )
                    : SizedBox(
                        width: 15,
                      ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10)),
                  width: 200,
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
            DeviceScreenType.desktop == screensize.deviceScreenType
                ? SizedBox(
                    width: 15,
                  )
                : SizedBox(
                    height: 15,
                  ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10)),
              width: 350,
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
            DeviceScreenType.desktop == screensize.deviceScreenType
                ? SizedBox(
                    width: 15,
                  )
                : SizedBox(
                    height: 15,
                  ),
            Container(
              decoration: BoxDecoration(
                  color: _primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              width: 60,
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
          ];
          if (screensize.deviceScreenType == DeviceScreenType.desktop) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: searchActions),
            );
          } else {
            return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: searchActions);
          }
        }),
        SizedBox(
          height: _screenSize.height * 0.07,
        )
      ],
    );
  }

  Stack commonPageFooter(Size _screenSize) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset("images/BG1.jpg"),
        Container(
          child: ResponsiveBuilder(
            builder: (context, screensize) {
              var aboutOptions = [
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
                        height: 30,
                      ),
                      Container(
                          width: _screenSize.width * 0.11,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
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
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  child: Image.asset("images/playstore.png"),
                ),
                Container(
                  height: 40,
                  width: 100,
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
              ];
              if (screensize.deviceScreenType == DeviceScreenType.desktop) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(
                      _screenSize.width * 0.1,
                      _screenSize.width * 0.02,
                      _screenSize.width * 0.1,
                      _screenSize.width * 0.02),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: aboutOptions),
                );
              } else {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: aboutOptions);
              }
            },
          ),
        ),
      ],
    );
  }
import 'package:flutter/material.dart';
import 'package:flutter_hotel_management_webapp/model/hotel.dart';
import 'package:flutter_hotel_management_webapp/pages/about.dart';
import 'package:flutter_hotel_management_webapp/pages/contactus.dart';
import 'package:flutter_hotel_management_webapp/pages/home.dart';
import 'package:flutter_hotel_management_webapp/pages/home1.dart';
import 'package:flutter_hotel_management_webapp/pages/hoteldetailpage.dart';
import 'package:flutter_hotel_management_webapp/pages/hotelsearchpage.dart';
import 'package:flutter_hotel_management_webapp/pages/login.dart';
import 'package:flutter_hotel_management_webapp/pages/utilityShow.dart';
import 'package:flutter_hotel_management_webapp/pages/yourkindofstay.dart';
import 'package:flutter_hotel_management_webapp/utilityWidgets/bookingsTrips.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Map<String, Widget Function(BuildContext)> routes = {
    // '/': (context) => HotelDetailPage(),
    '/search': (context) => HotelSearchPage(),
    '/detail': (context) => HotelDetailPage(),
    '/yourkindofstay': (context) => YourKindOfStay(),
    '/about': (context) => About(),
    '/utility': (context) => ShowUtility(),
    '/bookingstrips': (context) => BookingsTrips(),
    '/login': (context) => Login(),
    '/signup': (context) => SignUp(),
    '/contactus': (context) => ContactUs(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: routes,
      home: Home(),
    );
  }
}

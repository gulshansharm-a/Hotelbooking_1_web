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
      body: SingleChildScrollView(child: Padding(
         padding: EdgeInsets.fromLTRB(
            _screenSize.width * 0.05, 20, _screenSize.width * 0.05, 20),
        child: Column(
          children: [
            ReviewBook()
          ],
        ),
      ), scrollDirection: Axis.vertical,),
    );
  }
}
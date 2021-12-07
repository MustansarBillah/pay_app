import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_app/constants/colors.dart';
import 'package:pay_app/resources/bottom_sheet.dart';
import 'package:pay_app/resources/custom_text.dart';
import 'package:pay_app/resources/details_bottom_sheet.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class BookDetailsScreen extends StatefulWidget {
  BookDetailsScreen(
      {Key? key,
      required this.bookName,
      required this.author,
      this.bookLanguages,
      required this.bookIntro,
      required this.bookPages,
      required this.bookPrice,
      required this.rating,
      this.imgUrl})
      : super(key: key);
  final String bookName, author, bookIntro;
  final String? bookLanguages, imgUrl;
  final int bookPages;
  final double bookPrice, rating;
  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.0),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: AppColors.cNavyBlue,
                        ),
                      ),
                    ),
                    TextRaleway(
                      text: "More Books",
                      size: 18,
                      color: AppColors.cNavyBlue,
                    ),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.send_sharp,
                        color: AppColors.cNavyBlue,
                      ),
                    ),
                  ],
                ),
                Image.asset(widget.imgUrl!,
                    width: screenSize.width * 0.60,
                    height: screenSize.height * 0.40,
                    fit: BoxFit.fill),

              ],

            ),
          ),
          SlidingUpPanel(

            color: Colors.transparent,
            panel: DetailsBottomSheet(),
            minHeight: screenSize.height * 0.45,
            maxHeight: screenSize.height * 0.45,

          )
        ],
      ),
    );
  }
}

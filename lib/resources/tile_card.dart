import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_app/constants/colors.dart';
import 'package:pay_app/constants/images.dart';
import 'package:pay_app/constants/lists.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'custom_text.dart';
class TileCard extends StatefulWidget {
  const TileCard({Key? key, required this.imgUrl, required this.bookName, required this.author, this.ratingValue, this.stars}) : super(key: key);
  final String imgUrl;
  final String bookName;
  final String author;
  final double? ratingValue;
  final double? stars;
  @override
  _TileCardState createState() => _TileCardState();
}

class _TileCardState extends State<TileCard> {
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return  Container(
      margin: EdgeInsets.only(bottom: 10),
      height: screenSize.height/8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.imgUrl,
              height: screenSize.height/10,
              width: screenSize.width/7,
              fit: BoxFit.fill,
            ),
            //  SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextRaleway(
                  text: widget.bookName,
                  color: AppColors.cNavyBlue,
                  size: 16,
                ),
                TextSegoe(
                  size: 14,
                  text: widget.author,
                  color: AppColors.cSkyBlue,
                ),
                Container(
                  width: screenSize.width/4,
                  height: 25,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Icon(Icons.star,size: 18,
                      color:  index < widget.stars! ? Colors.yellow: Colors.grey,
                      );
                    },
                  ),
                ),
              ],
            ),
            CircularPercentIndicator(radius: screenSize.height/12,
              lineWidth: 3.0,
              progressColor: AppColors.cYellow,
              percent: widget.ratingValue!,
              backgroundColor: Colors.grey,
              animation: true,
              center: TextSegoe(color:AppColors.cYellow,text: (widget.ratingValue! * 100) .toString() +"%" ,size:17,fontWeight: FontWeight.bold,),
            )
          ],
        ),
      ),
    );
  }
}

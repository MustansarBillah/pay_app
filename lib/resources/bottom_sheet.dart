import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_app/constants/colors.dart';
import 'package:pay_app/resources/custom_button.dart';
import 'package:pay_app/resources/custom_text.dart';
import 'package:pay_app/constants/lists.dart';
import 'package:pay_app/resources/tile_card.dart';

class BottomSheetCon extends StatefulWidget {
  BottomSheetCon({Key? key, this.panelValue=false}) : super(key: key);
  final bool panelValue;
  @override
  _BottomSheetConState createState() => _BottomSheetConState();
}

class _BottomSheetConState extends State<BottomSheetCon> {
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: AppColors.bSheetBlue,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(
              30,
            ),
            topRight: Radius.circular(
              30,
            ),
          )),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                TextRaleway(
                  text: "More Recomended",
                  color: Colors.white,
                  size: 18,
                ),
                Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
                height: widget.panelValue ? screenSize.height/2.5 : screenSize.height / 8,
              child: ListView.builder(
               physics: widget.panelValue ? ClampingScrollPhysics() : NeverScrollableScrollPhysics(),
               shrinkWrap: true,
                padding: EdgeInsets.only(bottom: 0.0),
                scrollDirection: Axis.vertical,
                itemCount: CustomLists.bookList.length,
                itemBuilder: (BuildContext context, int index) {
               return TileCard(bookName: CustomLists.bookList[index]["bookName"],
                 imgUrl: CustomLists.bookList[index]["imgUrl"],
                 author: CustomLists.bookList[index]["author"],
                 ratingValue:CustomLists.bookList[index]["recommendedValue"],
                 stars: CustomLists.bookList[index]["stars"]  ,
               );
              },),
            ),
          ],
        ),
      ),
    );
  }
}

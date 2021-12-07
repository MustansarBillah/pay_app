import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_app/constants/colors.dart';
import 'package:pay_app/resources/custom_text.dart';
class BooksCard extends StatelessWidget {
  const BooksCard({Key? key, required this.imgUrl, required this.bookName, required this.bookAuthor}) : super(key: key);
  final String imgUrl;
  final String bookName;
  final String bookAuthor;
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Container(
      // height: 235,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imgUrl,
            height: screenSize.height*0.20,
            width: screenSize.width*0.30,
            fit: BoxFit.fill,
          ),

          TextSegoe(text: bookAuthor,color: AppColors.cSkyBlue,),
          SizedBox(height: 5,),
          TextRaleway(text: bookName,size: 16,color: AppColors.cNavyBlue,),
        ],
      ),
    );
  }
}

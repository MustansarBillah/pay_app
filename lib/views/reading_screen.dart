import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_app/constants/colors.dart';
import 'package:pay_app/constants/images.dart';
import 'package:pay_app/resources/books_card.dart';
import 'package:pay_app/resources/custom_button.dart';
import 'package:pay_app/resources/custom_text.dart';
import 'package:pay_app/constants/lists.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({Key? key}) : super(key: key);

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Padding(
          padding:
              EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10, top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
              const SizedBox(
                height: 10,
              ),
              TextRaleway(
                text: "Top E-Book Reading",
                color: AppColors.cNavyBlue,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(

                height: screenSize.height*0.40,
                child: Row(
                  children: [
                    Image.asset(
                      AppImages.dayFour,
                      height: screenSize.height*0.33,
                      width: screenSize.width*0.43,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: screenSize.height*0.08,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextRaleway(
                            text: "Day Four",
                            color: AppColors.cNavyBlue,
                            size: 24,
                          ),
                          TextSegoe(
                            fontWeight: FontWeight.bold,
                            size: 16,
                            text: "by Lotz Sarah",
                            color: AppColors.cSkyBlue,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Icon(Icons.star, color: Colors.grey, size: 18),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const TextSegoe(
                            fontWeight: FontWeight.bold,
                            size: 22,
                            text: "\$20.00",
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return AppColors.cRed;
                                },
                              ),
                            ),
                            onPressed: () {},
                            child: TextSegoe(
                              text: "Details",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  TextRaleway(
                    text: "More Recommended",
                    color: AppColors.cNavyBlue,
                    size: 18,
                  ),
                  Icon(
                    Icons.more_horiz_outlined,
                    color:  AppColors.cNavyBlue,
                  ),
                ],
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height*0.33,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: CustomLists.bookList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BooksCard(
                      imgUrl: CustomLists.bookList[index]["imgUrl"],
                      bookAuthor: CustomLists.bookList[index]["author"],
                      bookName: CustomLists.bookList[index]["bookName"],
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

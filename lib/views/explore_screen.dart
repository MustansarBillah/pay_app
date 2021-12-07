import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_app/constants/colors.dart';
import 'package:pay_app/resources/books_card.dart';
import 'package:pay_app/resources/bottom_sheet.dart';
import 'package:pay_app/resources/custom_button.dart';
import 'package:pay_app/resources/custom_text.dart';
import 'package:pay_app/constants/lists.dart';
import 'package:pay_app/views/book_detail_screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool panelOpen = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 25.0, right: 25.0, bottom: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 0.0, bottom: 0.0, left: 10),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Search Books here...",
                  suffixIcon: Icon(Icons.search, color: AppColors.cNavyBlue),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextRaleway(
                text: "Categories",
                color: AppColors.cNavyBlue,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height / 18,
                child: ListView.builder(
                  itemCount: CustomLists.buttonList.length,
                  padding: const EdgeInsets.all(5.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomButton(
                      text: CustomLists.buttonList[index]["bText"],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextRaleway(
                text: "Trending Books",
                color: AppColors.cNavyBlue,
              ),
              Container(
                width: screenSize.width,
                height: 235,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: CustomLists.bookList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  BookDetailsScreen(
                                    imgUrl:CustomLists.bookList[index]["imgUrl"],
                                bookPrice: CustomLists.bookList[index]["price"],
                                rating: CustomLists.bookList[index]["stars"],
                                bookName: CustomLists.bookList[index]
                                    ["bookName"],
                                author: CustomLists.bookList[index]["author"],
                                bookPages: CustomLists.bookList[index]
                                    ["details"]["numberPages"],
                                bookIntro: CustomLists.bookList[index]
                                    ["details"]["bookIntro"],
                                      bookLanguages: CustomLists.bookList[index]
                                      ["details"]["language"],
                              ),
                            ));
                      },
                      child: BooksCard(
                        imgUrl: CustomLists.bookList[index]["imgUrl"],
                        bookAuthor: CustomLists.bookList[index]["author"],
                        bookName: CustomLists.bookList[index]["bookName"],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SlidingUpPanel(
            onPanelOpened: () {
              setState(() {
                panelOpen = true;
              });
            },
            onPanelClosed: () {
              setState(() {
                panelOpen = false;
              });
            },
            color: Colors.transparent,
            panel: BottomSheetCon(
              panelValue: panelOpen,
            ),
            minHeight: screenSize.height / 3,
            maxHeight: screenSize.height / 1.7)
      ],
    );
  }
}

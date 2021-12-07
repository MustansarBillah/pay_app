import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_app/constants/colors.dart';
import 'package:pay_app/constants/images.dart';
import 'package:pay_app/resources/custom_text.dart';

import 'home_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenSize.height * 0.65,
              child: Stack(children: [
                Image.asset(
                  AppImages.bgMain,
                  fit: BoxFit.fill,
                  width: screenSize.width,
                  // height: screenSize.height*0.50,
                ),
                Positioned(
                  top: 50,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Image.asset(
                      AppImages.person,
                      width: screenSize.width * 0.90,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45.0, right: 45),
                    child: Container(
                      width: screenSize.width * 0.72,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(0, -10),
                            blurRadius: 30,
                            spreadRadius: 10),
                      ]),
                      child: TextRaleway(
                        text: "Reading Is \nFascinating",
                        color: AppColors.cNavyBlue,
                        size: 48,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: TextSegoe(
                text: "World best writers, works and write entertaining \nliterature for you",
                color: AppColors.cSkyBlue,
                size: 15,
              ),
            ),
            SizedBox(
              height: screenSize.height / 20,
            ),
            Center(
              child: TextSegoe(
                text:"Lets Start",
                size: 16,
                color: AppColors.cNavyBlue,
                fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: Container(
                  width: 76,
                  height: 76,
                  decoration: BoxDecoration(
                      color: AppColors.cNavyBlue, shape: BoxShape.circle),
                  child: Icon(Icons.arrow_forward_outlined,
                      color: Colors.white, size: 36),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

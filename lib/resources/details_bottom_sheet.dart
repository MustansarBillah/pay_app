import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_app/constants/colors.dart';
class DetailsBottomSheet extends StatefulWidget {
  const DetailsBottomSheet({Key? key}) : super(key: key);

  @override
  _DetailsBottomSheetState createState() => _DetailsBottomSheetState();
}

class _DetailsBottomSheetState extends State<DetailsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Container(
        width: screenSize.width,
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
      );
  }
}

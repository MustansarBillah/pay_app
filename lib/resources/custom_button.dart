import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_app/constants/colors.dart';
import 'package:pay_app/resources/custom_text.dart';

class CustomButton extends StatefulWidget {
  CustomButton({Key? key, required this.text, this.isSelected = false})
      : super(key: key);
  final String text;
  bool isSelected;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 100,
      height: 35,
      child: ElevatedButton(
        onPressed: () {
          setState(() {

            widget.isSelected = !widget.isSelected;
          });
        },
        child: widget.isSelected
            ? TextRaleway(
                text: widget.text,
                size: 14,
                color: Colors.white,
              )
            : TextLato(
                text: widget.text,
                fontWeight: FontWeight.bold,
                color: AppColors.cNavyBlue,
              ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (widget.isSelected == true) return AppColors.cNavyBlue;
              return AppColors.cLightBlue; // Use the component's default.
            },
          ),
        ),
      ),
    );
  }
}

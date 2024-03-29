import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color txtColor;
  final Color bgColor;
  final Color shadowColor;
  //final Function onTap;
  final GestureTapCallback onTap;

  const CustomButton({super.key, required this.text, required this.txtColor, required this.bgColor, required this.shadowColor, required this.onTap}); 


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: PhysicalModel(
        color: Colors.grey.withOpacity(.4),
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgColor,
     ),
          child: Container(
            margin: EdgeInsets.all(14),
            alignment: Alignment.center,
            child: CustomText(
              text: text,
              color: txtColor,
              size: 22, weight: FontWeight.normal,
              //weight: FontWeight.normal, key: null,
            ),
          )
        ),
      ),
    );
  }
}

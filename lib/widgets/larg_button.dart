import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class LargButton extends StatelessWidget {
  final Color? backgroundColor;
  final String? text;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBordered;
  const LargButton({
    Key? key,
    this.backgroundColor: AppColor.mainColor,
    this.textColor,
    this.onTap,
    this.isBordered: false,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 30, left: 30),
        height: 60,
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2,
              color: AppColor.mainColor,
            )),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 35,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

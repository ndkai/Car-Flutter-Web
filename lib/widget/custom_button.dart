import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/helper/custom_font_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;

  const CustomButton({Key? key, required this.onTap, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      hoverColor: kHoverColor,
      onTap: this.onTap,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: this.child ,
      ),
    );
  }
}

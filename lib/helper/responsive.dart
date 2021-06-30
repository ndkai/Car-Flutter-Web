import 'package:flutter/cupertino.dart';

const double mobileSize = 480.0;
const double tabSize = 720.0;
const double webSize = 1300.0;

const EdgeInsets screenPaddingWeb = EdgeInsets.symmetric(vertical: 70, horizontal: 20);
const EdgeInsets screenPaddingTab = EdgeInsets.symmetric(vertical: 40, horizontal: 20);
const EdgeInsets screenPaddingMobile = EdgeInsets.all(20);

class Responsive{

  static Widget? getResponsiveWidget(BuildContext context,{Widget? mobile, Widget? web, Widget? tab}){
    if(isMobile(context) && mobile != null) return mobile;
    if(isTablet(context) && tab != null) return tab;
    if(isWeb(context) && web != null) return web;
  }

  static EdgeInsets getScreenPadding(BuildContext context){
    if(isMobile(context)) return screenPaddingMobile;
    if(isTablet(context)) return screenPaddingTab;
    return screenPaddingWeb;
  }

  static isMobile(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= mobileSize && screenSize.width < tabSize;
  }

  static isTablet(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= tabSize && screenSize.width < webSize;
  }

  static isWeb(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= webSize;
  }
}
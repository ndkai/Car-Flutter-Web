import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web/helper/custom_font_style.dart';
import 'package:web/helper/responsive.dart';
import 'package:web/widget/custom_button.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/kia_logo.svg",
                    height: 15,
                    width: 40,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'In sync with you',
                    style: kBodySTs,
                  ),
                ],
              )),
          Positioned(
              top: 35,
              left: 0,
              child: Row(
                children: [
                  CustomButton(
                    onTap: () {},
                    child: SvgPicture.asset("assets/google_play.svg"),
                  ),
                  CustomButton(
                    onTap: () {},
                    child: SvgPicture.asset("assets/app_store.svg"),
                  ),
                ],
              )),
          Positioned(
            bottom: Responsive.isTablet(context) ? -20 : 0,
            left: 0,
            right: Responsive.isTablet(context) ? 0 : null,
            child: Text(
              "@ 2021 Kia American, Inc ",
              style: kBodySTs,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 700),
                child: Text(
                  "asdsad sadasdsad sadasdsadsadsadsadsad as ",
                  style: kBodySTs,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(top: 0, right: 0, child: VitualType())
        ],
      ),
    );
  }
}

class FooterMobile extends StatelessWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        VitualType(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/kia_logo.svg",
                height: 15,
                width: 40,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'In sync with you',
                style: kBodySTs,
              ),

            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            "asdsad sadasdsad sadasdsadsadsadsadsad as ",
            style: kBodySTs,
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          "@ 2021 Kia American, Inc ",
          style: kBodySTs,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTap: () {},
              child: SvgPicture.asset("assets/google_play.svg"),
            ),
            CustomButton(
              onTap: () {},
              child: SvgPicture.asset("assets/app_store.svg"),
            ),
          ],
        )
      ],
    );
  }
}


class VitualType extends StatefulWidget {
  const VitualType({Key? key}) : super(key: key);

  @override
  _VitualTypeState createState() => _VitualTypeState();
}

class _VitualTypeState extends State<VitualType> {
  bool isInter = true;

  onToogle() {
    setState(() {
      isInter = !isInter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onTap: onToogle,
          child: Container(
            child: Text(
              'Interior',
              style: kBodyNormalSts,
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: isInter
                        ? BorderSide.none
                        : BorderSide(width: 2, color: Colors.white))),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        CustomButton(
          onTap: onToogle,
          child: Container(
            child: Text(
              'Exterior',
              style: kBodyNormalSts,
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: !isInter
                        ? BorderSide.none
                        : BorderSide(width: 2, color: Colors.white))),
          ),
        ),
        SizedBox(
          width: 80,
        ),
        Container(
          width: 40,
          height: 40,
          child: Icon(
            Icons.check,
            size: 15,
          ),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.5),
              border: Border.all(color: Colors.white, width: 1)),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.keyboard_arrow_up,
                  size: 10,
                  color: Colors.white,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 10,
                  color: Colors.white,
                )
              ],
            )), 
        IconButton(iconSize: 50, onPressed: (){}, icon: SvgPicture.asset("assets/color_plate.svg", fit: BoxFit.contain,width: 45, height: 45 ,),
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web/helper/custom_font_style.dart';

class HeaderWebTab extends StatelessWidget {
  const HeaderWebTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/kia_logo.svg"),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Explore', style: BodyLBoldTs,),
            Text('Placed with confidence', style: kBodySTs),
          ],
        ),
        Text("Telluride 2021", style: kBodyNormalSts, ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('\$ 32,190', style: kBodyNormalSts),
            Text('Starting MSRP', style: kBodySTs),
          ],
        ),
        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/user.svg'), color: Colors.blue,),
        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/navigation.svg'), color: Colors.blue,),
      ],
    );
  }
}

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 20,),
            SvgPicture.asset("assets/kia_logo.svg"),
            Spacer(),
            IconButton(hoverColor: kHoverColor,onPressed: (){}, icon: SvgPicture.asset('assets/user.svg'), color: Colors.blue,),
            SizedBox(width: 20,),
            IconButton(hoverColor: kHoverColor,onPressed: (){}, icon: SvgPicture.asset('assets/navigation.svg'), color: Colors.blue,),
            SizedBox(width: 20,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Explore', style: BodyLBoldTs,),
                Text('Placed with confidence', style: kBodySTs),
              ],
            ),
            Text("Telluride 2021", style: kBodyNormalSts, ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$ 32,190', style: kBodyNormalSts),
                Text('Starting MSRP', style: kBodySTs),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


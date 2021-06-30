import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/widget/footer.dart';
import 'package:web/widget/header.dart';
import 'package:web/helper/responsive.dart';
import 'package:web/widget/slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: 1300
        ),
        child: Column(
          children: [
            Container(
              child: Responsive.getResponsiveWidget(context, mobile: HeaderMobile(),tab: HeaderWebTab(),
                  web: HeaderWebTab()),
            ),
            Expanded(child: VeticalSlider(),),
            Container(
              child: Responsive.getResponsiveWidget(context, mobile: FooterMobile(),tab: Footer(),
                  web: Footer()),
            )
          ],
        ),
      ),)
    );
  }
}

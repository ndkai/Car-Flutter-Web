import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/helper/custom_font_style.dart';

class VeticalSlider extends StatefulWidget {
  const VeticalSlider({Key? key}) : super(key: key);

  @override
  _VeticalSliderState createState() => _VeticalSliderState();
}

class _VeticalSliderState extends State<VeticalSlider> {
  String imgPath = "assets/slider/1.png";
  final sliderGroups = <SliderGroup>[
    SliderGroup(1,8),
    SliderGroup(9,14),
    SliderGroup(15,22),
    SliderGroup(23,26),
  ];
  int _currentGroupIndex = 0;
  Future<void> _changeSliderForward() async {
    if(_currentGroupIndex == sliderGroups.length ){
      _currentGroupIndex = 0;
    }   else
    _currentGroupIndex++;
    for(var i = sliderGroups[_currentGroupIndex].startImageIndex; i < sliderGroups[_currentGroupIndex].endImageIndex; i++){
        await Future.delayed(Duration(milliseconds: 100));
       setState(() {
         imgPath = "assets/slider/${i}.png";
       });
    }
  }

  void _changeSliderBackward() async{
    if(_currentGroupIndex == 0){
      _currentGroupIndex = sliderGroups.length;
    }   else
      _currentGroupIndex--;
    for(var i = sliderGroups[_currentGroupIndex].endImageIndex; i > sliderGroups[_currentGroupIndex].startImageIndex; i--){
      await Future.delayed(Duration(milliseconds: 100));
      setState(() {
        imgPath = "assets/slider/${i}.png";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children: [
          IconButton(
            hoverColor: kHoverColor,
            onPressed: _changeSliderBackward,
            icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
          ),
          Expanded(child: Image.asset(imgPath)),
          IconButton(
            hoverColor: kHoverColor,
            onPressed: _changeSliderForward,
            icon: Icon(Icons.arrow_forward_ios_sharp, color: Colors.white,),
          )
        ],
      ),
    );
  }
}


class SliderGroup{
  final int startImageIndex;
  final int endImageIndex;

  SliderGroup( this.startImageIndex, this.endImageIndex);
}

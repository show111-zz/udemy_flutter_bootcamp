import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:udemy_flutter_bootcamp/calculator/reusable_card.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0XFF1d1e33);
const inactiveCardColor = Color(0XFF111385);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender{
  MALE, FEMALE
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReuseWidget(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    color: selectedGender == Gender.MALE ? activeCardColor : inactiveCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',),
              )),
              Expanded(
                    child: ReuseWidget(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.FEMALE;
                        });
                      },
                      color: selectedGender == Gender.FEMALE ? activeCardColor : inactiveCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
              )),
            ],
          )),
          Expanded(
              child: ReuseWidget(
            color: activeCardColor,
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReuseWidget(
                color: activeCardColor,
              )),
              Expanded(
                  child: ReuseWidget(
                color: activeCardColor,
              )),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}





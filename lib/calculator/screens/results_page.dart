import 'package:flutter/material.dart';
import 'package:udemy_flutter_bootcamp/calculator/components/bottom_button.dart';
import 'package:udemy_flutter_bootcamp/calculator/components/reusable_card.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATE'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                'results',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: ReuseWidget(
               color: kActiveCardColor,
               cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: <Widget>[
                   Text(resultText.toUpperCase(), style: kResultTextStyle, textAlign: TextAlign.center,),
                   Text(bmiResult, style: kBMITextStyle, textAlign: TextAlign.center,),
                   Text(interpretation, style: kBodyTextStyle, textAlign: TextAlign.center,),
                 ],
               ),
            ),
          ),

          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'Re-Calculter')

        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'classusing.dart';
import 'quizbrain.dart';

void main() {
  runApp(quizflutterapp());
}

class quizflutterapp extends StatelessWidget {
  const quizflutterapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: qfa());
  }
}

class qfa extends StatefulWidget {
  const qfa({super.key});

  @override
  State<qfa> createState() => _qfaState();
}

class _qfaState extends State<qfa> {
  List<Icon> score = [
    /*Icon(Icons.check,
      color: Colors.green,
      //TODO: create icon for wrong or cross
    ),
    Icon(Icons.check,
      color: Colors.green,
      //TODO: create icon for wrong or cross
    ),*/
  ];
  /*
  List<String> questions = [
    'In my Laptop Linux Mint Xfce work fast?',
    'In my Laptop Linux Mint i used for programming?',
    'In my Laptop i used windows mostly?',
  ];
  List<bool> answer = [true, true, false];*/

  QuizBrain quizbrain = QuizBrain();
  void checkanswer(bool attemp){
    setState(() {
      bool answerr = quizbrain.GetAnswer();
      if (attemp == answerr) {
        print('you won');
        score.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        print('you lose');
        score.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      //checkanswer(true);
      quizbrain.NextQuestion();

      quizbrain.GetQuestion();
      //tquest(i);
    });


  }
  /*
  String tquest(int i ){
     return questions[i];
  }*/
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height / 4,
            ),
            Center(
                child: Text(
              quizbrain.GetQuestion(),
              style: TextStyle(fontSize: height / 27, color: Colors.white),
            )),
            SizedBox(
              height: height / 3,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    checkanswer(true);
                    print(' i am True');
                  },
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    //minimumSize: MaterialStateProperty.all(Size.fromWidth(20)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    checkanswer(false);
                  },
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    //minimumSize: MaterialStateProperty.all(Size.fromWidth(20)),
                  ),
                ),
              ),
            ),
            Row(
              children: score,
            ),
          ],
        ),
      ),
    );
  }
}

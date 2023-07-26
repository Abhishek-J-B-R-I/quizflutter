import 'package:flutter/material.dart';

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
              'I am Question',
              style: TextStyle(fontSize: height / 15, color: Colors.white),
            )),
            SizedBox(
              height: height/3,
            ),
            Expanded(

              child: Padding(
                padding: EdgeInsets.all(15),

                child: TextButton(
                  
                  onPressed: () {
                    print(' i am True');
                  },
                  child: Text('True',style: TextStyle(
                    fontSize: 20,
                  ),),
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
                    print(' i am False');
                  },
                  child: Text('False',style: TextStyle(
                    fontSize: 20,
                  ),),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    //minimumSize: MaterialStateProperty.all(Size.fromWidth(20)),
                  ),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

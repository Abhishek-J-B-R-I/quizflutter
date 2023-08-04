import 'classusing.dart';

class QuizBrain{
  int _i = 0;
  List<QuestionBank> _qtnanstgr = [
    QuestionBank(q: 'In my Laptop Linux Mint Xfce work fast?', a: true),
    QuestionBank(q: 'In my Laptop Linux Mint i used for programming?', a: true),
    QuestionBank(q: 'In my Laptop i used windows mostly?', a: false)
  ];

 void NextQuestion(){
   if(_i<_qtnanstgr.length-1){
          _i++;
   }
 }

String GetQuestion(){

  return _qtnanstgr[_i].allquestions;
}

bool GetAnswer(){
  return _qtnanstgr[_i].allanswer;
}

}
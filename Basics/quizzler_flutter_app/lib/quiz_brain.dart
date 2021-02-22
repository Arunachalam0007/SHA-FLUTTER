import 'question.dart';
class QuizBrain {
  int questionNumber =0;
  List<Questions> _questionBank = [
    Questions(
        a: true, q: 'MS DHONI is the best and cool captain in the world.'),
    Questions(a: false, q: 'Current Indian Team Captian in MS DHONI.'),
    Questions(q: 'Virat Kholi won IPL Many Times.', a: false),
    Questions(q: 'MSD is a THALA and RAINA is Chinna Thala in CSK .', a: true)
  ];

  void nextQuestion(){
    if(questionNumber <_questionBank.length -1){
      questionNumber++;
    }
  }
  String getQuestions() => _questionBank[questionNumber].question;
  bool getAnswer() => _questionBank[questionNumber].answer;
}
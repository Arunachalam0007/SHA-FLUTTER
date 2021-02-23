import 'question.dart';

class QuizBrain {
  int questionNumber = 0;
  //Private variable achieving encapsulation
  List<Questions> _questionBank = [
    Questions(
        answer: true,
        question: 'MS DHONI is the best and cool captain in the world.'),
    Questions(
        answer: false, question: 'Current Indian Team Captian in MS DHONI.'),
    Questions(question: 'Virat Kholi won IPL Many Times.', answer: false),
    Questions(
        question: 'MSD is a THALA and RAINA is Chinna Thala in CSK .',
        answer: true)
  ];

  void nextQuestion() {
    if (questionNumber < _questionBank.length - 1) {
      questionNumber++;
    }
  }

  String getQuestions() => _questionBank[questionNumber].question;
  bool getAnswer() => _questionBank[questionNumber].answer;

  bool isLastQuestion(){
    if(questionNumber >= _questionBank.length -1){
      print(questionNumber);
      return true;
    } else {
      return false;
    }
  }

  void questionNumberReset() {
    questionNumber = 0;
  }
}

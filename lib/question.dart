import 'dart:math';

final Map<int, Map<String, bool>> questionList = {
  0: {'Russia é o maior país do mundo.': true},
  1: {'Japão é o país com a menor expectativa de vida do mundo': false},
  2: {'Italia quem deu de presente aos EUA a estatua da liberdade': false},
  3: {'O Monte Everest fica na India': false},
  4: {'Harry Potter foi o livro mais vendido do mundo': false},
  5: {
    'Por causa do tamanho, as girafas ficam o tempo todo em pé e só se deitam quando vão dar à luz.':
        false
  },
  6: {
    'Os ornitorrincos são os únicos mamíferos venenosos que se tem notícia.':
        false
  },
  7: {
    'Os louva-a-deus são capazes de capturar aranhas, lagartos e até ratos.':
        true
  },
  8: {
    'Existe uma espécie de pássaro que fica voando por até dez meses sem parar.':
        true
  },
  9: {
    'Algumas arraias conseguem dar saltos de até três metros de altura.': true
  },
  10: {
    'Os beija-flores são excelentes voadores, mas também conseguem usar suas patas para caminhar no solo.':
        false
  },
  11: {
    'Os golfinhos usam as toxinas liberadas pelos baiacus para ficarem doidões.':
        true
  },
};

class Question {
  Question(this.question, this.response);
  late bool response;
  late String question;
}

class CreateQuestion {
  static Map<String, bool>? getRandomQuestion() {
    int numberQuestion = Random().nextInt(questionList.length);
    return questionList[numberQuestion];
  }

  static get getQuestion {
    Question? question;
    getRandomQuestion()!.forEach((key, value) {
      question = Question(key, value);
    });
    return question;
  }

}

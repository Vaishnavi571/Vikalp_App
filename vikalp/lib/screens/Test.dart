import 'dart:math';

import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;

  int opennessScore = 0;
  int conscientiousnessScore = 0;
  int extraversionScore = 0;
  int agreeablenessScore = 0;
  int neuroticismScore = 0;
  List<Map<String, dynamic>> _quizData = [
    //OPN
    {
      'question': 'I have a rich vocabulary',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },
    {
      'question': 'I have difficulty understanding abstract ideas',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },
    {
      'question': 'I have a vivid imagination',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },
    {
      'question': 'I am not interested in abstract ideas',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },

    {
      'question': 'I have excellent ideas',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },

    {
      'question': 'I do not have a good imagination',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },

    {
      'question': 'I am quick to understand things',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },

    {
      'question': 'I use difficult words',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },

    {
      'question': 'I spend time reflecting on things',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },

    {
      'question': 'I am full of ideas',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Openness'
    },
    //CSN
    {
      'question': 'I am always prepared',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },
    {
      'question': 'I leave my belongings around',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },
    {
      'question': 'I pay attention to details',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },
    {
      'question': 'I make a mess of things',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },

    {
      'question': 'I get chores done right away',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },

    {
      'question': 'I often forget to put things back in their proper place',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },

    {
      'question': 'I like order',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },

    {
      'question': 'I shirk my duties',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },

    {
      'question': 'I follow a schedule',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },

    {
      'question': 'I am exacting in my work',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Conscientiousness'
    },
    //Extra
    {
      'question': 'I am the life of the party',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },
    {
      'question': 'I dont talk a lot',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },
    {
      'question': 'I feel comfortable around people',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },
    {
      'question': 'I keep in the background',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },

    {
      'question': 'I start conversations',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },

    {
      'question': 'I have little to say',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },

    {
      'question': 'I talk to a lot of different people at parties',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },

    {
      'question': 'I dont like to draw attention to myself',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },

    {
      'question': 'I dont mind being the center of attention',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },

    {
      'question': 'I am quiet around strangers',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Extraversion'
    },
    //AGR
    {
      'question': 'I feel little concern for others',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },
    {
      'question': 'I am interested in people',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },
    {
      'question': 'I insult people',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },
    {
      'question': 'I sympathize with others feelings',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },

    {
      'question': 'I am not interested in other peoples problems',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },

    {
      'question': 'I have a soft heart',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },

    {
      'question': 'I am not really interested in others',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },

    {
      'question': 'I take time out for others',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },

    {
      'question': 'I feel others emotions',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },

    {
      'question': 'I make people feel at ease',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Agreeableness'
    },

//EST
    {
      'question': 'I get stressed out easily',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },
    {
      'question': 'I am relaxed most of the time',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },
    {
      'question': 'I worry about things',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },
    {
      'question': 'I seldom feel blue',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },

    {
      'question': 'I am easily disturbed',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },

    {
      'question': 'I get upset easily',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },

    {
      'question': 'I change my mood a lot',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },

    {
      'question': 'I have frequent mood swings',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },

    {
      'question': 'I get irritated easily',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },

    {
      'question': 'I often feel blue',
      'options': [
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Agree', 'score': 4},
        {'text': 'Strongly Agree', 'score': 5}
      ],
      'trait': 'Neuroticism'
    },

    // Add more questions and options here
  ];

  void _answerQuestion(int score) {
    setState(() {
      if (_quizData[_currentQuestionIndex]['trait'] == 'Openness') {
        opennessScore += score;
      } else {
        if (_quizData[_currentQuestionIndex]['trait'] == 'Conscientiousness') {
          conscientiousnessScore += score;
        } else {
          if (_quizData[_currentQuestionIndex]['trait'] == 'Extraversion') {
            extraversionScore += score;
          } else {
            if (_quizData[_currentQuestionIndex]['trait'] == 'Agreeableness') {
              agreeablenessScore += score;
            } else {
              if (_quizData[_currentQuestionIndex]['trait'] == 'Neuroticism') {
                neuroticismScore += score;
              }
            }
          }
        }
      }
      _currentQuestionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      opennessScore = 0;
      conscientiousnessScore = 0;
      extraversionScore = 0;
      agreeablenessScore = 0;
      neuroticismScore = 0;
    });
  }

  Widget reccom() {
    if (opennessScore == conscientiousnessScore &&
        conscientiousnessScore == extraversionScore &&
        extraversionScore == agreeablenessScore &&
        agreeablenessScore == neuroticismScore) {
      return Align(
          alignment: Alignment.center,
          child: Text(
            "Test came out neutral you can choose any of the careers",
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ));
    }
    var m = [
      opennessScore,
      conscientiousnessScore,
      extraversionScore,
      agreeablenessScore,
      neuroticismScore
    ];
    int l = m.reduce(max);
    int t = -1;
    for (var i = 0; i < 5; i++) {
      if (m[i] == l) {
        t = i;

        if (t == 0) {
          return Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 30, 15, 0),
                  child: Column(children: [
                    Text(
                      "You have 'Openness' personality type",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "\nRecommendations For Openness: \nArtist \nWriter \nMusician \nDesigner \nEntrepreneur \nScientist \nArchitect \nFilm Director \nMarketing \nStrategist \nProfessor",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ])));
        }

        if (t == 1) {
          return Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 30, 15, 0),
                  child: Column(children: [
                    Text(
                      "You have 'Conscientious' personality type",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "\nRecommendations For Conscientiousness: \nAccountant \nProject Manager \nEngineer \nLawyer \nOperations Manager \nFinancial Analyst \nSoftware Developer \nQuality Assurance Specialist \nData Analyst \nExecutive Assistant",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ])));
        }
        if (t == 2) {
          return Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 30, 15, 0),
                  child: Column(children: [
                    Text(
                      "You have 'Extrovert' personality type",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "\nRecommendations For Extroversion: \nSales Representative \nPublic Relations Specialist \nEvent Planner \nHuman Resources Manager \nReal Estate Agent \nAdvertising Executive \nMarketing Manager \nActor \nTV/Radio Host \nPolitician",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ])));
        }
        if (t == 3) {
          return Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 30, 15, 0),
                  child: Column(children: [
                    Text(
                      "You have 'Agreeable' personality type ",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "\nRecommendations For Agreeableness: \nNurse\nSocial Worker \nCounselor \nTeacher \nHumanitarian Aid Worker \nVeterinarian \nSpeech Therapist \nCommunity Organizer \nReligious Leader \nMediator",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ])));
        } else {
          return Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 30, 15, 0),
                  child: Column(children: [
                    Text(
                      "You have 'Neurotic' personality type",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "\nRecommendations For Neuroticism : \nMedical Researcher \nData Analyst \nAuditor \nCybersecurity Analyst \nStatistician \nLibrarian \nArchivist \nTechnical Writer \nTranslator/Interpreter \nEditor",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ])));
        }
      }
    }
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.fromLTRB(5, 30, 15, 0),
            child: Text(
              "Test came out neutral you can choose any of the careers",
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            )));
  }

  Widget _buildQuestion() {
    int temp = _currentQuestionIndex + 1;
    return Column(children: [
      Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/test_image.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Question No. $temp",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  color: Color(0xff000000),
                ),
              )
          )
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: const Divider(
          thickness: 2,
          color: Color(0xff380955),
        ),
      ),
      Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                _quizData[_currentQuestionIndex]["question"],
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  color: Color(0xff380955),
                ),
              ))),
    ]);
  }

  Widget _buildOptions() {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 16, 20, 20),
        child: Column(
          children: [
            ...(_quizData[_currentQuestionIndex]["options"]
                    as List<Map<String, dynamic>>)
                .map((option) => Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: MaterialButton(
                        onPressed: () {
                          _answerQuestion(option["score"]);
                        },
                        color: Color(0xff000000),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 16, 20, 20),
                        textColor: Color(0xffffffff),
                        height: 40,
                        minWidth: MediaQuery.of(context).size.width,
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              option["text"],
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            )),
                      ),
                    ))
                .toList(),
          ],
        ));
  }

  Widget _buildResult() {
    // Calculate and display the Big Five personality trait scores here

    return Padding(
      padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
      child: Column(
        children: [
          Text(
            "Your Personality Score Based on Big 5 Personality Model is:\n",
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Openness: $opennessScore",
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Conscientiousness: $conscientiousnessScore",
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Extraversion: $extraversionScore",
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Agreeableness: $agreeablenessScore",
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Neuroticism: $neuroticismScore",
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          MaterialButton(
            onPressed: _resetQuiz,
            color: Color(0xff000000),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: Text(
              "Restart Quiz",
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xffffffff),
            height: 40,
            minWidth: 200,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: const Divider(
              thickness: 2,
              color: Color(0xff380955),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Center(
          child: _currentQuestionIndex < _quizData.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildQuestion(),
                    _buildOptions(),
                  ],
                )
              : Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  _buildResult(),
                  Center(
                    child: reccom(),
                  )
                ])),
    ])));
  }
}

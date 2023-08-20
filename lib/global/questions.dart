import 'package:flutter/material.dart';

List<Map<String, dynamic>> quiz = [
  {
    "color": Colors.blue,
    "name": "sport test",
    "data": [
      {
        "question": "How many players in the football team?",
        "answer": [
          {"choise": "9", 'score': 0},
          {"choise": "10", 'score': 0},
          {"choise": "11", 'score': 1},
          {"choise": "12", 'score': 0},
        ],
      },
      {
        "question": "who is the first team that won the world cup?",
        "answer": [
          {"choise": "Brazil", 'score': 0},
          {"choise": "Spain", 'score': 0},
          {"choise": "France", 'score': 0},
          {"choise": "Arguay", 'score': 1},
        ],
      },
      {
        "question": "how many times Egypt won the African Cup?",
        "answer": [
          {"choise": "6", 'score': 0},
          {"choise": "7", 'score': 1},
          {"choise": "8", 'score': 0},
          {"choise": "9", 'score': 0},
        ],
      }
    ]
  },
  {
    "color": Colors.red,
    "name": "history test",
    "data": [
      {
        "question":
            "What is the name of the first country to declare independence from a European power in the Americas?",
        "answer": [
          {"choise": "The United States", 'score': 1},
          {"choise": "Mexico", 'score': 0},
          {"choise": "Brazil", 'score': 0},
          {"choise": "Argentina", 'score': 0},
        ],
      },
      {
        "question":
            "Who was the leader of the Soviet Union during the Russian Revolution?",
        "answer": [
          {"choise": "Vladimir Lenin", 'score': 1},
          {"choise": "Joseph Stalin", 'score': 0},
          {"choise": "Mao Zedong", 'score': 0},
          {"choise": "Winston Churchill", 'score': 0},
        ],
      },
      {
        "question":
            "What was the name of the first woman to be elected to the United States Congress?",
        "answer": [
          {"choise": "Jeannette Rankin", 'score': 1},
          {"choise": "Shirley Chisholm", 'score': 0},
          {"choise": "Hillary Clinton", 'score': 0},
          {"choise": "Nancy Pelosi", 'score': 0},
        ],
      },
      {
        "question": "What was the cause of the Chinese Civil War?",
        "answer": [
          {"choise": "The Chinese Revolution", 'score': 1},
          {"choise": "The Korean War", 'score': 0},
          {"choise": "The Vietnam War", 'score': 0},
          {"choise": "The Cold War", 'score': 0},
        ],
      },
      {
        "question": "What was the outcome of the Vietnam War?",
        "answer": [
          {
            "choise":
                "The withdrawal of US troops and the reunification of Vietnam under communist rule",
            'score': 1
          },
          {"choise": "The defeat of the communist forces", 'score': 0},
          {"choise": "The victory of the US forces", 'score': 0},
          {"choise": "The war is still ongoing", 'score': 0},
        ],
      },
    ]
  },
  {
    "color": Colors.yellow,
    "name": "iq test",
    "data": [
      {
        "question":
            "Which of the following numbers does not belong in the sequence 2, 4, 8, 16, 32, 64, 128?",
        "answer": [
          {"choise": "32", 'score': 1},
          {"choise": "64", 'score': 0},
          {"choise": "128", 'score': 0},
          {"choise": "2", 'score': 0},
        ],
      },
      {
        "question":
            "What is the next number in the sequence 1, 1, 2, 3, 5, 8, 13, 21?",
        "answer": [
          {"choise": "34", 'score': 1},
          {"choise": "29", 'score': 0},
          {"choise": "31", 'score': 0},
          {"choise": "30", 'score': 0},
        ],
      },
      {
        "question":
            "A is the father of B. B is the mother of C. C is the father of D. What is D to A?",
        "answer": [
          {"choise": "Grandchild", 'score': 1},
          {"choise": "Son", 'score': 0},
          {"choise": "Daughter", 'score': 0},
          {"choise": "Grandfather", 'score': 0},
        ],
      },
      {
        "question":
            "A train leaves New York at 7:00 AM and travels west at 60 mph. Another train leaves Chicago at 8:00 AM and travels east at 70 mph. When will they meet?",
        "answer": [
          {"choise": "10:30 AM", 'score': 1},
          {"choise": "11:00 AM", 'score': 0},
          {"choise": "11:30 AM", 'score': 0},
          {"choise": "12:00 PM", 'score': 0},
        ],
      },
      {
        "question": "If a car travels 60 mph for 1 hour, how far does it go?",
        "answer": [
          {"choise": "60 miles", 'score': 1},
          {"choise": "30 miles", 'score': 0},
          {"choise": "120 miles", 'score': 0},
          {"choise": "90 miles", 'score': 0},
        ],
      },
      {
        "question": "Which of the following is not a prime number?",
        "answer": [
          {"choise": "2", 'score': 0},
          {"choise": "3", 'score': 0},
          {"choise": "5", 'score': 0},
          {"choise": "6", 'score': 1},
        ],
      },
      {
        "question": "Which of the following is not a palindrome?",
        "answer": [
          {"choise": "racecar", 'score': 0},
          {"choise": "madam", 'score': 0},
          {"choise": "civic", 'score': 0},
          {"choise": "mom", 'score': 1},
        ],
      },
      {
        "question": "Which of the following is not a perfect square?",
        "answer": [
          {"choise": "16", 'score': 0},
          {"choise": "36", 'score': 0},
          {"choise": "64", 'score': 0},
          {"choise": "100", 'score': 1},
        ]
      }
    ]
  },
  {
    "color": Colors.blue,
    "name": "math test",
    "data": [
      {
        "question":
            "What is the next number in the sequence: 1, 4, 9, 16, 25, 36, ...?",
        "answer": [
          {"choise": "49", 'score': 1},
          {"choise": "64", 'score': 0},
          {"choise": "81", 'score': 0},
          {"choise": "100", 'score': 0},
        ]
      },
      {
        "question": "What is the sum of the first 100 natural numbers?",
        "answer": [
          {"choise": "5050", 'score': 1},
          {"choise": "5500", 'score': 0},
          {"choise": "6050", 'score': 0},
          {"choise": "7050", 'score': 0},
        ]
      },
      {
        "question":
            "Find the first 3 terms of the geometric sequence where the first term is 2 and the common ratio is 3.",
        "answer": [
          {"choise": "2, 6, 18", 'score': 1},
          {"choise": "2, 4, 8", 'score': 0},
          {"choise": "2, 12, 36", 'score': 0},
          {"choise": "2, 9, 27", 'score': 0},
        ]
      },
      {
        "question":
            "What is the 10th term of the arithmetic sequence where the first term is 10 and the common difference is -2?",
        "answer": [
          {"choise": "-10", 'score': 1},
          {"choise": "-8", 'score': 0},
          {"choise": "-6", 'score': 0},
          {"choise": "-4", 'score': 0},
        ]
      },
      {
        "question":
            "Find the equation of the line that passes through the points (2, 3) and (4, 7).",
        "answer": [
          {"choise": "y = 2x + 1", 'score': 1},
          {"choise": "y = 3x + 1", 'score': 0},
          {"choise": "y = 4x + 1", 'score': 0},
          {"choise": "y = 5x + 1", 'score': 0},
        ]
      },
      {
        "question": "Solve for x in the equation x^2 - 5x + 6 = 0.",
        "answer": [
          {"choise": "x = 3 or x = 2", 'score': 1},
          {"choise": "x = 1 or x = 2", 'score': 0},
          {"choise": "x = 4 or x = 2", 'score': 0},
          {"choise": "x = 5 or x = 2", 'score': 0},
        ]
      },
      {
        "question":
            "Find the area of a triangle with a base of 10 cm and a height of 8 cm.",
        "answer": [
          {"choise": "40 cm^2", 'score': 1},
          {"choise": "50 cm^2", 'score': 0},
          {"choise": "60 cm^2", 'score': 0},
          {"choise": "70 cm^2", 'score': 0},
        ]
      },
    ]
  },
  {
    "color": Colors.yellow,
    "name": "bio test",
    "data": [
      {
        "question": "What is the smallest unit of life?",
        "answer": [
          {"choise": "Cell", 'score': 1},
          {"choise": "Organism", 'score': 0},
          {"choise": "Tissue", 'score': 0},
          {"choise": "Organ", 'score': 0},
        ]
      },
      {
        "question": "What are the two main types of cells?",
        "answer": [
          {"choise": "Eukaryotic and prokaryotic", 'score': 1},
          {"choise": "Animal and plant", 'score': 0},
          {"choise": "Human and bacteria", 'score': 0},
          {"choise": "Animal and fungi", 'score': 0},
        ]
      },
      {
        "question": "What is the function of the cell membrane?",
        "answer": [
          {
            "choise":
                "Protects the cell and controls what enters and leaves the cell",
            'score': 1
          },
          {"choise": "Provides energy for the cell", 'score': 0},
          {"choise": "Stores genetic information", 'score': 0},
          {"choise": "Synthesizes proteins", 'score': 0},
        ]
      },
      {
        "question": "What is the function of the nucleus?",
        "answer": [
          {"choise": "Stores genetic information", 'score': 1},
          {
            "choise":
                "Protects the cell and controls what enters and leaves the cell",
            'score': 0
          },
          {"choise": "Synthesizes proteins", 'score': 0},
          {"choise": "Provides energy for the cell", 'score': 0},
        ]
      },
      {
        "question": "What are the three main types of tissues?",
        "answer": [
          {"choise": "Epithelial, connective, and muscle", 'score': 1},
          {"choise": "Animal, plant, and fungi", 'score': 0},
          {"choise": "Eukaryotic, prokaryotic, and archaea", 'score': 0},
          {"choise": "Human, bacteria, and virus", 'score': 0},
        ]
      },
      {
        "question": "What is the function of the heart?",
        "answer": [
          {"choise": "Pumps blood throughout the body", 'score': 1},
          {"choise": "Digests food", 'score': 0},
          {"choise": "Breathes air", 'score': 0},
          {"choise": "Excretes waste", 'score': 0},
        ]
      },
      {
        "question": "What is the function of the lungs?",
        "answer": [
          {"choise": "Breathes air", 'score': 1},
          {"choise": "Pumps blood throughout the body", 'score': 0},
          {"choise": "Digests food", 'score': 0},
          {"choise": "Excretes waste", 'score': 0},
        ]
      },
      {
        "question": "What is the function of the kidneys?",
        "answer": [
          {"choise": "Excretes waste", 'score': 1},
          {"choise": "Pumps blood throughout the body", 'score': 0},
          {"choise": "Digests food", 'score': 0},
          {"choise": "Breathes air", 'score': 0},
        ]
      },
    ]
  },
  {
    "color": Colors.red,
    "name": "programming test",
    "data": [
      {
        "question": "What is the most popular programming language?",
        "answer": [
          {"choise": "Python", 'score': 1},
          {"choise": "Java", 'score': 0},
          {"choise": "C++", 'score': 0},
          {"choise": "JavaScript", 'score': 0},
        ]
      },
      {
        "question": "What is the difference between an object and a class?",
        "answer": [
          {"choise": "An object is an instance of a class", 'score': 1},
          {"choise": "A class is an instance of an object", 'score': 0},
          {"choise": "An object is a variable that stores data", 'score': 0},
          {
            "choise": "A class is a function that returns an object",
            'score': 0
          },
        ]
      },
      {
        "question": "What is the purpose of a function?",
        "answer": [
          {
            "choise": "To group together code that performs a specific task",
            'score': 1
          },
          {"choise": "To store data", 'score': 0},
          {"choise": "To control the flow of the program", 'score': 0},
          {"choise": "To create a new object", 'score': 0},
        ]
      },
      {
        "question": "What is the difference between a variable and a constant?",
        "answer": [
          {
            "choise":
                "A variable can change its value, while a constant cannot",
            'score': 1
          },
          {
            "choise":
                "A variable is a function, while a constant is a data type",
            'score': 0
          },
          {
            "choise": "A variable is an object, while a constant is a class",
            'score': 0
          },
          {
            "choise": "A variable is a method, while a constant is a property",
            'score': 0
          },
        ]
      },
      {
        "question": "What is the purpose of an if statement?",
        "answer": [
          {
            "choise":
                "To check the value of a condition and execute a block of code if the condition is true",
            'score': 1
          },
          {
            "choise": "To repeat a block of code a certain number of times",
            'score': 0
          },
          {"choise": "To break out of a loop", 'score': 0},
          {"choise": "To continue to the next iteration of a loop", 'score': 0},
        ]
      },
      {
        "question": "What is the purpose of a for loop?",
        "answer": [
          {
            "choise": "To repeat a block of code a certain number of times",
            'score': 1
          },
          {
            "choise":
                "To check the value of a condition and execute a block of code if the condition is true",
            'score': 0
          },
          {"choise": "To break out of a loop", 'score': 0},
          {"choise": "To continue to the next iteration of a loop", 'score': 0},
        ]
      },
      {
        "question": "What is the purpose of a while loop?",
        "answer": [
          {
            "choise":
                "To repeat a block of code while a certain condition is true",
            'score': 1
          },
          {
            "choise": "To repeat a block of code a certain number of times",
            'score': 0
          },
          {
            "choise":
                "To check the value of a condition and execute a block of code if the condition is true",
            'score': 0
          },
          {"choise": "To break out of a loop", 'score': 0},
        ]
      },
    ]
  },
];

final TextEditingController userNameController = TextEditingController();

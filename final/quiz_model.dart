class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Do you have Pollen Allergies?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Do you have Dust Allergies?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Are You Experiencing Watery Eyes or Itchy Throat",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Do You have Lot of trees and greenary around your Residence?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Do You practice Car-pool or Public Transportation Services?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Do you Own more than Two Cars?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Does AQI (Air Quality Index) in your Area Exceed 200?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Do you spend more than CAD53 on water-bill?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Do you Spend more than CAD95 on hydro-bill?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question": "Do you practice Gardening Regularly?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
];

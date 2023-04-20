import 'models/1Type/1News_Model/News_Model.dart';
import 'models/1Type/2Learn_Model/1Photo_Model.dart';
import 'models/1Type/3QuizModel/QuizModel.dart';
import 'models/1Type/4Choose-Subject/SubjectModel.dart';

List<SubjectModel> Subjects = [
  SubjectModel(title: "English", subTitle: "RRREnglish", color: 2),
  SubjectModel(title: "Math", subTitle: "RRRMath", color: 1),
  SubjectModel(title: "Arabic", subTitle: "RRRArabic", color: 3),
  SubjectModel(title: "Science", subTitle: "RRRScience", color: 4),
  SubjectModel(title: "Science", subTitle: "RRRScience", color: 4),
];

List<NewsModel> NewsList = [
  NewsModel(
      id: "1",
      Text: "English To GEt",
      imageurl: "assets/images/icon/Destination.png"),
  NewsModel(
      id: "2",
      Text:
          "Arabic Ti Make This To English To GEt English To GEt English To GEt English To GEtEnglish To GEtEnglish To GEtEnglish To GEtEnglish To GEt",
      imageurl: ""),
  NewsModel(
      id: "3",
      Text: "sa sasd afas fasfasfs",
      imageurl: "assets/images/icon/Destination.png"),
  NewsModel(
      id: "4",
      Text:
          "السلي يسشلايشسىي سشربلاشس بشسرلابسش لبصث رلاسلايؤ لاسرلاسش ؤشسلا ؤشس",
      imageurl: "assets/images/icon/Mathematics.png"),
  NewsModel(
      id: "4",
      Text:
          "السلي يسشلايشسىي سشربلاشس بشسرلابسش لبصث رلاسلايؤ لاسرلاسش ؤشسلا ؤشس",
      imageurl: "assets/images/icon/Mathematics.png"),
  NewsModel(
      id: "4",
      Text:
          "السلي يسشلايشسىي سشربلاشس بشسرلابسش لبصث رلاسلايؤ لاسرلاسش ؤشسلا ؤشس",
      imageurl: ""),
  NewsModel(
      id: "4",
      Text:
          "السلي يسشلايشسىي سشربلاشس بشسرلابسش لبصث رلاسلايؤ لاسرلاسش ؤشسلا ؤشس",
      imageurl: ""),
  NewsModel(
      id: "4",
      Text:
          "السلي يسشلايشسىي سشربلاشس بشسرلابسش لبصث رلاسلايؤ لاسرلاسش ؤشسلا ؤشس",
      imageurl: "assets/images/icon/Mathematics.png"),
];

List<LearnModel> LearnList = [
  LearnModel(
      id: "1",
      text: "شرح الدرس الاول في الانجليزي",
      imageurl: "assets/images/icon/Mathematics.png",
      pdfurl: "",
      videourl: "",
      titleSubject: "English",
      subTitleSubject: "RRREnglish",
      numberOfImage: 2),
  LearnModel(
      id: "2",
      text: "شرح الدرس التاني في الانجليزي",
      imageurl: "",
      pdfurl: "",
      videourl: "",
      titleSubject: "English",
      subTitleSubject: "RRREnglish",
      numberOfImage: 2),
  LearnModel(
      id: "3",
      text: "شرح الدرس الثالث في الانجليزي",
      imageurl: "assets/images/icon/Mathematics.png",
      pdfurl: "",
      videourl: "",
      titleSubject: "English",
      subTitleSubject: "RRREnglish",
      numberOfImage: 2),
  LearnModel(
      id: "4",
      text: "شرح الدرس الرابع في الانجليزي",
      imageurl: "",
      pdfurl: "",
      videourl: "",
      titleSubject: "English",
      subTitleSubject: "RRREnglish",
      numberOfImage: 2)
];

List<QuizModel> QuizList = [
  QuizModel(
      QuizId: "1",
      Quiztitle: "تاريخ",
      Quizdesc: "امتحان علي الوحده الاولي ",
      QuizTime: 2,
      QuizUsers: [
        {
          "Email": "hatem10@gmail.com",
          "Name": "hatem",
          "Degree": 1300,
          "Answer": ["a", "b", "a", "d"]
        },
        {
          "Email": "hatem10@gmail.com",
          "Name": "hatem",
          "Degree": 1300,
          "Answer": ["a", "b", "a", "d"]
        },
        {
          "Email": "hatem10@gmail.com",
          "Name": "hatem",
          "Degree": 1300,
          "Answer": ["a", "b", "a", "d"]
        },
        {
          "Email": "hatem10@gmail.com",
          "Name": "hatem",
          "Degree": 1300,
          "Answer": ["a", "b", "a", "d"]
        },
        {
          "Email": "hatem10@gmail.com",
          "Name": "hatem",
          "Degree": 1300,
          "Answer": ["a", "b", "a", "d"]
        },
      ],
      subjectModel: SubjectModel(title: "Arabic", subTitle: "rrrr", color: 3),
      Question: ["q1", "q2"],
      Answer: [
        {
          "Q1": ["a1", "a2", "a3", "a4"]
        },
        {
          "Q2": ["b1", "b2", "b3", "a4"]
        },
      ],
      correctAnswer: ["A", "B"]),
  QuizModel(
      QuizId: "2",
      Quiztitle: "Arabic",
      Quizdesc:
          "الاخبار علي الوحدع الاولي في ماده الكمياء لجل كل هذا الامتحان يجيب شرح الوحده الاولي وبعد كده فهم الاخبار علي الوحدع الاولي في ماده الكمياء لجل كل هذا الامتحان يجيب شرح الوحده الاولي وبعد كده فهم الاخبار علي الوحدع الاولي في ماده الكمياء لجل كل هذا الامتحان يجيب شرح الوحده الاولي وبعد كده فهم الاخبار علي الوحدع الاولي في ماده الكمياء لجل كل هذا الامتحان يجيب شرح الوحده الاولي وبعد كده فهم الاخبار علي الوحدع الاولي في ماده الكمياء لجل كل هذا الامتحان يجيب شرح الوحده الاولي وبعد كده فهم ",
      QuizTime: 5,
      QuizUsers: [
        {
          "Email": "hatem10@gmail.com",
          "Name": "hatem",
          "Degree": 1300,
          "Answer": ["a", "b", "a", "d"]
        },
      ],
      subjectModel: SubjectModel(title: "Arabic", subTitle: "rrrr", color: 2),
      Question: ["q1", "q2"],
      Answer: [
        {
          "Q1": ["a1", "a2", "a3", "a4"]
        },
        {
          "Q2": ["b1", "b2", "b3", "a4"]
        },
      ],
      correctAnswer: ["A", "B"]),
];

class SubjectModel {
  String? title;
  String? subTitle;
  int? color;

  SubjectModel({
    required this.title,
    required this.subTitle,
    required this.color,
  });

  SubjectModel.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    subTitle = json["subTitle"];
    color = json["color"];
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subTitle': subTitle,
      'color': color,
    };
  }
}
